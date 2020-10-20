CREATE database car_dealership;
use car_dealership;

create table Cars(
cars_id INT not null auto_increment,
VIN VARCHAR(20),
manufacturer VARCHAR(30),
model VARCHAR(30),
year INT(4),
colour VARCHAR(30),
PRIMARY key (cars_id)
)
;
CREATE TABLE Customers(
	customer_id INT(5) NOT NULL AUTO_INCREMENT,
	name VARCHAR(30) NOT NULL,
	phone varchar(30) NOT NULL,
	email VARCHAR(30),
	address VARCHAR(50) NOT NULL,
	city VARCHAR(50) NOT NULL,
	state VARCHAR(30),
    country VARCHAR(50),
	zip INT(10),
    PRIMARY KEY (customer_id)
	)
	;

    CREATE TABLE Salepersons(
	salepersons_id INT(5) NOT NULL auto_increment,
	staff_id INT(5) NOT NULL,
	name VARCHAR(30) NOT NULL,
	store VARCHAR(30),
    PRIMARY KEY (salepersons_id)
    )
    ;
CREATE TABLE Invoices(
	invoices_id INT(5) NOT NULL AUTO_INCREMENT,
    invoice_number INT(5) NOT NULL,
	date date,
	car INT(5),
	customer_id INT(5),
    salepersons_id INT(5),
    PRIMARY KEY (invoices_id)
	)
	;