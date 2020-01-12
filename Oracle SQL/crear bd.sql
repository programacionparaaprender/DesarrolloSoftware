--primary key
--GENERATED ALWAYS AS IDENTITY

create table autores(
autores_id number(4) primary key,
nombre varchar2(50) not null,
apellido_paterno varchar2(50) not null,
apellido_materno varchar2(50) not null
);


create table libros(
libros_id number(4) primary key,
isbn varchar2(13),
titulo varchar2(255) not null,
sinopsis varchar2(1000) not null,
num_paginas number(4),
editorial_id number(4)
);


create table autores_libros(
autores_id number(4),
libros_id number(4)
);


create table editoriales(
editoriales_id number(4) primary key,
nombre varchar2(100) not null,
sinopsis varchar2(1000) not null,
num_paginas number(4),
editorial_id number(4)
);

alter table autores_libros
add constraint autores_fk foreign key(autor_id)
references autores(autores_id);

alter table autores_libros
add constraint libros_fk foreign key(libros_id)
references libros(libros_id);


alter table libros
add constraint libro_editorial_fk foreign key(editorial_id)
references editoriales(editoriales_id);
