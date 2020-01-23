create database test;

use test;

create table address(
id int, 
house_number int,
city varchar(20),
post_code varchar(7)
);

create table people(
id int,
first_name varchar(20),
last_name varchar(20),
address_id int
);

create table pet(
id int,
pet_name varchar(20),
species varchar(20),
owner_id int
);

show tables;
