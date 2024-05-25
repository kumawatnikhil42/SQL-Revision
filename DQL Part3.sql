use sakila;

-- date time function
-- year,month,quater,weekofyear

select curdate() from dual;
select current_date() from dual;

select curtime() from dual;

select current_timestamp() from dual;

select now() from dual;

select adddate(now(),15) from dual;

select adddate(now(),interval 1 month) from dual;
select adddate(now(),interval 1 day) from dual;

select dayname(now()) from dual;

-- (%modifier)
select date_format(now(),'%Y') from dual;
select date_format(now(),'%y') from dual;
select date_format(now(),'%D') from dual;
select date_format(now(),'%d') from dual;
select date_format(now(),'%M') from dual;
select date_format(now(),'%m') from dual;

select date_format(now(),'%M-%Y') from dual;

select date_format(now(),'%Y') from dual;

-- numeric fuction
-- round, truncate, mod

select round(10.6) from dual;
select round(10.4) from dual;

select round(10.67,1) from dual;
select round(10.64,1) from dual;
select round(10.6684,2) from dual;

select truncate(10.612,2) from dual;
select truncate(10.612,1) from dual;

select mod(10,2) from dual;
select mod(11,2) from dual;

-- conditional
-- if
select * from actor;
-- (conndition,true,false)
select if(True,10,20) from actor;

select actor_id,first_name,
if(actor_id=2,actor_id+10,actor_id)
 from actor;
 
select actor_id,first_name,
if(actor_id=2,actor_id+10,
    if(actor_id=4,actor_id+10,actor_id))
from actor;

-- case
select actor_id, first_name, 
case actor_id
when 2 then actor_id+10
end
from actor;

select actor_id, first_name,
case actor_id
when 2 then actor_id+10
else actor_id
end "newcol"
from actor;

select actor_id, first_name,
case actor_id
when 2 then actor_id+20
when 3 then actor_id+30
when 4 then actor_id+40
else actor_id
end "newcol"
from actor;

select actor_id, first_name,
case 
when actor_id=2 then actor_id+10
else actor_id
end "newcol"
from actor;

select actor_id, first_name,
case 
when actor_id>30 then actor_id+50
when actor_id>15 then actor_id+25
when actor_id>5 then actor_id+10
else actor_id+5
end "newcol"
from actor;


