{\rtf1\ansi\ansicpg1252\cocoartf2513
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\paperw11900\paperh16840\margl1440\margr1440\vieww10800\viewh8400\viewkind0
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0

\f0\fs24 \cf0 # CREATING THE DATABASE CAR DEALERS\
\
CREATE TABLE CARS (\
	vehicle_id INT UNSIGNED NOT NULL PRIMARY KEY,\
	manufacturer VARCHAR(40) NOT NULL,\
	model VARCHAR(40) NOT NULL,\
	year int(4) NOT NULL,\
	color VARCHAR(40) NOT NULL,\
	new_vehicle BOOLEAN NOT NULL,\
	store_id INT(4) \
)\
\
\
CREATE TABLE SALESPERSONS (\
	id_salesp INT UNSIGNED NOT NULL PRIMARY KEY,\
	staff_id INT(15),\
	staff_name VARCHAR(60),\
	store_id VARCHAR(40), \
	staff_strt_day DATE,\
	staff_phone INT(15),\
	staff_email VARCHAR(40)		\
)\
\
\
CREATE TABLE CUSTOMERS (\
	cust_id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,\
	cust_fname VARCHAR(40),\
	cust_lname VARCHAR(40),\
	cust_phone INT(15),\
	cust_email VARCHAR(40),\
	address VARCHAR(40),\
	city VARCHAR(40),\
	state_province VARCHAR(40),\
	country VARCHAR(40),\
	zip_code VARCHAR(10)		\
)\
\
\
\
CREATE TABLE INVOICE (\
	id_in INT UNSIGNED NOT NULL  PRIMARY KEY,\
	invoice_number INT(40),\
	invoice_date DATE,\
	vehicle_id INT(40),\
	cust_id INT(40),\
	id_salesp INT(40), \
	price FLOAT(40),\
	currency VARCHAR(4),\
	payment_status TINYINT(1)		\
)}