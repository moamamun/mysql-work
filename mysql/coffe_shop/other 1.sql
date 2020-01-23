use coffe_shop;

select * from orders;
select * from cus;
select * from prod;


select o.id, c.phone_number from orders o 
join cus c on o.customer_id = c.id
where o.product_id = 4;

select p.name, o.order_time from prod p
join orders o on p.id = o.product_id
where p.name = 'Filter';