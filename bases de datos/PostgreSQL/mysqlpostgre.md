
## curso
>- https://www.udemy.com/course/curso-basico-de-introduccion-a-mysql-y-postgresql-en-linux/learn/lecture/19880584#overview

## Sección 1: Introducción

### 1. Introducción al curso

## Sección 2: Introducción a las bases de datos

### 2. ¿Qué es una base de datos?

#### Ventajas
>- Consistencia de datos
>- Compartir datos
>- Mejora en la seguridad
>- Mejora en la accesibilidad a los datos
>- Mejora en los servicios de copias de seguridad

#### Desventajas
>- Complejidad
>- Coste del equipamiento adicional
>- Vulnerable a los fallos

#### Tipos de bases de datos

##### Relacionales
>- MySQL
>- MariaDB
>- PostgreSQL
>- Oracle
>- Access
>- Microsoft SQL Server

##### No relacionales
>- MongoDB
>- Redis
>- Cassandra

##### Relacional y NoSQL
>- Azure Cosmos DB

### 3. Cláusula Where

#### Operadores
>- = si son iguales
>- != si son diferentes
>- > primer valor mayor que el segundo
>- < primer valor menor que el segundo
>- >= primer valor mayor o igual que el segundo
>- <= primer valor menor o igual que el segundo
>- select nombre, apellido from empleados where edad < 40;

### 4. Lenguaje SQL básico

#### Como definimos como almacenamos la información:
1. create database: crea una nueva base de datos
2. drop database: elimina una base de datos
3. create table: crea una nueva tabla, donde guardamos información
4. alter table: modifica una tabla ya existente
5. drop table: elimina por completo una tabla

#### manipulando los datos
1. select: selecciona los datos
2. insert: añadir o insertar nuevos datos
3. update: cambiar o actualizar datos existentes
4. delete: elimina datos existentes
5. replace: cambiar o reemplazar datos nuevos o ya existentes

## Sección 3: MySQL

### 5. Instalación de MySQL, creación de bases de datos, tablas, usuarios y privilegios
>- apt-get install mysql-server
>- mysql -u root -p 
>- create database curso;
>- create database udemy;
>- show databases;
>- use curso;
>- create table alumnos (id int AUTO_INCREMENT PRIMARY KEY,nombre varchar(30), edad int);
>- create table clases (id int AUTO_INCREMENT PRIMARY KEY,modulos varchar(30));
>- show full tables from curso;
>- insert into alumnos values('Jose', 23);
>- insert into alumnos values('Maria', 18);
>- insert into alumnos values('Marcos', 27);
>- select * from alumnos;
>- update alumnos set nombre='Josep' where id=1;
>- delete from alumnos where id=1;
>- create user 'alumno'@'localhost' IDENTIFIED BY '1234';
>- create user 'admin'@'localhost' IDENTIFIED BY '1234';
>- select user from mysql.user; #visualiza los usuarios del sistema
>- GRANT ALL PRIVILEGES ON *.* 'admin'@'localhost';
>- FLUSH PRIVILEGES;
>- mysql -u admin -p
>- create database prueba;
>- mysql -u root -p
>- set global time_zone='-1:00';
>- GRANT USAGE ON *.* to 'admin'@'%' IDENTIFIED BY '1234';