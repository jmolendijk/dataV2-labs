use lab_sql;

INSERT INTO cars
VALUES
(car_ID, '3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', '2019', 'Blue'),
(car_ID, 'ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', '2019', 'Red'),
(car_ID, 'RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', '2018', 'White'),
(car_ID, 'HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', '2018', 'Silver'),
(car_ID, 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60', '2019', 'Gray'),
(car_ID, 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60 Cross Country', '2019', 'Gray');

select * from customers;

INSERT INTO customers
VALUES
(cus_ID, '10001', 'Pablo Picasso', '+34 636 17 63 82', null, 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', '28045'),
(cus_ID, '20001', 'Abraham Lincoln', '+1 305 907 7086', null, '120 SW 8th St', 'Miami', 'Florida', 'United States', '33130'),
(cus_ID, '30001', 'Napoléon Bonaparte', '+33 1 79 75 40 00', null, '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', '75008');

INSERT INTO salesperson
VALUES
(sp_ID, '0001', 'Petey Cruiser', 'Madrid'),
(sp_ID, '0002', 'Anna Sthesia', 'Barcelona'),
(sp_ID, '0003', 'Paul Molive', 'Berlin'),
(sp_ID, '0004', 'Gail Forcewind', 'Paris'),
(sp_ID, '0005', 'Paige Turner', 'Mimia'),
(sp_ID, '0006', 'Bob Frapples', 'Mexico City'),
(sp_ID, '0007', 'Walter Melon', 'Amsterdam'),
(sp_ID, '0008', 'Shonda Leer', 'São Paulo');


insert into invoices
values
(inv_ID, '852399038', str_to_date('22-08-2018', '%d-%m-%Y'), '0', '1', '3'),
(inv_ID, '731166526', str_to_date('31-12-2018', '%d-%m-%Y'), '3', '0', '5'),
(inv_ID, '271135104', str_to_date('22-01-2019', '%d-%m-%Y'), '2', '2', '7');
