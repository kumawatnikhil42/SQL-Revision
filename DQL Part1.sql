-- to use database
 use sakila; 
 
 -- to view selected table
 select database(); 

-- to view tables
show tables; 

-- describe table
desc actor; 
-- or 
describe actor;

-- single line comment 
-- /**/ multiline comment

-- select statement 
-- to select table
select * from actor;

select actor_id, first_name from actor;

select actor_id, first_name, actor_id from actor;

-- brodcasting
select actor_id, first_name, actor_id+4 from actor;

-- data is case sensitive

-- where clause for condition
select * from actor 
where actor_id = 2; 

-- not equals to
select * from actor
where actor_id <> 2;

select * from actor
where actor_id != 2;

select * from actor
where actor_id < 2;

select * from actor
where actor_id > 2;

select actor_id, first_name from actor
where actor_id <= 2;

select first_name from actor
where actor_id <= 2;

select actor_id, first_name
from actor where first_name = "Nick";

select * from actor
where actor_id between 2 and 5;

select * from actor
where actor_id >= 2 and actor_id <= 5;

select * from actor
where actor_id in (2,5,265);

select * from actor
where actor_id not in (2,5,12);

select * from actor
where first_name like 'E';

-- % => 0 or more characters
select * from actor
where first_name like 'E%';

select * from actor
where first_name like '%E';

select * from actor
where first_name like '%E%';

-- _ single character(only one character)
select * from actor
where first_name like '__';

select * from actor
where first_name like '_D';

-- minimum three characters
select * from actor
where first_name like '___%';


