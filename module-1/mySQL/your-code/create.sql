USE lab_sql;
 
 /*Cars table*/
CREATE TABLE if not exists cars (
    car_ID int not null auto_increment,
    VIN char(17) not null,
    manufacturer varchar(50) not null,
    model varchar(50) not null,
    year varchar(50) not null,
    color varchar(50) not null,
    primary key (car_ID)
);


/*Customers table*/
CREATE TABLE if not exists customers (
    cus_ID int not null auto_increment,
    customer_id varchar(10) not null,
    cname varchar(500) not null,
    phone varchar(50),
    email varchar(50),
    address varchar(500) not null,
    city varchar(50) not null,
    stateprovince varchar(50) not null,
    country varchar(50) not null,
    zip_postalcode varchar(20) not null,
    primary key (cus_ID)
);


/*Sales Person tbale*/
CREATE TABLE if not exists salesperson (
    sp_ID int not null auto_increment,
    staff_id varchar(10) not null,
    sname varchar(500) not null,
    store varchar(50) not null,
    primary key (sp_ID)
);


/*Invoice table*/
CREATE TABLE if not exists invoices (
    inv_ID int not null auto_increment,
    invoice_id varchar(10) not null,
    idate date not null,
    car_id varchar(50) not null,
    cus_id varchar(50) not null,
    sp_id varchar(50) not null,
    primary key (inv_ID)
);
