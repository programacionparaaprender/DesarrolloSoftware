PREPARE mi_consulta (int, text) AS
SELECT * FROM tabla WHERE id = $1 AND nombre = $2;

--EXECUTE mi_consulta(123, 'Juan');