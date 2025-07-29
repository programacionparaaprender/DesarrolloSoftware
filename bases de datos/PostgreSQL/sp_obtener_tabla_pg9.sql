CREATE OR REPLACE FUNCTION show_create_table_pg9(tabla TEXT)
RETURNS TEXT AS $$
DECLARE
    resultado TEXT := '';
    columna RECORD;
    primera BOOLEAN := TRUE;
    pk_cols TEXT := '';
    unicas RECORD;
    fk RECORD;
    idx RECORD;
BEGIN
    -- Crear cabecera de CREATE TABLE
    resultado := 'CREATE TABLE ' || quote_ident(tabla) || ' (' || E'\n';

    -- Columnas
    FOR columna IN
        SELECT column_name, data_type,
               COALESCE(character_maximum_length, numeric_precision) AS max_length,
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

        resultado := resultado || '    ' || quote_ident(columna.column_name) || ' ' || columna.data_type;

        IF columna.max_length IS NOT NULL THEN
            resultado := resultado || '(' || columna.max_length || ')';
        END IF;

        IF columna.column_default IS NOT NULL THEN
            resultado := resultado || ' DEFAULT ' || columna.column_default;
        END IF;

        IF columna.is_nullable = 'NO' THEN
            resultado := resultado || ' NOT NULL';
        END IF;
    END LOOP;

    -- Clave primaria
    SELECT string_agg(quote_ident(kcu.column_name), ', ')
    INTO pk_cols
    FROM information_schema.table_constraints tc
    JOIN information_schema.key_column_usage kcu
      ON tc.constraint_name = kcu.constraint_name
    WHERE tc.table_name = tabla
      AND tc.constraint_type = 'PRIMARY KEY'
      AND tc.constraint_schema = current_schema();

    IF pk_cols IS NOT NULL THEN
        resultado := resultado || ',' || E'\n    PRIMARY KEY (' || pk_cols || ')';
    END IF;

    resultado := resultado || E'\n);';

    -- Restricciones únicas
    FOR unicas IN
        SELECT tc.constraint_name,
               array_to_string(array_agg(quote_ident(kcu.column_name)), ', ') AS columnas
        FROM information_schema.table_constraints tc
        JOIN information_schema.key_column_usage kcu
          ON tc.constraint_name = kcu.constraint_name
        WHERE tc.table_name = tabla
          AND tc.constraint_type = 'UNIQUE'
          AND tc.constraint_schema = current_schema()
        GROUP BY tc.constraint_name
    LOOP
        resultado := resultado || E'\nALTER TABLE ' || quote_ident(tabla) ||
                    ' ADD CONSTRAINT ' || quote_ident(unicas.constraint_name) ||
                    ' UNIQUE (' || unicas.columnas || ');';
    END LOOP;

    -- Claves foráneas
    FOR fk IN
        SELECT tc.constraint_name,
               kcu.column_name,
               ccu.table_name AS foreign_table,
               ccu.column_name AS foreign_column
        FROM information_schema.table_constraints tc
        JOIN information_schema.key_column_usage kcu
          ON tc.constraint_name = kcu.constraint_name
        JOIN information_schema.constraint_column_usage ccu
          ON ccu.constraint_name = tc.constraint_name
        WHERE tc.table_name = tabla
          AND tc.constraint_type = 'FOREIGN KEY'
          AND tc.constraint_schema = current_schema()
    LOOP
        resultado := resultado || E'\nALTER TABLE ' || quote_ident(tabla) ||
                    ' ADD CONSTRAINT ' || quote_ident(fk.constraint_name) ||
                    ' FOREIGN KEY (' || quote_ident(fk.column_name) || ')' ||
                    ' REFERENCES ' || quote_ident(fk.foreign_table) ||
                    '(' || quote_ident(fk.foreign_column) || ');';
    END LOOP;

    -- Índices (sin incluir PKs)
    FOR idx IN
        SELECT indexname, indexdef
        FROM pg_indexes
        WHERE tablename = tabla
          AND schemaname = current_schema()
          AND indexname NOT LIKE '%pkey%'
    LOOP
        resultado := resultado || E'\n' || idx.indexdef || ';';
    END LOOP;

    RETURN resultado;
END;
$$ LANGUAGE plpgsql;





select show_create_table_pg9('ejemplo');