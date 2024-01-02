SELECT * FROM sysusers --Para SQL2000

SELECT *  FROM syslogins --Para SQL2000

SELECT * FROM sys.database_principals 

SELECT * FROM sys.server_principals

SELECT * FROM sys.sql_logins

CREATE TABLE usuarios (
  id int PRIMARY KEY NOT NULL IDENTITY(1,1),
  nombre varchar(30) NOT NULL,
  password varchar(30) NOT NULL,
);

INSERT INTO dbo.usuarios(nombre, password) VALUES('William', 'Stalling');
INSERT INTO dbo.usuarios(nombre, password) VALUES('Malba', 'Tahan');
INSERT INTO dbo.usuarios(nombre, password) VALUES('Adrián ', 'Paenza');
INSERT INTO dbo.usuarios(nombre, password) VALUES('Roald ', 'Dahl');
INSERT INTO dbo.usuarios(nombre, password) VALUES('Gianni ', 'Rodari');