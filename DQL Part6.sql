use sakila;

-- sub query => query within query
select * from payment;

select amount from payment where payment_id = 1;

select * from payment where amount = 2.99;

select * from payment where 
amount = (select amount from payment where payment_id = 3);

select * from payment where 
amount = (select amount from payment where rental_id = 573);

select * from payment where 
staff_id=(select staff_id from payment where payment_id = 10);

select payment_id,staff_id,amount,payment_date 
from payment where 
month(payment_date)=( select month(payment_date) 
					  from payment where payment_id = 5);

-- multirow subquery 
-- in,any,all
select * from payment where amount in 
(select amount from payment where payment_id in (2,3));

select * from payment where amount not in 
(select amount from payment where payment_id in (2,3));

select * from payment where amount = any 
(select amount from payment where payment_id in (2,3));

-- >any greater than the minimum value of subquery
select * from payment where amount >any 
(select amount from payment where payment_id in (2,3));

-- <any less than than maximum value of subquery 
select * from payment where amount <any 
(select amount from payment where payment_id in (2,3));

-- >all greater than maximum value of subquery
select * from payment where amount >all 
(select amount from payment where payment_id in (2,3));

-- <all less than the minimum value of subquery
select * from payment where amount <all 
(select amount from payment where payment_id in (2,3));






