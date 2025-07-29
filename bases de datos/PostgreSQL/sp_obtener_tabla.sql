CREATE OR REPLACE FUNCTION sp_obtener_tabla(tabla TEXT)
RETURNS TEXT AS $$
DECLARE
    resultado TEXT := '';
    columna RECORD;
    pk_cols TEXT := '';
    constraint_def RECORD;  
    index_def RECORD;       
    primera BOOLEAN := TRUE;
BEGIN
    resultado := 'CREATE TABLE ' || tabla || ' (' || E'\n';

    -- Columnas
    FOR columna IN
        SELECT column_name, data_type, character_maximum_length,
               is_nullable, column_default
        FROM information_schema.columns
        WHERE table_name = tabla
        ORDER BY ordinal_position
    LOOP
        IF NOT primera THEN
            resultado := resultado || ',' || E'\n';
        ELSE
            primera := FALSE;
        END IF;

        resultado := resultado || '    ' || columna.column_name || ' ' || columna.data_type;

        IF columna.character_maximum_length IS NOT NULL THEN
            resultado := resultado || '(' || columna.character_maximum_length || ')';
        END IF;

        IF columna.column_default IS NOT NULL THEN
            resultado := resultado || ' DEFAULT ' || columna.column_default;
        END IF;

        IF columna.is_nullable = 'NO' THEN
            resultado := resultado || ' NOT NULL';
        END IF;
    END LOOP;

    -- Clave primaria
    SELECT string_agg(kcu.column_name, ', ')
    INTO pk_cols
    FROM information_schema.table_constraints tc
    JOIN information_schema.key_column_usage kcu
        ON tc.constraint_name = kcu.constraint_name
    WHERE tc.table_name = tabla AND tc.constraint_type = 'PRIMARY KEY';

    IF pk_cols IS NOT NULL THEN
        resultado := resultado || ',' || E'\n    PRIMARY KEY (' || pk_cols || ')';
    END IF;

    resultado := resultado || E'\n);';

    -- Restricciones únicas
    FOR constraint_def IN
        SELECT 'ALTER TABLE ' || tabla || ' ADD CONSTRAINT ' || tc.constraint_name || 
               ' UNIQUE (' || string_agg(kcu.column_name, ', ') || ');' AS def
        FROM information_schema.table_constraints tc
        JOIN information_schema.key_column_usage kcu
          ON tc.constraint_name = kcu.constraint_name
        WHERE tc.table_name = tabla AND tc.constraint_type = 'UNIQUE'
        GROUP BY tc.constraint_name
    LOOP
        resultado := resultado || E'\n' || constraint_def.def;
    END LOOP;

    -- Claves foráneas
    FOR constraint_def IN
        SELECT 'ALTER TABLE ' || tc.table_name || ' ADD CONSTRAINT ' || tc.constraint_name ||
               ' FOREIGN KEY (' || kcu.column_name || ') REFERENCES ' || 
               ccu.table_name || '(' || ccu.column_name || ');' AS def
        FROM information_schema.table_constraints tc
        JOIN information_schema.key_column_usage kcu
          ON tc.constraint_name = kcu.constraint_name
        JOIN information_schema.constraint_column_usage ccu
          ON ccu.constraint_name = tc.constraint_name
        WHERE tc.table_name = tabla AND tc.constraint_type = 'FOREIGN KEY'
    LOOP
        resultado := resultado || E'\n' || constraint_def.def;
    END LOOP;

    -- Índices adicionales
    FOR index_def IN
        SELECT 'CREATE INDEX ' || indexname || ' ON ' || tablename || 
               ' USING ' || regexp_replace(indexdef, '.*USING (\w+).*', '\1') || 
               ' ' || regexp_replace(indexdef, '.*\((.*)\).*', '(\1)') || ';' AS def
        FROM pg_indexes
        WHERE tablename = tabla AND indexname NOT LIKE '%pkey%'
    LOOP
        resultado := resultado || E'\n' || index_def.def;
    END LOOP;

    RETURN resultado;
END;
$$ LANGUAGE plpgsql;
