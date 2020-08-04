INSERT INTO `lab_mysql`.`cars` (`VIN`, `Manufacturer`, `Model`, `Year`, `Color`, `Engine`, `Transmission`, `Price`) 
VALUES ('3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', '2019', 'Blue', 'Diesel', 'Automatic', '15990'),
('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', '2019', 'Red', 'Diesel', 'Manual', '11490'),
('RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', '2018', 'White', 'Petrol', 'Automatic', '13299'),
('HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', '2018', 'Silver', 'Hybrid', 'Automatic', '21990'),
('DAM41UDN3CHU2WVF6', 'Volvo', 'V60', '2019', 'Gray', 'Diesel', 'Manual', '15990'),
('DAM41UDN3CHU2WVF6', 'Volvo', 'V60 Cross Country', '2019', 'Gray', 'Diesel', 'Sport', '19990');

INSERT INTO `lab_mysql`.`customers` (
`Customer_number`, `Last_Name`, `First_Name`, `Phone`, `Email`, `Address`, `City`, `Zip`, `State`, `Country`)
VALUES ('10001', 'Picasso', 'Pablo', '+34636176382', NULL, 'Paseo de la Chopera, 14', 'Madrid', '28045', 'Madrid', 'Spain'),
('20001', 'Lincoln', 'Abraham ', '+13059077086', NULL, '120 SW 8th St', 'Miami', '33130', 'Florida', 'United States'),
('30001', 'Bonaparte', 'Napoléon ', '+33179754000', NULL, '40 Rue du Colisée', 'Paris', '75008', 'Île-de-France', 'France');

INSERT INTO `lab_mysql`.`salespersons` (`Staff_ID`, `Last_Name`, `First_Name`, `Position`, `Contract`, `Store`, `Start_Date`)
VALUES ('00001', 'Petey', 'Cruiser', 'Manager', 'Full Time', 'Madrid', '1994-08-31'),
('00002', 'Anna', 'Sthesia', 'Employee', 'Part Time', 'Barcelona', '2016-06-26'),
('00003', 'Paul', 'Molive', 'Assistant Manager', 'Full Time', 'Berlin', '2011-07-08'),
('00004', 'Gail', 'Forcewind', 'Director', 'Full Time', 'Paris', '1996-11-19'),
('00005', 'Paige', 'Turner', 'Employee', 'Full Time', 'Miami', '2015-08-03'),
('00006', 'Bob', 'Frapples', 'Trainee', 'Short Term', 'Mexico City', '2020-05-01'),
('00007', 'Walter', 'Melon', 'Apprentice Salesperson', 'Apprenticeship', 'Amsterdam', '2019-09-01'),
('00008', 'Shonda', 'Leer', 'Director', 'Full Time', 'São Paulo', '2014-08-23');

INSERT INTO `lab_mysql`.`invoices` 
(`Invoice_number`, `VIN`, `Customer_number`, `Staff_ID`, `Date_of_Sale`, `Payment_Type`, `Discount`, `Total_Price`)
VALUES ('852399038','0', '1', '3', '2018-08-22', 'Credit Card', NULL, NULL),
('731166526','3', '0', '5', '2018-12-31', 'Instalment', '5', NULL),
('271135104','2', '2', '7', '2019-01-22', 'Direct Debit', '3', NULL);