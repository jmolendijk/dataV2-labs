USE lab_mysql;

CREATE TABLE cars (id int(10) auto_increment, vin char(17) not null, manufacturer varchar(20),
       model varchar(30), year smallint(4), color varchar(10), primary key (id));
       
CREATE TABLE salespersons (id int(10) auto_increment, staff_id varchar(10) not null, staff_name varchar(50),
		staff_store varchar(40), primary key (id));

CREATE TABLE invoices (id int(10) auto_increment, inv_number varchar(10) not null, inv_date date, cars_id int(10),
		customers_id int(10), salespersons_id int(10), primary key (id));
       
CREATE TABLE customers (id int(10) auto_increment, cust_id varchar(10) not null, cust_name varchar(50),
		cust_number varchar(20), cust_email varchar(20), cust_address varchar(50),
        cust_city varchar(20), cust_province varchar(20), cust_country varchar(20),
        cust_zip_code varchar(10), primary key (id));
