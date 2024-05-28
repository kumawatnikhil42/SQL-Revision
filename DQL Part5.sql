create database testing;

use testing;

create table product(pid int, pname varchar(20), oid int);
insert into product values(1,"tv",100),(2,"mobile",300);

create table orders(oid int, city varchar(20));
insert into orders values(100,"jaipur"),(200,"goa"),(300,"hp");

select * from product;
select * from orders;

-- cross join or cartisian join
select pid,pname from product 
join orders;

-- inner join
select pid,pname,city from product 
join orders where (product.oid=orders.oid);

-- or
-- if col. name are same
select pid,pname ,city from product 
join orders using (oid);

-- or
-- new synntax
select pid,pname from product 
inner join orders on (product.oid=orders.oid);

-- outer join
-- right join
select pid,pname,city from product 
right join orders on (product.oid=orders.oid);

-- left join
select pid,pname,city from product 
left join orders on (product.oid=orders.oid);

-- natural join
select pid,pname,city from product 
natural join orders;

-- self join

create table employee(eid int, ename varchar(20), mid int);
insert into employee values(10,"tushar",null),(20,"aman",30),
(30,"mayank",10),(40,"ujjwal",20);

select * from employee;

select emp.eid,emp.ename,emp.mid,mgr.ename as mng
from employee as emp
join employee as mgr on (emp.mid=mgr.eid);

create table employeee(eid int, ename varchar(20), mid int,salary int);
insert into employeee values(10,"tushar",null,500),(20,"aman",30,1000),
(30,"mayank",10,100),(40,"ujjwal",20,200);

select * from employeee;

select emp.eid,emp.ename,mgr.ename
,emp.salary as emp_salary,mgr.salary as mng_salary
from employeee as emp
join employeee as mgr on (emp.mid=mgr.eid) 
where emp.salary>mgr.salary;

use sakila;
select * from actor;
select * from film_actor;
select * from film;

select act.actor_id,first_name,last_name,fil.film_id,title
from actor as act join film_actor as fil join film as f
where (act.actor_id=fil.actor_id) and (fil.film_id=f.film_id);

select act.actor_id,
concat("Done"," ",count(fil.film_id)," ","Movies") as "total_movies"
from actor as act join film_actor as fil 
where (act.actor_id=fil.actor_id) 
group by actor_id;

