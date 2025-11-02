SELECT
    n.nspname AS schema,
    p.proname AS procedure_name,
    pg_get_functiondef(p.oid) AS definition
FROM
    pg_proc p
JOIN
    pg_namespace n ON p.pronamespace = n.oid
WHERE
    p.proname = 'sp_ejemplo';