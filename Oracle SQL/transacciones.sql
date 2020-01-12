
drop table prueba;

create table prueba(
col1 number,
col2 number
);

insert into prueba values(4, 16);
insert into prueba values(5, 25);
select * from prueba;

commit;

set transaction name 'actualizar campo1';

update prueba set col2 = 0 where col1 = 1;

select * from prueba;

savepoint despues_act_1;

update prueba set col2 = -1 where col1 = 2;

savepoint despues_act_2;

rollback to savepoint despues_act_1;

select * from prueba;

update prueba set col2 = -10 where col1 = 3;

rollback;

insert into prueba values(4, 16);
insert into prueba values(5, 25);
insert into prueba values(6, 36);

commit;

select * from prueba;

delete from prueba where col1 = 6;

commit;

