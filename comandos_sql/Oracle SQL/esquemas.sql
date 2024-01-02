

--crearlo desde terminal para que funcione
create user miusuario identified by password;

grant create session to miusuario;

grant create session to miusuario;
grant create table to miusuario;
grant create view to miusuario;
grant create any trigger to miusuario;
grant create any procedure to miusuario;
grant create sequence to miusuario;
grant create synonym to miusuario;

create table miusuario.prueba(col1 number);

create public synonym pr for miusuario.prueba;

select * from pr;
