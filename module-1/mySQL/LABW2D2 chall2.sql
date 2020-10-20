USE mylabw2d2

/* TABLES AANPASSEN ZODAT IK ER GEMAKKELIJKER DE RIJEN AAN KAN TOEVOEGEN */

create table cars (
	VIN VARCHAR(50) PRIMARY KEY,
    Manufacturer VARCHAR(30),
    Model VARCHAR(30),
    Colors VARCHAR(30),
    Customer_ID INT);
    
create table invoices(
	Invoice_number INT PRIMARY KEY,
    Date_of_sale VARCHAR(10),
    CAR INT,
    Customer INT,
    Staff_ID INT,
    VIN VARCHAR(50));
    
create table customers(
	Customer_ID INT PRIMARY KEY,
    Name_customer VARCHAR(40),
    Phone_number VARCHAR(40),
    Email VARCHAR(50),
    Address VARCHAR(100),
    City VARCHAR(50),
    State_Province VARCHAR(50),
    Country VARCHAR(50),
    Postal VARCHAR(50),
    VIN INT,
    Staff_ID INT);
    
create table salesperson(
	Staff_ID INT PRIMARY KEY,
    Name_staff VARCHAR(40),
    Store VARCHAR(40),
    Customer_ID INT,
    Invoice_number INT);

select * from cars

DROP TABLE invoices
    
    
    
    