
--not null
--unique
--primary key
--foreign key
--check
--default

--create table personas(
----personas_id int not null unique,
--personas_id int primary key,
--first_name varchar2(255) not null,
--last_name varchar2(255),
--city varchar2(255),
--address varchar2(500)
--);

--create table personas(
----personas_id int not null unique,
--personas_id int,
--first_name varchar2(255) not null,
--last_name varchar2(255),
--city varchar2(255),
--address varchar2(500),
--constring personas_pk primary key(personas_id)
--);

--create table personas(
--personas_id int check(personas_id > 0),
--first_name varchar2(255) not null,
--last_name varchar2(255),
--city varchar2(255),
--address varchar2(500),
--constring personas_pk primary key(personas_id)
--);

create table personas(
personas_id int check(personas_id > 0),
first_name varchar2(255) not null,
last_name varchar2(255),
city varchar2(255),
address varchar2(500)
--constring personas_pk primary key(personas_id)
--constraint personas_chk check(personas_id > 0)
);

alter table personas
modify city default 'Seattle';

alter table personas 
alter column city drop default;


--alter table personas
--add check(personas_id > 0);

alter table personas
add constraint personas_chk check(personas_id > 0);

alter table personas
drop constraint personas_chk;

--alter table personas
--add primary key(personas_id);

alter table personas
add constraint personas_pk primary key(personas_id);

alter table personas
drop constraint personas_pk;

insert into personas(personas_id, first_name) values(1, 'John');
insert into personas(personas_id, first_name) values(2, 'Manuel');
--drop table personas;
--
--alter table personas
--add unique (personas_id);

--alter table personas
--add constraint unique_personas_id unique;
