-- Challenge 2 - Create the Database and Tables

use lab_mysql;

create table cars(
	cars_id int(4) auto_increment primary key, 
	VIN varchar(20),
	manufacturer varchar(20),
	model varchar(20),
	car_year date,
	color varchar(10)
);


create table customers(
	c_id int(4) auto_increment, 
	cust_id int(5),
	name varchar(50),
	phone varchar(20),
	email varchar(50),
	address varchar(100),
	city varchar(20),
	state varchar(20),
	country varchar(20),
	zip_code varchar(10),
	primary key (c_id)
);

create table sales_person(
	s_id int(4) auto_increment,
	staff_id int(5),
	s_name varchar(30),
	store varchar(20),
	primary key (s_id)
);

create table invoices(
	invoice_id int(4) auto_increment,
	invoice_no int(15),
	date date,
	cars_id int(4),
	c_id int(4),
	s_id int(4),
	primary key (invoice_id),
	foreign key (cars_id) references cars(cars_id),
	foreign key (c_id) references customers(c_id),
	foreign key (s_id) references sales_person(s_id)
);

