-- Chalenge 3: 
# I've to make a recuperation because I have overwritten my file 

INSERT cars
VALUES 
(1,'nomg6pt9la4au3blk', '7', 'BMW', '2020', 'Black', 'Petrol', '102303', '498'), 
(2, 'ji1wnsy76g7d6kxx5', '530', 'Xdrive', 'BMW', '2018', 'Red', 'Petrol', '50000', '250'),
(3, '2s391j5a9c34i4ni7', '420 Xdrive', 'BMW', '2019', 'Blue', 'Gasoil', '10000', '50'),
(4,'92rswe8a8i1mxx8ub', 'Phantom', 'Rolls Royce', '2006', 'Black', 'Petrol', '250001','500'),
(5, 'v1u67r2cbufp4czrk', 'Ka' ,'Ford', '2004', 'Pink', 'Elek.', '4679', '70'),
(6, 'pwjiwkciqrltfyruy', 'Bravo', 'Fiat', '2018', 'Yellow', 'Petrol', '3400.45', '125')

INSERT cars
VALUES
(7, 'pwjiwkciqrltfyber', 'kapotte', 'database', '2020', 'Black', 'Elek', '50000', '33')

#I have put one extra Value for checking my syntax. 

INSERT clients
VALUES 
(1, 'Woepsie', 'doepsie','2020-01-12', 'male', 'woepsie@doepsie.be', 'Australia', '8900', NULL, '472431212', '0', NULL, 'Baby'),
(2, 'Karel', 'De Grote', '1989-01-12', 'male', 'klant2@garage.be', 'Australia', '9090', NULL, '472466212', '0', 'yes', 'CEO'),
(3, 'Jan', 'De Kleine', '1977-04-24', 'male', 'klant3@garage.be', 'USA', '1000', 'Ankersteenweg', '45', '422431212', '0', NULL, 'CFO'),
(4, 'Piet', 'De Lange', '2001-12-12', 'male', 'klant4@garage.be', 'Belgium', '2000', NULL, '444431212', '0', NULL, 'retired'),
(5	'Cornelis', 'De Smalle', '2002-01-13', 'female', 'klant5@garage.be', 'Luxemburg', '8000', NULL, '472435512', '0', 'no', 'dopper')

# Again one additional test

INSERT clients
VALUES 
(6, 'Mossel', 'Mannetje', '1890-04-09', 'female', 'mosselman@jandingen.be', 'Nederland', '8700', 'Mosselbankje', '472435512', '15', 'Yes', 'GL-Account')


INSERT invoice
VALUES 
(1, '2', NULL, '2', '3', '21 %', '50', NULL, '2020-12-22'), 
(2, '1', NULL, '2', '1', '21 %', '500', NULL, '2009-12-22'), 
(3, '3', NULL, '2', '2', '0 %', '789', NULL, '1989-10-28'), 
(4, '2', '2', '2', '3', '11 %', '50', 'ji1wnsy76g7d6kxx5', '1998-06-08'), 
(5, NULL, '1', '3', '3', '21 %', '789.89', NULL, '2008-08-08')


# Again one additional test

INSERT invoice
VALUES 
(6, '7', NULL, '6', '1', '35 %', '69', NULL, '1980-12-12')


INSERT parts 
VALUES
(1, 'MV3', '2', '45', '1456', '56'),
(2, 'MV4', '1', '30', '900', '50')

# Again one additional test

INSERT parts 
VALUES
(3, 'oliefilter', '4', '100', '23', '200')



INSERT sales 
VALUES 
(1, 'Tom', 'Maat', 'Male', NULL, 'Netherlands', 'CEO', '472345678', '1989-10-24'),
(2, 'Kaat', 'Mossel', 'Female', NULL, 'Netherlands', 'CFO', '472345638', '1970-11-24'),
(3, 'Suzanne', 'Van der Steen', 'Female', NULL, 'Belgium	CCO', '472345679', '1989-03-25'), 
(4, 'Peter', 'Celie', 'Male', NULL, 'Canada', 'Salesmanager', '456345678', '1944-08-24'), 
(5, 'Bo', 'ter Ham', 'Male', NULL, 'USA', 'Reception', '499345678', '2000-02-27'), 
(6, 'Beert', 'debeer', 'Female', 'mossels@vanmossel', 'Netherlands', 'CFO', '472345638', '1998-11-24')


# Again one additional test

INSERT sales 
VALUES
(7, 'Olie', 'Bol', 'Female', NULL, 'Spain', 'Debugger', '499345448', '1976-10-27')


INSERT suppliers 
VALUES 
(1, 'Schroeven', '456789987', '444224312', 'schroeven@schroeven', NULL, NULL), 
(2, 'Remschijven', NULL, '884224312', 'remschijfje@atelier.be', '3456', 'slippertje 13'),
(3, 'Banden', NULL, '994224312', 'banden@atelier.be', '9898', 'bandencoté 44'),
(4, 'Den Atelier', NULL, '324224312', 'atelier@atelier.be', NULL, 'ZESWEGENDERTIG')


# Again one additional test

INSERT suppliers
VALUES 
(5, 'OLIEBARON', NULL, '884224654', 'olibaron.be', '2456', 'OLIESTAAT 13')



-- CHALLENGE 4: 

#Because I've used different names than on the Challenge I gonna change something different. 
#The first name of the client Woepsie Doepsie is wrong. The correct first name is Bert 

UPDATE clients 
SET f_name_c = 'Bert'
WHERE l_name_c = 'doepsie'


#Adding the e-mail adres of 3 salespeople
-- Tom = tompie@gmail.com
-- Kaat = kaatje@gmail.com
-- Suzanne = suzanne@gmail.com

UPDATE sales
SET email_s = 'tompie@gmail.com'
WHERE f_name_s = 'Tom'

UPDATE sales
SET email_s = 'kaatje@gmail.com'
WHERE f_name_s = 'Kaat'

UPDATE sales
SET email_s = 'suzanne@gmail.com'
WHERE f_name_s = 'Suzanne'

# Delete statement I've not excecuted but is like the following: 

-- DELETE FROM cars WHERE car_id = 6 
-- This removes the row 'Fiat Bravo' 