/*
create sequence sequence1
[increment by n]
[start with n]
[maxvalue n][nomaxvalue]
[minvalue][nominvalue]
[cycle | nocycle]
[cache | nocache]
*/

--alter se puede usar
create sequence mi_sequence1
increment by 10
start with 120
maxvalue 9999
--minvalue
nocache
nocycle;


create table test(
id number primary key,
col1 number
);

insert into test values(mi_sequence1.NEXTVAL, 10);

select * from test;

select mi_sequence1.CURRVAL from dual;

drop sequence mi_sequence1;
