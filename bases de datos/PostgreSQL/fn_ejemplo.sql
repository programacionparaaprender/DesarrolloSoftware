CREATE OR REPLACE FUNCTION busca_tabla(e_id int)
RETURNS TABLE(id int, nombre text) AS $$
BEGIN
    RETURN QUERY
    SELECT id, nombre FROM tabla WHERE id = e_id;
END;
$$ LANGUAGE plpgsql;