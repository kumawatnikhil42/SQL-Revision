use sakila;

create table ut1(id int);
insert into ut1 values(10),(20),(20),(30),(40),(40);
select * from ut1;

-- second highest
select max(id) from ut1 where 
id < (select max(id) from ut1);

select * from ut1 order by id desc limit 2,1;

select min(id) from ut1 where 
id > (select min(id) from ut1 where
id > (select min(id) from ut1));

data types

create database isha;
use isha;
-- int 4 byte => 2^32 
create table xyz ( id int); -- unsigned(no negative)
-- max int value 
insert into xyz values(2147483647);

insert into xyz values(2147483648);

-- bigint 8 byte => 2^64

-- tinyint 1 byte => 2^8
-- smallint 
-- mediumint
-- int
-- bigint


-- string data
-- varchar and char

-- drop table t1;
create table t1(name varchar(3));
insert into t1 values("a   ");
select name, length(name) from t1;

-- drop table t2;
create table t2(name char(3));
insert into t2 values("x   ");
select name, length(name) from t2; 

-- date data
create table t3(dob date);
insert into t3 values("2024-03-19");
select dob from t3;

create table t4(dob date , dtime time , dob1 datetime);
insert into t4 values("2024-03-19","10:25:12",now());
select * from t4; 

-- timestamp ==> stores only year 2038





















