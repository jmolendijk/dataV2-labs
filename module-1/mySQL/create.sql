CREATE DATABASE lab_mysql;

USE lab_mysql;

DROP TABLE cars;

CREATE TABLE cars(
car_id INT PRIMARY KEY,
VIN VARCHAR (17) NOT NULL,
manufacturer VARCHAR (30) NOT NULL,
model VARCHAR (30) NOT NULL,
submodel VARCHAR (30),
year INT NOT NULL,
color VARCHAR (30),
segment_class VARCHAR (30)
)

USE lab_mysql;

DROP TABLE customers;

CREATE TABLE customers(
customer_ID INT PRIMARY KEY,
customer_ID_number INT NOT NULL,
cus_name VARCHAR (30) NOT NULL,
phone VARCHAR (30) NOT NULL,
email VARCHAR (30) NOT NULL,
address VARCHAR (50),
city VARCHAR (20),
state_province VARCHAR (20),
country VARCHAR (20) NOT NULL,
postal_code VARCHAR (10)
);

DROP TABLE salespersons;

CREATE TABLE salespersons(
salesperson_ID INT PRIMARY KEY,
staff_ID_number VARCHAR (5) NOT NULL,
name VARCHAR (30) NOT NULL,
date_of_employment DATE,
store_city VARCHAR (30) NOT NULL,
store_country VARCHAR (30),
store_region VARCHAR (30)
);

DROP TABLE invoices;

CREATE TABLE invoices(
invoice_id INT PRIMARY KEY,
invoice_number VARCHAR (30) NOT NULL,
date DATE,
due_date DATE,
payment_status VARCHAR (20),
car_id INT NOT NULL,
customer_ID INT NOT NULL,
salesperson_ID INT NOT NULL
);