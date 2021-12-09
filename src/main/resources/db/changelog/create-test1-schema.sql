--liquibase formatted sql
				
--changeset nvoxland:1
create table test1 (  
    id int primary key,
    name varchar(255)  
);  
--rollback drop table test1; 

--changeset nvoxland:2 
insert into test1 (id, name) values (1, ‘name1′);
insert into test1 (id,  name) values (2, ‘name2′);  

--changeset nvoxland:3 dbms:mysql
create sequence seq_test;
