-- Creating Table for Cars
CREATE TABLE cars (
vehicle_id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
manufacturer VARCHAR(40),
model VARCHAR(40),
build_year INT(4),
color VARCHAR(40),
used_new VARCHAR(4),
store_id INT(4)
)



-- Creating Table for Customers
CREATE TABLE customers (
customers_id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
f_name VARCHAR(40),
l_name VARCHAR(40),
phone INT (11),
email VARCHAR (40),
addres VARCHAR (40),
city VARCHAR (40),
state_province VARCHAR (40),
country VARCHAR (40),
zip INT (5)
)



-- Creating Table for Salespersons
CREATE TABLE salespersons (
staff_id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
f_name VARCHAR (40),
l_name VARCHAR (40),
phone INT (11),
email VARCHAR (40),
store_id INT(4)
)



-- Creating Table for Invoices
CREATE TABLE invoices (
invoice_number INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
invoice_date DATE,
car VARCHAR (40),
customer_id INT (40),
staff_id INT (4),
store_id INT (4),
price INT (40),
currency VARCHAR (4),
payment_status TINYINT(1)
)