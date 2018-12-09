CREATE FUNCTION holaMundo() RETURNS VARCHAR(30)
BEGIN
  DECLARE salida VARCHAR(30) DEFAULT 'Hola mundo';
  SET salida = 'Hola mundo con variables';
  RETURN salida;
END