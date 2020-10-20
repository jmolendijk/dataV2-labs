
/*
Populating Cars
*/

INSERT INTO cars
values (0,'3K096I98581DHSNUP', 'Volkswagen','Tiguan', 2019, 'Blue', CURRENT_TIMESTAMP),
(1, 'ZM8G7BEUQZ97IH46V','Peugeot','Rifter',2019,'Red', CURRENT_TIMESTAMP),
(2,'RKXVNNIHLVVZOUB4M','Ford',	'Fusion',2018,'White',CURRENT_TIMESTAMP);

/*
Populating Customer
*/

Insert into customer
values
(10001,'Pablo Picasso',Null,'Paseo de la Chopera, 14','Madrid/Madrid',28045,'Spain','+34 636 17 63 82',CURRENT_TIMESTAMP);

Insert into customer
values
(20001,'Abraham Lincoln',NUll, '120 SW 8th St',	'Miami/Florida',33130,'UnitedStates', '+1 305 907 7086',CURRENT_TIMESTAMP),
(30001,	'Napoléon Bonaparte',NULL,'40 Rue du Colisée','Paris/Île-de-France', 75008, 'France', '+33 1 79 75 40 00',CURRENT_TIMESTAMP);

/*
Populating sales_persons
*/

Insert into sales_persons
values
(00001, 'Petey Cruiser','Madrid',CURRENT_TIMESTAMP),
(00002, 'Anna Sthesia', 'Barcelona', CURRENT_TIMESTAMP),
(00003, 'Paul Molive','Berlin',CURRENT_TIMESTAMP),
(00004, 'Gail Forcewind', 'Paris',CURRENT_TIMESTAMP);

/*
Populating invoices
*/

Insert into sales_persons
values
(852399038, 22-08-2018 , 1 , 'ZM8G7BEUQZ97IH46V', 10001,'Pablo Picasso','Paseo de la Chopera, 14','Madrid/Madrid',28045,'Spain','+34 636 17 63 82', NULL, 1, 30001, 'Madrid',CURRENT_TIMESTAMP),
(731166526, 31-12-2018 , 2	, 'RKXVNNIHLVVZOUB4M',20001,'Abraham Lincoln', '120 SW 8th St',	'Miami/Florida',33130,'UnitedStates', '+1 305 907 7086',NULL, 1, 30004, 'Barcelona',CURRENT_TIMESTAMP),
(271135104, 22-01-2019 , 5	, '3K096I98581DHSNUP',30001,'Napoléon Bonaparte','40 Rue du Colisée','Paris/Île-de-France', 75008, 'France', '+33 1 79 75 40 00',NULL, 1, 30005, 'Berlin', CURRENT_TIMESTAMP);


