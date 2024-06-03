-- TCL : transaction control language
-- transaction : set of logical statement 

-- start : DML operation
-- end : DDL , DCL ,TCL

-- if autocommit value is 0 then we manually save the work with commit command
-- if value 1 then it is autocommit ,save auto
select @@autocommit;
set autocommit=0;

create database po;
use po;

-- it skips the error if already table exists
create table if not exists emp(eid int, ename varchar(20));

insert into emp values(1,"abc");
select * from emp;

-- to save the data
commit;

insert into emp values(11,"abc123");
select * from emp;
commit;

insert into emp values(12,"abc1234");
select * from emp;

-- discard the pending transaction
rollback;

update emp set eid=2 where eid=1;
select * from emp;

-- ddl command ends the transaction
create table if not exists emp1(eid int);

rollback; 

update emp set eid=2 where eid=1;
select * from emp;
savepoint emp_sv1;
update emp set eid=3 where eid=2;
rollback;
select * from emp;

update emp set eid=3 where eid=2;
rollback to emp_sv1;
select * from emp;

-- Alter (ddl statement) 

create table companies(id int);
insert into companies values(10);
select * from companies;

alter table companies 
add column phone varchar(15);

select * from companies;

alter table companies 
add column emp_count int not null;

select * from companies;

alter table companies drop column phone;

select * from companies;

rename table companies to newcompany;

show tables;

select * from newcompany;

alter table newcompany rename to companies;

select * from companies;

alter table companies 
rename column emp_count to emp_c ;

select * from companies;

alter table companies 
add primary key (id) ;

desc companies;
alter table companies 
add constraint compay_uk unique(emp_c);

desc companies;

alter table companies 
drop constraint compay_uk;

desc companies;

-- to change datatype
alter table companies
modify emp_c varchar(15);

desc companies;

-- change column name as well as datatype
alter table companies
change emp_c gender varchar(8);

desc companies;




