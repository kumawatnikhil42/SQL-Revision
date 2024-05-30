use sakila;

-- constraints : set of rules 
  -- primary key
  -- foreign key
  -- not null
  -- unique
  -- default
  -- index
  -- check
  
create table raj(id int, name varchar(20));
insert into raj values(10,"aman");
insert into raj values(13);

create table raj2(id int default 100, name varchar(20) not null);
insert into raj2 values(10,"aman");
insert into raj2 values(13);
insert into raj2 values("aditya");

create table raj3(id int unique, name varchar(20));
insert into raj3 values(10,"aman");
insert into raj3 values(10);

create table raj4(id int check(id between 2 and 5));
insert into raj4 values(10);
insert into raj4 values(2);

create table house(house_id int, selling_price int,
purchase_price int ,email varchar(50) unique,
constraint db_table_sprice_chk check(selling_price>purchase_price));
insert into house values(1,100,90,"abc@gmail.com");
select * from house;


-- primary key : unique identifier each and every record
-- has unique and not null values
-- one table have only one primary key 

create table raj5(id int primary key);
insert into raj5 values(10);
insert into raj5 values(10);

-- foreign key 
create table person (pid int primary key,
pname varchar(20));
insert into person values(1,"tushar");
insert into person values(2,"nikhil");

create table orders2 (oid int,city varchar(20), pid int 
,foreign key (oid) references person(pid) );
insert into orders2 values(101,"jaipur" ,1);
insert into orders2 values(102,"ajmer",3);






















