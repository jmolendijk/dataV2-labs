INSERT INTO lab_mysql.cars
VALUES (0, '3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 'SE', 2019, 'Blue', 'crossover'),
       (1, 'ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', '4x4 Concept', 2019, 'Red', 'minivan'),
       (2, 'RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', NULL, 2018, 'White', 'mini');
       

INSERT INTO lab_mysql.customers
VALUES (0, 10001, 'Pablo Picasso', '+34 636 17 63 82', 'picasso@gmail.com', 'Paseo de la Chopera 14', 'Madrid', 'Madrid', 'Spain', 28045),
       (1, 20001, 'Abraham Lincoln', '+1 305 907 7086',	'lincoln@gmail.com', '120 SW 8th St', 'Miami', 'Florida', 'United States', 33130);
       

INSERT INTO lab_mysql.salespersons
VALUES (0, '00001', 'Petey Cruiser', '2016-07-14', 'Madrid', 'Spain', 'Europe');


INSERT INTO lab_mysql.invoices
VALUES (0, '852399038', '2018-08-22', '2018-09-22', 'not payed', 0, 1, 0);