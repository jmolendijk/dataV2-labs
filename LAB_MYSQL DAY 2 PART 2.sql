CREATE TABLE salesperson (
	staff_id 	INT AUTO_INCREMENT PRIMARY KEY,
	name 		VARCHAR(20),
	store_name	VARCHAR(30)
);

INSERT INTO salesperson
VALUES 
	(00001, "Petey Cruiser", "Madrid"),
	(0, "Anna Sthesia", "Barcelona"),
	(0, "Paul Molive", "Berlin"),
	(0, "Gail Forcewind", "Paris"),
	(0, "Paige Turner", "Mimia");
	
CREATE TABLE store (
	store_id	INT AUTO_INCREMENT PRIMARY KEY,
	store_name	VARCHAR(30)
);


INSERT INTO store
VALUES
	(0, "Madrid"),
	(0, "Barcelona"),
	(0, "Berlin"),
	(0, "Paris"),
	(0, "Mimia"),
	(0, "Mexico City"),
	(0, "Amsterdam"),
	(0, 'Sao Paulo');

# TABLE SALES

CREATE TABLE sales (
	sales_id		INT AUTO_INCREMENT PRIMARY KEY, 
	staff_id		INT,
	cars_id			INT,
	customer_id		INT,
	invoice_id		INT,
	QTY 			INT	
);

INSERT INTO sales
VALUES (0, 0001, 0, 10001, 852399038, 1);


/* TABLE CARS */

CREATE TABLE cars (
	cars_id			INT AUTO_INCREMENT PRIMARY KEY,
	VIN				VARCHAR(30),
	manufacturer	VARCHAR(30),
	model			VARCHAR(30),
	year			INT,
	color			VARCHAR(30)			
);


INSERT INTO cars
VALUES 
	-- (0, "3K096I98581DHSNUP", "Volkswagen", "Tiguan", 2019, "Blue"),
	-- (0, 'ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red'),
	(0, 'RKXVNNIHLVVZOUB4M', "Ford", "Fusion", "2018", "White"),
	(0, "HKNDGS7CU31E9Z7JW", "Toyota", "R4V4", '2018', 'Silver'),
	(0, "DAM41UDN3CHU2WVF6", "Volvo", "V60", "2019", "Gray"),
	(0, "DAM41UDN3CHU2WVF6", 'Volvo', 'V60 CROSS country', '2019', 'Gray');


/* CUSTOMER TABLE */

CREATE TABLE customers (
	customer_id		INT AUTO_INCREMENT PRIMARY KEY,
	name			VARCHAR(30),
	phonenumber 	VARCHAR(30),
	email			VARCHAR(30),
	address			VARCHAR(30),
	city			VARCHAR(30),
	state			VARCHAR(30),
	country			VARCHAR(30),
	postal			INT
);

INSERT INTO customers
VALUES 
(10001, 'Pablo Picasso', '+34646176382', NULL, 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', 28045),
(20001, 'Abraham Lincoln', '+13059077086', NULL, '120 SW 8th St', 'Miami', 'Florida', 'United States', 33130),
(30001, 'Napoleon Bonaparte', '+33179754000', NULL, '40 Rue du Colisee', 'Paris', 'Ile-de-France', 'France', 75008);

#INVOICES TABLE

CREATE TABLE invoices (
	invoice_id		INT AUTO_INCREMENT PRIMARY KEY,
	date			VARCHAR(30),
	car				VARCHAR(30),
	customer		VARCHAR(30),
	salesperson		VARCHAR(30)
);

INSERT INTO invoices
VALUES 
	(852399038, '22-08-2018', 0, 1, 3),
	(0, '31-12-2018', 3, 0, 5),
	(0, '22-01-2019', 2, 2, 7);








