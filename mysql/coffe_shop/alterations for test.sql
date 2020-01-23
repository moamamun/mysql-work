describe pet;
describe people;
describe address;

alter table pet
add primary key (id);   

alter table people modify ids int; #this changes columns data type

alter table people
add primary key (ids);

alter table pet
add constraint fk_peopleid
foreign key (owner_id) references people(ids);  #this will add a foriegn key and have it ref to pk

alter table people
add column email varchar(20); 

alter table people
add constraint peopleemail unique (email);


alter table pet change `pet_name` `dope_name` varchar(20);

alter table address modify post_code char(7);




