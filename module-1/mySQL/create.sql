-- CHALLENGE 2: 

#First table = Cars 

CREATE TABLE cars (
cars_id INT (7) AUTO_INCREMENT PRIMARY KEY, 
vin VARCHAR (17), 
model VARCHAR (30) NOT NULL, 
brand VARCHAR (30) NOT NULL, 
building_year YEAR,  
color VARCHAR (10), 
fuel VARCHAR (10), 
price FLOAT (13) NOT NULL, 
hp INT (3)
)

#VIN = 17 because every vin-number is max 17 characters long
#NOT NULL --> wants to say that it needs to be included. 

CREATE TABLE IF NOT EXISTS sales (
staff_id INT (4) AUTO_INCREMENT PRIMARY KEY, 
f_name_s VARCHAR (30),
l_name_s VARCHAR (30),
sex_s VARCHAR (6),
email_s VARCHAR (100),
country_s VARCHAR (56),
work_function_s VARCHAR (30) NOT NULL,
mobile_phone_s INT(13) NOT NULL,
birthday_s DATE NOT NULL
)

#Longest landname in the world = 56 --> searched on google
#Birthday I used the syntax Date (YYYY-MM-DDDD)
# Max length mobile = International number with the landcode but without + sign. 

CREATE TABLE clients (
customer_id INT(5) AUTO_INCREMENT PRIMARY KEY, 
f_name_c VARCHAR (30) NOT NULL,
l_name_c VARCHAR (30) NOT NULL,
birthday_c DATE NOT NULL, 
sex_c VARCHAR (6) NOT NULL,
email_c VARCHAR (100) NOT NULL,
country_c VARCHAR (56) NOT NULL,
zipcode_c INT (4) NOT NULL,
street_c VARCHAR (35),
mobile_phone_c INT(13) NOT NULL,
years_of_client INT (2), 
publicity VARCHAR (3),
profession_c VARCHAR (50) NOT NULL
)

# Zipcode = Belgian zipcode --> 9000 or 9090 or 8700,.
# Fun fact longest streetname in the world = Taumata­whakatangihanga­koauau­o­tamatea­turi­pukakapiki­maunga­horo­nuku­pokai­whenua­kitanatahu" 85 characters --> Source Google
# Publicity if they want publicity "Yes" or "No"


CREATE TABLE suppliers (
supplier_id INT(4) AUTO_INCREMENT PRIMARY KEY, 
s_name VARCHAR (30),
company_number INT(10),
mobile_sup INT(13),
email_sup VARCHAR (100) NOT NULL, 
zipcode_sup INT (4),
street_sup VARCHAR (35)
)

#Company_number = Is the length of an belgian company number

CREATE TABLE parts (
parts_id INT(5) AUTO_INCREMENT PRIMARY KEY, 
name_part VARCHAR (30), 
supplier_id INT(4), 
price_part DECIMAL (7),
stock INT(4),
selling_price DECIMAL (7)
)

#Stock in my garage is limited to a maximum of 9.999 parts per item. 

CREATE TABLE invoice (
invoice_id INT(7) AUTO_INCREMENT PRIMARY KEY, 
cars_id INT  (7),
parts_id INT (5),
customer_id INT (5),
staff_id INT (4),
discount VARCHAR (4),
price FLOAT (13),
vin VARCHAR (17),
date_invoice DATE
)

#Discount is the meaning to put in the percentage like (20%)