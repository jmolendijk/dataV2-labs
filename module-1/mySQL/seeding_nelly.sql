{\rtf1\ansi\ansicpg1252\cocoartf2513
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\paperw11900\paperh16840\margl1440\margr1440\vieww27420\viewh14200\viewkind0
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0

\f0\fs24 \cf0 \
# SEEDING THE DATABASE CAR DEALERS\
\
\
INSERT INTO CARS ( id_cars, vehicle_vin, manufacturer, model, year, color )\
VALUES  (1	,'ZM8G7BEUQZ97IH46V',	'Peugeot', 	'Rifter',	2019,'Red'),\
(2	,'RKXVNNIHLVVZOUB4M'	      ,  'Ford','Fusion'	, 2018	,'White'),\
(3	,'HKNDGS7CU31E9Z7JW'	,'Toyota'	,'RAV4'	, 2018 ,'Silver'),\
(4	,'DAM41UDN3CHU2WVF6'	,'Volvo'	, 'V60'	, 2019,'Gray'), \
(5	,'DAM41UDN3CHU2WVF6'	,'Volvo'	,' V60 Cross Country', 2019 ,'Gray');\
\
\
INSERT INTO  CUSTOMERS ( id_cust, customer_id, customer_name, customer_phone, customer_email, customer_address, city, state_province, country, zip_code )\
VALUES ( 0 ,	10001	, 'Pablo Picasso',	'+34 636 17 63 82','-','Paseo de la Chopera 14', 'Madrid', 'Madrid','Spain', 28045),\
(1	,	20001	,	'Abraham Lincoln',		'+1 305 907 7086', '-' , '120 SW 8th St','Miami' ,'Florida','United States', 33130),\
(2,	30001	,'Napol\'e9on Bonaparte','+33 1 79 75 40 00','-','40 Rue du Colis\'e9e','Paris', '\'cele-de-France', 'France', 75008);\
\
\
INSERT INTO INVOICE ( id_in, invoice_number,invoice_date,vehicle_id,cust_id, id_salesp )\
VALUES (0 ,'852399038'	, '2018-08-22' ,  0 , 1,	3),\
(1,'731166526'	,'2018-12-31' ,	3,	0,	5),\
(2,'271135104'	,'2019-01-22',	2,	2,	7);\
\
\
INSERT INTO SALESPERSONS ( id_salesp, staff_id,staff_name, store_id)\
VALUES (0,	00001,	"Petey Cruiser"	,"Madrid"),\
(1,	00002,	"Anna Sthesia",	"Barcelona"),\
(2,	00003,	"Paul Molive",	"Berlin"),\
(3,	00004,	"Gail Forcewind",	"Paris"),\
(4,	00005,	"Paige Turner",	"Mimia"),\
(5,	00006,	"Bob Frapples"	,"Mexico City"),\
(6,	00007,	'Walter Melon',	'Amsterdam'),\
(7,	00008,	'Shonda Leer',	'S\'e3o Paulo');\
}