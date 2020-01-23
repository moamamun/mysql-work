SHOW DATABASES;

CREATE DATABASE coffe_shop;

USE coffe_shop;

CREATE TABLE prod(
	id INT auto_increment PRIMARY KEY,
    name varchar(30),
    price decimal(3,2)
);

CREATE TABLE cus(
	id INT auto_increment primary key,
    first_name varchar(30),
    last_name varchar(30),
    gender enum('M','F'),
    phone_number varchar(11)
);

CREATE TABLE orders(
	id INT auto_increment primary key,
    product_id int, 
    customer_id int,
    order_time datetime,
    foreign key (product_id) references prod(id),
    foreign key (customer_id) references cus(id)
);

SHOW TABLES;