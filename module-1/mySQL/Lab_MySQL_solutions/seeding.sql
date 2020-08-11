-- Seeding the Database



-- Seeding into Cars
INSERT INTO lab_mysql.cars
VALUES (vehicle_id=1, manufacturer="Wayne Enterprises", model="Batmobile", build_year=1939, color="black", used_new="new", store_id=0001);

INSERT INTO lab_mysql.cars
VALUES (vehicle_id=2, manufacturer='Stark Industries', model='Stark Car', build_year=1963, color='red', used_new='new', store_id=0002);

INSERT INTO lab_mysql.cars
VALUES (vehicle_id=3, manufacturer='Asgards Automobile', model='Thunderstorm', build_year=1032, color='blue', used_new='new', store_id=0003);




-- Seeding into Customers
INSERT INTO lab_mysql.customers
VALUES (customers_id=1, f_name='Wayne', l_name='Bruce', phone=34636176382, email='brucewayne@gmail.com', addres='Wayne Tower First Street', city='Gotham City', state_province='New York', country='United States', zip=28045);

INSERT INTO lab_mysql.customers
VALUES (customers_id=2, f_name='Tony', l_name='Stark', phone=13059077086, email='tonystark@hotmail.com', addres='Star Tower Second Street', city='New York', state_province='New York', country='United States', zip=33130);

INSERT INTO lab_mysql.customers
VALUES (customers_id=3, f_name='Thor', l_name='Odinson', phone=33179754000, email='thorodinson@gmail.com', addres='Asgard First Street', city='Asgard', state_province='Space', country='Space', zip=75008);



-- Seeding into Salespersons
INSERT INTO lab_mysql.salespersons
VALUES (staff_id=1, f_name='Petey', l_name='Cruiser', phone=34636176382, email='peteycruiser@gmail.com', store_id=0001);
 
INSERT INTO lab_mysql.salespersons
VALUES (staff_id=2, f_name='Anna', l_name='Sthesia', phone=13059077086, email='annasthesia@gmail.com', store_id=0002);

INSERT INTO lab_mysql.salespersons
VALUES (staff_id=3, f_name='Paul', l_name='Molive', phone=33179754000, email='paulmolive@gmail.com', store_id=0003);



-- Seeding into Invoices
INSERT INTO lab_mysql.invoices
VALUES (invoice_number=1, invoice_date=2020-08-01, car='Batmobile', customer_id=0001, staff_id=0001, store_id=0001, price=40,000, currency='DOL', payment_status=1);

INSERT INTO lab_mysql.invoices
VALUES (invoice_number=2, invoice_date=2020-08-02, car='Stark Car', customer_id=0002, staff_id=0002, store_id=0002, price=100,000, currency='DOL', payment_status=1);

INSERT INTO lab_mysql.invoices
VALUES (invoice_number=3, invoice_date=2020-08-03, car='Thunderstorm', customer_id=0003, staff_id=0003, store_id=0003, price=200,000, currency='EUR', payment_status=1);