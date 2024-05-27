use sakila;

-- group by (aggregate function)
-- multi row functions

select * from address;
select count(address_id) from address;

select count(address2) from address;
select sum(address_id) from address;

select distinct(district) from address;

select count(*) from address
where district="QLD";

select district,count(district) from address
group by district;

select district,count(district),sum(city_id) from address
group by district;

select customer_id,count(customer_id) as total from payment
group by customer_id;

select customer_id,count(customer_id) as total from payment
group by customer_id order by total;

select customer_id,count(customer_id) as total from payment
group by customer_id order by total desc;

select customer_id,sum(amount) as total from payment
group by customer_id;

select customer_id,sum(amount) as total from payment
group by customer_id having total>120;

select customer_id,sum(amount) as total from payment
where customer_id>5 group by customer_id having total>100;

select customer_id,sum(amount) as total from payment
where customer_id=1 and staff_id=1 group by customer_id;

select customer_id,sum(amount) as total from payment
where customer_id=1 and staff_id=2 group by customer_id;

select customer_id,staff_id,sum(amount) as total from payment
group by customer_id,staff_id;


select payment_id,avg(amount) as total from payment
where payment_id>10 group by payment_id;

select sum(amount),
date_format(payment_date,"%M") as monthn from payment
group by monthn ;




