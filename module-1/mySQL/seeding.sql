--Challenge 3 - Seeding the Database

insert into cars 
Values 
(0, 'ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', '2019-07-25', 'Red'),
(0, 'RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', '2018-03-02', 'White'),
(0, 'HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', '2018-05-12', 'Silver'),
(0, 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60', '2019-01-03', 'Gray'),
(0, 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60 Cross Country', '2019-12-25', 'Gray');

insert into customers Values
(0, 10001, 'Pablo Picasso', '+34 636 17 63 82','','Paseo de la Chopera, 14', 'Madrid', 'Madrid','Spain', '28045'),
(0, 20001, 'Abraham Lincoln', '+1 305 907 7086','','120 SW 8th St', 'Miami', 'Florida','United States', '33130'),
(0, 30001, 'Napoléon Bonaparte', '+33 1 79 75 40 00','','40 Rue du Colisée', 'Paris', 'Île-de-France','France', '75008');

insert into sales_person 
Values
(0, 00001, 'Petey Cruiser', 'Madrid'),
(0, 00002, 'Anna Sthesia', 'Barcelona'),
(0, 00003, 'Paul Molive', 'Berlin'),
(0, 00004, 'Gail Forcewind', 'Paris'),
(0, 00005, 'Paige Turner', 'Mimia'),
(0, 00006, 'Bob Frapples', 'Mexico City'),
(0, 00007, 'Walter Melon', 'Amsterdam'),
(0, 00008, 'Shonda Leer', 'São Paulo');

insert into invoices 
Values
(0, 852399038, '2018-08-22', 1, 1, 3),
(0, 731166526, '2018-12-31', 3, 1, 5),
(0, 271135104, '2019-01-22', 2, 2, 7);
