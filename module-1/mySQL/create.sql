CREATE DATABASE lab_mysql;
		
CREATE TABLE customer (
		customer_id INT AUTO_INCREMENT PRIMARY KEY,
		name VARCHAR(20),
		email VARCHAR(100),
		adress VARCHAR(100),
		city_state VARCHAR(30),
		postalcode VARCHAR(30),
		country VARCHAR(30),
		phone VARCHAR(30)
		);
		

CREATE TABLE sales_persons (
		staff_id INT AUTO_INCREMENT PRIMARY KEY,
		name VARCHAR(50),
		store VARCHAR(20)
		);

CREATE TABLE store (
		store_id INT AUTO_INCREMENT PRIMARY KEY,
		store VARCHAR(50),
		city VARCHAR(20)
		);
		
CREATE TABLE invoice (
		invoice_id INT AUTO_INCREMENT PRIMARY KEY,
		date date,
		car_id INT,
		customer_id INT,
		staff_id INT,
		store_id INT
		);
		
ALTER TABLE invoice
add check_inv timestamp;

DROP TABLE invoice;

CREATE TABLE invoice (
		invoice_id INT AUTO_INCREMENT PRIMARY KEY,
		date date,
		car_id INT,
		vin VARCHAR(20),
		customer_id INT,
		name_customer VARCHAR(20),
		address VARCHAR(100),
		city_state VARCHAR(30),
		postalcode VARCHAR(30),
		country VARCHAR(30),
		phone VARCHAR(30),
		email VARCHAR(100),
		staff_id INT,
		store_id INT,
		store VARCHAR(20),
		check_inv timestamp
		);
		
ALTER TABLE cars
add check_cars timestamp;

ALTER TABLE customer
add check_customer timestamp;

ALTER TABLE sales_persons
add check_sales_persons timestamp;

ALTER TABLE store
add check_store timestamp;

ALTER TABLE customer
CHANGE name cname VARCHAR(20);

ALTER TABLE sales_persons
CHANGE name sname VARCHAR(20);

CREATE TABLE cars (
		cars_id INT AUTO_INCREMENT PRIMARY KEY,
		VIN INT,
		manufacter VARCHAR(50),
		model VARCHAR(50),
		year year,
		color VARCHAR(30),
		check_cars timestamp
		);

ALTER TABLE invoice
modify date INT;


ALTER TABLE invoice
modify postalcode INT;

ALTER TABLE store
CHANGE city country VARCHAR(20);

ALTER TABLE sales
modify order_date INT;