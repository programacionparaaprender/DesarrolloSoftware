create table autores(
autores_id NUMBER GENERATED ALWAYS AS IDENTITY,
nombre varchar2(50) not null,
apellido_paterno varchar2(50) not null,
apellido_materno varchar2(50) not null
);