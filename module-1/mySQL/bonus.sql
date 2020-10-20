/*
I tried to come up with an extra information to be added to illustrate "many to many" relation 
but data set I've created looks very unnatural. Unfortunately couldn't find any better ideas.
*/

USE lab_mysql;

CREATE TABLE workshop (id int(10) auto_increment, wr_name varchar(50), 
					wr_date date, wr_city varchar(20), primary key (id));

CREATE TABLE repairs (id int(10) auto_increment, wr_id int(10), 
					cars_id int(10), sp_parts_id int(10), primary key (id));

insert into workshop (wr_name, wr_date, wr_city)
values
	('John Smith', '2020-01-01', 'Madrid'),
    ('John Smith', '2020-02-01', 'Madrid'),
	('John Smith', '2020-03-01', 'Barcelona'),
	('Bob White', '2020-04-01', 'Miami'),
	('Bob White', '2020-05-01', 'Miami'),
	('Lora Palmer', '2020-06-01', 'Paris'),
	('Rose Tyler', '2020-07-01', 'Paris'),
	('Rose Tyler', '2020-08-01', 'Paris');
 
insert into repairs (wr_id, cars_id, sp_parts_id)
values
	(1, 1, 1),
	(2, 2, 1),
	(3,	3, 1),
	(4, 4, 2),
	(5, 6, 2),
	(6, 1, 2),
	(7, 2, 3),
	(8, 3, 4);

select vin, manufacturer, model, year, color, wr_name, wr_date, wr_city
from cars left join repairs
on cars.id = repairs.cars_id
left join workshop
on repairs.wr_id = workshop.id
where wr_city = 'Paris';
 
drop table workshop;
