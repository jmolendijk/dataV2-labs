use lab_mysql;

-- CARS TABLE --
CREATE TABLE `lab_mysql`.`cars` (
  `carsID` int NOT NULL,
  `VIN` varchar(20) NOT NULL,
  `Manufacturer` varchar(30) NOT NULL,
  `Model` varchar(30) NOT NULL,
  `Year` int(4) NOT NULL,
  `Color` varchar(30) DEFAULT NULL,
  `Engine` varchar(30) DEFAULT NULL,
  `Transmission` varchar(30) DEFAULT NULL,
  `Price` decimal(10) DEFAULT NULL,
  PRIMARY KEY (`VIN`)
  );
  
-- CUSTOMERS TABLE --
CREATE TABLE `lab_mysql`.`customers` (
  `customersID` int NOT NULL,
  `Customer_number` varchar(10) NOT NULL,
  `Last_Name` varchar(30) NOT NULL,
  `First_Name` varchar(30) NOT NULL,
  `Phone` varchar(15) NOT NULL,
  `Email` varchar(30) DEFAULT NULL,
  `Address` varchar(50) DEFAULT NULL,
  `City` varchar(30) DEFAULT NULL,
  `Zip` varchar(10) DEFAULT NULL,
  `State` varchar(30) DEFAULT NULL,
  `Country` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`Customer_number`)
  );
  
-- SALESPERSONS TABLE --
CREATE TABLE `lab_mysql`.`salespersons` (
  `spID` int NOT NULL,
  `Staff_ID` varchar(10) NOT NULL,
  `Last_Name` varchar(30) NOT NULL,
  `First_Name` varchar(30) NOT NULL,
  `Position` varchar(30) DEFAULT NULL,
  `Contract` varchar(30) NOT NULL,
  `Store` varchar(30) DEFAULT NULL,
  `Start_Date` date DEFAULT NULL,
  PRIMARY KEY (`Staff_ID`)
  );
  
-- INVOICES TABLE --
CREATE TABLE `lab_mysql`.`invoices` (
  `invoiceID` INT NOT NULL,
  `Invoice_number` VARCHAR(10) NOT NULL,
  `VIN` VARCHAR(20) NOT NULL,
  `Customer_number` VARCHAR(10) NOT NULL,
  `Staff_ID` VARCHAR(10) NOT NULL,
  `Date_of_Sale` VARCHAR(30) NOT NULL,
  `Payment_Type` VARCHAR(30) NOT NULL,
  `Discount` DECIMAL(10),
  `Total_Price` DECIMAL(10),
  PRIMARY KEY (`Invoice_number`)
  );
  
  