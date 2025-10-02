SELECT column_name, column_default
FROM information_schema.columns
WHERE table_name = 'tabla'
  AND column_name = 'id';