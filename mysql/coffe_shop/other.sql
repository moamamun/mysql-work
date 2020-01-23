use coffe_shop;

select * from orders
where order_time between '2017-01-01' and '2017-01-07';

select * from cus
where gender = 'f'
and last_name = 'Bluth';

select * from prod
where price > 3
or coffe_origin = 'it';

select * from cus
where phone_number is null
and gender = 'M';

select * from cus
where first_name LIKE '';

select * from prod;

select name, price from prod
where name = 'white'
or price = 9;

select * from orders
where order_time between '2017-01-01' and '2017-01-30'
and customer_id in (2,3,6 or 8);

select * from cus
where last_name like '%ar%';


select distinct last_name from cus
order by last_name;

select * from orders
where customer_id = 1
and order_time between '2017-01-01' and '2017-01-30'
order by order_time asc
limit 3;

select name as coffee from prod;

