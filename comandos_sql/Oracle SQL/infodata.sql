drop table infodata cascade constraints
create table infodata (
       id number(19,0) generated as identity,
        text1 varchar2(20 char),
        text2 varchar2(20 char),
        primary key (id)
);