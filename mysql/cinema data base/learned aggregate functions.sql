use cinema_booking;

select * from reserved_seat;
select * from bookings;

select * from rooms;

select count(*) from customers; #counts every unique char except null values

select sum(no_seats) from rooms # adds count.
where id > 1;

select count(*) from bookings
where customer_id = 10 between '10-01-2017' and '10-31-2017';
show tables;

select * from flims;
select * from screenings;

select count(*) from screenings s
join flims f on s.film_id = f.id
where f.name = 'blade runner 2049' between '10-01-2017' and '10-31-2017';

select * from customers;

select count(distinct(customer_id)) from bookings;

select * from bookings;

select customer_id, screening_id, count(id) from bookings
group by customer_id, screening_id
having customer_id = 10;

select f.name, s.start_time, c.first_name,c.last_name, count(b.id) from flims f
join screenings s on f.id = s.film_id
join bookings b on s.id = b.screening_id
join customers c on b.customer_id = c.id
group by f.name, s.start_time, c.first_name,c.last_name;

select * from reserved_seat;
select * from bookings;
select * from customers;

select b.customer_id, count(rs.id) from bookings b
join reserved_seat rs on b.id = rs.booking_id
group by b.customer_id;

select * from screenings;
select * from flims;

select f.name,f.length_min, count(s.id) from flims f 
join screenings s on f.id = s.film_id
group by f.name,f.length_min
having  f.length_min > 120;

	