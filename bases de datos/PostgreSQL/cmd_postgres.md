

##

### crear tabla
CREATE TABLE usuario (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(100) NOT NULL,
    salary NUMERIC(10, 2) NOT NULL
);


### crear una vista
CREATE VIEW v_users AS
SELECT id, name, email, salary
FROM usuario;

### obtener el segundo mejor salario
SELECT DISTINCT salary
FROM usuario
ORDER BY salary DESC
OFFSET 1 LIMIT 1;

### comando para definir dos indices de usuario
CREATE INDEX idx_usuario_email ON usuario(email);
CREATE INDEX idx_usuario_salary ON usuario(salary);

### ¿Por qué definir índices?
>- Porque mejoran muchísimo el rendimiento de las consultas en la base de datos.
>- Un índice es como un índice de un libro: en vez de leer todo el libro para encontrar un tema, vas directo a la página.
>- Sin índices, PostgreSQL (o cualquier motor) tiene que leer fila por fila ("secuencialmente") para encontrar lo que buscas, y eso se vuelve lento cuando tienes miles o millones de filas.

### ¿Para qué sirven exactamente?
>- Para acelerar búsquedas (SELECT) por columnas específicas.
>- Para mejorar filtros (WHERE).
>- Para optimizar ordenamientos (ORDER BY).
>- Para agilizar joins entre tablas.
>- Para hacer más rápido encontrar registros únicos (UNIQUE automáticamente crea un índice).

### Ejemplo sencillo:
>- Si haces muchas consultas como:
>- SELECT * FROM usuario WHERE email = 'alguien@email.com';
>- Crear un índice en email permite que PostgreSQL encuentre el registro en milésimas de segundo, sin revisar toda la tabla.

### Los índices ocupan espacio extra en disco.
>- Hacen más lentas las operaciones de INSERT, UPDATE o DELETE, porque el índice también debe actualizarse.
>- Por eso no debes crear índices a lo loco: solo en las columnas que realmente usas para buscar o filtrar.
