
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
>- GRANT ALL PRIVILEGES ON curso.* TO 'admin'@'%'; #muestra permisos de admin
>- SHOW GRANTS FOR 'admin'@'localhost'; #muestra permisos de admin
>- select user from mysql.user; #visualiza los usuarios del sistema
>- drop user 'alumno'@'localhost'; #elimina alumno creado
>- exit
>- mysqldump --user=root -p curso > copia.sql #se exporta al archivo
>- mysql --user=root -p curso < copia.sql #restaurar respaldo 
>- mysql -u root -p
>- show databases;
>- drop database udemy;

### 6. Instalación PostgreSQL, creación bases de datos, tablas, usuarios y privilegios
>- apt-get install postgresql postgresql-contrib -y
>- su postgres
>- psql
>- postgres~# create user admin PASSWORD '1234';
>- postgres~# create user prueba PASSWORD '1234';
>- postgres~# \du #visualizar los usuarios de postgres
>- postgres~# ALTER ROLE admin WITH SUPERUSER;
>- postgres~# ALTER ROLE admin WITH LOGIN;
>- postgres~# \du  #visualizar los usuarios de postgres
>- postgres~# create database udemy;
>- postgres~# create database curso WITH OWNER admin;
>- postgres~# \l #listar bases de datos
>- postgres~# GRANT ALL PRIVILEGES ON DATABASE curso TO admin;
>- postgres~# \c curso;
>- postgres~# CREATE TABLE alumnos(id serial primary key,nombre varchar(50) NOT NULL,edad smallint NOT NULL);
>- postgres~# \d #visualizar tablas
>- postgres~# insert into alumnos values('Jose', 23);
>- postgres~# insert into alumnos values('Maria', 18);
>- postgres~# insert into alumnos values('Marcos', 27);
>- postgres~# select * from alumnos;
>- postgres~# update alumnos set nombre='Josep' where id=1;
>- postgres~# delete from alumnos where id=1;
>- postgres~# CREATE TABLE profesores(id serial primary key,nombre varchar(50) NOT NULL,edad smallint NOT NULL);
>- postgres~# drop table profesores;
>- postgres~# drop database udemy;
>- postgres~# select version(); #muestra versión de postgresql
>- postgres~# pg_dump -U admin -w -h localhost curso > copia_bases.sql;
>- psql
>- postgres~# create database prueba;
>- postgres~# \c prueba #esta vacua
>- postgres~# \q
>- psql -U admin -h localhost -d prueba -f copia_bases.sql

## Sección 5: Conexión externa a una base de datos

### 7. Cliente externo MySQL
>- DBeaver descargar e instalar luego conectar a base de datos mysql
>- servidor, puerto, base de datos, usuario, password
>- find / -name "mysqld.cnf" #mostrar ubicación del archivo
>- nano /etc/mysql/mysql.conf.d/mysqld.cnf
>- bind-address = 127.0.0.1 #cambiarlo a
>- bind-address = 0.0.0.0 #cualquier maquina se podra conectar al servidor
>- #guardar cambios
>- service restart mysql
>- /etc/init.d/mysql restart
>- systemctl restart mysql

### 8. Cliente externo PostgreSQL