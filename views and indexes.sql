-- views
-- virtual table

-- view => not physically exist
-- complex qury stor in table virtually(refer)

use sakila;
select * from payment;

create view v_payment as 
select payment_id,customer_id from payment;

select * from v_payment;

create table raj(id int, salary int);
insert into raj values(1,200),(2,300);

create view v_raj as select id from raj;

select * from v_raj;

-- simple view or upadatable => when we change in view then it also change in parent table
insert into v_raj values(30);
select * from raj;

select sum(salary) from raj;

-- complex view =>if view has aggregate,join etc then it cannot change
create or replace view v_raj as select sum(salary) from raj;
select * from v_raj;
insert into v_raj values(800);

-- index ==> clusterd(auto) or non-clustered(manually)

drop database test;
create database test;
use test;

create table regex(id int primary key auto_increment,
name varchar(20),salary int);

insert into regex values(1,"tushar",10),(2,"aman",20);
desc regex;

select * from regex;
insert into regex(name,salary) values("aman",200);

show indexes from regex;
select * from regex;

explain select id from regex;

create index regex_name_ind on regex(name);
show indexes from regex;

explain select * from regex where salary=20;
explain select * from regex where name="aman";

drop index regex_name_ind on regex;
show indexes from regex;

insert into regex(name,salary) values("shivam",500),("tunish",600);
select * from regex;

create index regex_name on regex(name(2));

show indexes from regex;
explain select * from regex where name like "tu%";

explain select * from regex where name="isha";

explain select * from regex where name like "__%";





