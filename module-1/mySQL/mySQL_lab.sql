/*I have 6 tables to create: 
-STORES: where the information of the store will be 
-SALES_PRSON : where the staff info of the salesperson will be stored
-CUSTOMERS : Personal info of the customer
-CARS: info of the cars in store
-SALES: where info from customers, salesperson, store and cars will be gathered
-INVOICES : were the sales will be reported
*/

-- After creating, USE --
create database lab_mysql;
use lab_mysql;

-- creating Store--
create table store(
store_id int auto_increment primary key,
store_name varchar(30),
store_address varchar(30),
store_zipcode varchar(10)
);

DROP TABLE store;

create table stores(
store_id int auto_increment primary key,
store_name varchar(30),
store_address varchar(30),
store_zipcode varchar(10)
);


-- creating, deleting, creating again Sales-Person --
create table sales_person(
staff_id int auto_increment primary key,
name varchar(30),
store_id int
);


DROP TABLE sales_persons;

create table sales_persons(
staff_id int auto_increment primary key,
name varchar(30),
store_name varchar(30)
);


-- creating Customer--
create table customer(
customer_id int auto_increment primary key,
cus_name varchar(30),
cus_lname varchar(30),
cus_phone int,
cus_email varchar(30),
cus_address varchar(30),
cus_zipcode varchar(10),
cus_city varchar (10),
cus_state varchar(10),
cus_country varchar(10)
);


DROP TABLE customers;

create table customers(
cus_id int auto_increment primary key,
cus_name varchar(30),
cus_phone varchar(30),
cus_email varchar(30),
cus_address varchar(30),
cus_city varchar (10),
cus_state varchar(20),
cus_country varchar(20),
cus_zipcode varchar(10)
);


-- creating,dropping and creating Cars--
create table cars(
car_id int auto_increment primary key,
car_vin varchar(30),
car_model varchar(30),
car_color varchar(30),
car_year int,
created_at timestamp DEFAULT CURRENT_TIMESTAMP
);


DROP TABLE cars;

create table cars(
car_id int auto_increment primary key,
car_vin varchar(30),
car_manufacturer varchar(30),
car_model varchar(30),
car_color varchar(30),
car_year int
);


-- creating, deleting and recreating Sales--
create table sales(
sales_id int auto_increment primary key,
staff_id int,
car_id  int,
customer_id int,
store_id int,
sales_date DATE,
created_at timestamp DEFAULT CURRENT_TIMESTAMP,
qty int,
invoice_number int
);

DROP TABLE sales;

create table sales(
sales_id int auto_increment primary key,
staff_id int,
car_id  int,
sales_date int,
qty int
);


-- creating, deleting and recreating Invoice--
create table invoice(
invoice_number int auto_increment primary key,
invoice_date DATE,
sales_id int,
customer_id int,
invoice_discount FLOAT,
invoice_subtotal FLOAT,
invoice_tax FLOAT,
invoice_total FLOAT
);
DROP TABLE invoices;

create table invoices(
invoice_number int auto_increment primary key,
invoice_date int,
sales_id int,
customer_id int,
invoice_discount FLOAT,
invoice_subtotal FLOAT,
invoice_tax FLOAT,
invoice_total FLOAT
);



-- CHALLENGE 3 --

# @Erin, I modified the tables along when I was seeding them so they might differ from the previous DB
create database seeding.sql;
use seeding;

-- seeding table Cars --
insert into seedings.cars
values (0,'3K096I08581DHSNUP','Volkswagen','Tiguan','Blue','2019'),
(0,'ZM8G7BEUQZ97IH46V','Peugeot','Rifter','Red',2019),
(0,'RKXVNNIHLVVZOUB4M','Ford','Fusion','White',2018),
(0,'HKNDGS7CU31E9Z7JW','Toyota','RAV4','Gray',2018),
(0,'DAM41UDN3CHU2WVF6','Volvo','V60','Gray',2018),
(0,'DAM41UDN3CHU2WVF6','Volvo','V60 Cross Country','Silver',2018);

-- seeding table Customers --
insert into seedings.customers
values (10001,'Pablo Picasso','+34636 17 63 82','-','Paseo de la Chopera 14','Madrid',"Madrid",'Spain',28045),
(20001,'Abraham Lincoln','+1 305 907 7086','-','120 SW 8th St','Miami','Florida','United States',33130),
(30001,'Napoléon Bonaparte','+33 1 79 75 40 00','-','40 Rue du Colisée','Paris',"Île-de-France",'France',75008);


-- seeding table Invoices --


insert into seedings.invoices
values (1200,20191001,1,10001,0,2422.402,19.6*invoice_total/100,30500.50),
(0,20190304,2,30001,0,invoice_total-invoice_tax,19.6*invoice_total/100,65000);


-- seeding table Sales --
insert into seedings.sales
values (1,00001,2,20191001,1),
(0,00005,3,20190304,1);


-- seeding table Sales_Persons --
insert into seedings.sales_persons
values (00001,'Petey Cruise','Madrid'),
(0,'Anna Sthesia','Barclelona'),
(0,'Paul Molive','Berlin'),
(0,'Gail Forcewind','Paris'),
(0,'Paige Turner','Mimia'),
(0,'Bob Frapples','Mexico City'),
(0,'Walter Melon','Amsterdam'),
(0,'Shonda Leer','São Paulo');



-- seeding table Stores --
insert into seedings.stores
values(0,'Mdrid', 'plaza del sol 17','28040'),
(0,'Barcelona','Carrer La Rambla 40','08002'),
(0,'Berlin','Badensche Str. 52','10825'),
(0,'Paris','Rue Pierre Ginier 18','75018'),
(0,'Miami','10th Ave #1140','1600 NW'),
(0,'Mexico City','Calle Dr. García Diego 168','06720'),
(0,'Amsterdam','Herengreacht 436','1017BZ'),
(0,'SaoPaulo','Praça da Sé 194','01001-000');



-- BONUS UPDATE Challenge --
update update.sales_persons
set store_name = 'Miami'
where store_name ='Mimia';

update update.stores
set store_name = 'Madrid'
where store_name ='Mdrid';

update update.customers
set cus_email = 'ppicasso@gmail.com'
where cus_email = '-' and cus_name = 'Pablo Picasso';

update update.customers
set cus_email = 'lincoln@us.gov'
where cus_email = '-' and cus_name = 'Abraham Lincoln';

update update.customers
set cus_email = 'hello@napoleon.me'
where cus_email = '-' and cus_name = 'Napoléon Bonaparte';

-- BONUS DELETE Challenge --

delete from delete.cars
where car_vin = 'DAM41UDN3CHU2WVF6' and car_id = 5;