insert into cars (VIN, Manufacturer, Model, Colors, Customer_ID)
values
	('3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 'Blue', NULL),
    
	('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 'Red', NULL),
    
    ('RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 'White', NULL),
    
    ('HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 'Silver', NULL),
    
    ('DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 'Gray', NULL),
    
    ('DAM41UDN3CHU2WVF7', 'Volvo', 'V60_Cross_Country', 'Gray', NULL);
    
insert into customers (customer_ID, name_customer, Phone_number, Email, address, City, State_Province, Country, Postal, VIN, Staff_ID)
values
	('10001', 'Pablo Picasso', '+34 636 17 63 82', '-', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', '28045', NULL, NULL),
	('20001', 'Abraham Lincoln', '+1 305 907 7086',	'-', '120 SW 8th', 'St Miami', 'Florida', 'United States', '33130', NULL, NULL),
	('30001', 'Napoléon Bonaparte', '+33 1 79 75 40 00', '-', '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', '75008', NULL, NULL);
    
insert into invoices (Invoice_number, Date_of_sale,	Car, Customer, Staff_ID, VIN)
values
	('852399038', '22-08-2018', '0', '1', '3', NULL),
	('731166526', '31-12-2018', '3', '0', '5', NULL),
	('271135104', '22-01-2019', '2', '2', '7', NULL);
    
insert into salesperson (Staff_ID, Name_staff, Store, Customer_ID, Invoice_number)
values
	('00001', 'Petey Cruiser', 'Madrid', NULL, NULL),
	('00002', 'Anna Sthesia', 'Barcelona', NULL, NULL),
	('00003', 'Paul Molive', 'Berlin', NULL, NULL),
	('00004', 'Gail Forcewind', 'Paris', NULL, NULL),
	('00005', 'Paige Turner', 'Mimia', NULL, NULL),
	('00006', 'Bob Frapples', 'Mexico City', NULL, NULL),
	('00007', 'Walter Melon', 'Amsterdam', NULL, NULL),
	('00008', 'Shonda Leer', 'São Paulo', NULL, NULL);


