use sakila;

drop table employees;
create table employees(id int primary key auto_increment,
dept varchar(20),salary int);

insert into employees(dept,salary) values("hr",200),
("hr",300),("hr",100),
("marketing",70),("marketing",50),
("marketing",200),("marketing",400),
("dsa",150),("dsa",120),
("dsa",40),("dsa",90),("dsa",500);

select * from employees;

select avg(salary) from employees;

select id,dept,salary ,
(select avg(salary) from employees) as avg
from employees;

select dept,avg(salary) from employees 
group by dept;

-- analytical function (windows function)

select id,dept,salary,
avg(salary) over(partition by dept) 
from employees;

-- rolling sum/avg/count
select id,dept,salary,
sum(salary) over(order by salary) 
from employees;

select id,dept,salary,
sum(salary) over(partition by dept order by salary) 
from employees;

-- rank(),dense_rank(),row_number()

select id,dept,salary,
rank() over(order by salary) 
from employees;

select id,dept,salary,
dense_rank() over(order by salary) 
from employees;

select id,dept,salary,
rank() over(partition by dept order by salary)
from employees;

select id,dept,salary,
dense_rank() over(partition by dept order by salary)
from employees;

select id,dept,salary,
row_number() over(partition by dept order by salary)
from employees;

select id,dept,salary,
dense_rank() over(order by salary desc)  
from employees ;

-- nth highest salary
select * from (select id,dept,salary,
dense_rank() over(order by salary desc) as "ranking" 
from employees) as k where ranking=1;