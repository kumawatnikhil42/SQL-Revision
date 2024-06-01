use isha;
show tables;

select * from t1;

-- dml statement
-- delete from table

-- we can recover the data 
-- it only delete data
delete from t1 where name="a";

-- update(dml) ==> if not condtion all record update
select * from t1;

update t1 set name="sam";
update t1 set name="nik" where name="sam"; 

-- DDL statement(create,drop,truncate,alter)

-- for delete table
drop table t1;
show tables;

-- truncate => delete all rows (first drop table then recreate structure of table)
truncate t2;
select * from t2; 

use sakila;

select * from actor;

create table o1 
as select * from actor;
select * from o1;


create table o2 
as select actor_id,first_name from actor;
select * from o2;

