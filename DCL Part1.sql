-- DCL => Data Control Language

-- user => username => Password 
create user bob12 identified by 'bob';
select * from mysql.user;
 
select current_user();

-- to show permission of user
show grants for bob12; 

-- to create user with specific ip address
-- create user "Samay"@"192.16.10" indentified by "Password"

-- for grant permission
grant all privileges on sakila.* to bob12;

show grants for bob12;

-- to change password
alter user bob12 identified by "nikhil";

-- to lock user
alter user bob12 account lock;

-- to unlock user
alter user bob12 account unlock;

-- roles => collection of users (group)

create role sales1;
grant select on sakila.* to sales1;

create user aman1 identified by "aman";
show grants for "aman";

grant sales1 to aman1;
show grants for aman1;

set default role all to aman1; 

use sakila;

create table ind(id int, i_name varchar(15));
insert into ind values(1,"sam");

show grants for "bob12";

grant select(id),update(i_name) on sakila.ind to bob12;


