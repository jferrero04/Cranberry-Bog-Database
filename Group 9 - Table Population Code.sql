-- WARNING: Make sure to view the EER Diagram before populating the tables. You must populate the outer-most tables
-- without any foreign keys dependent on them first, then move inward.
-- 
-- Also, if tables are already populated and you decide to repopulate them, it will create duplicates of the already
-- populated information (if you use the following insert statements).


-- Populating the "Customer" table
insert into customer (firstName, lastName, address, city, county, stateProv, postalCode, country, phone, email)
values
('James', 'Butt', '6649 N Blue Gum St', 'New Orleans', 'Orleans', 'LA', '70116', 'USA', '504-621-8927', 'jbutt@gmail.com'),
('Josephine', 'Darakjy', '4 B Blue Ridge Blvd', 'Brighton', 'Livingston', 'MI', '48116', 'USA', '810-292-9388', 'josephine_darakjy@darakjy.org'),
('Art', 'Venere', '8 W Cerritos Ave #54', 'Bridgeport', 'Gloucester', 'NJ', '08014', 'USA', '856-636-8749', 'art@venere.org'),
('Lenna', 'Paprocki', '639 Main St', 'Anchorage', 'Anchorage', 'AK', '99501', 'USA', '907-385-4412', 'lpaprocki@hotmail.com'),
('Donette', 'Foller', '34 Center St', 'Hamilton', 'Butler', 'OH', '45011', 'USA', '513-570-1893', 'donette.foller@cox.net'),
('Simona', 'Morasca', '3 Mcauley Dr', 'Ashland', 'Ashland', 'OH', '44805', 'USA', '419-503-2484', 'simona@morasca.com'),
('Mitsue', 'Tollner', '7 Eads St', 'Chicago', 'Cook', 'IL', '60632', 'USA', '773-573-6914', 'mitsue_tollner@yahoo.com'),
('Leota', 'Dilliard', '7 W Jackson Blvd', 'San Jose', 'Santa Clara', 'CA', '95111', 'USA', '408-752-3500', 'leota@hotmail.com'),
('Sage', 'Wieser', '5 Boston Ave #88', 'Sioux Falls', 'Minnehaha', 'SD', '57105', 'USA', '605-414-2147', 'sage_wieser@cox.net'),
('Kris', 'Marrier', '228 Runamuck Pl #2808', 'Baltimore', 'Baltimore City', 'MD', '21205', 'USA', '410-655-8723', 'kris.marrier@yahoo.com'),
('Minna', 'Amigon', '2371 Jerrold Ave', 'Kulpsville', 'Montgomery', 'PA', '19443', 'USA', '215-874-1229', 'minna_amigon@yahoo.com'),
('Abel', 'Maclead', '37275 St Rt 17m M', 'Middle Island', 'Suffolk', 'NY', '11953', 'USA', '631-335-3414', 'amaclead@gmail.com'),
('Kiley', 'Caldera', '25 E 75th St #69', 'Los Angeles', 'Los Angeles', 'CA', '90034', 'USA', '310-498-5651', 'kiley.caldera@aol.com'),
('Graciela', 'Ruta', '98 Connecticut Ave Nw', 'Chagrin Falls', 'Geauga', 'OH', '44023', 'USA', '440-780-8425', 'gruta@cox.net'),
('Cammy', 'Albares', '56 E Morehead St', 'Laredo', 'Webb', 'TX', '78045', 'USA', '956-537-6195', 'calbares@gmail.com'),
('Mattie', 'Poquette', '73 State Road 434 E', 'Phoenix', 'Maricopa', 'AZ', '85013', 'USA', '602-277-4385', 'mattie@aol.com'),
('Meaghan', 'Garufi', '69734 E Carrillo St', 'Mc Minnville', 'Warren', 'TN', '37110', 'USA', '931-313-9635', 'meaghan@hotmail.com'),
('Gladys', 'Rim', '322 New Horizon Blvd', 'Milwaukee', 'Milwaukee', 'WI', '53207', 'USA', '414-661-9598', 'gladys.rim@rim.org'),
('Yuki', 'Whobrey', '1 State Route 27', 'Taylor', 'Wayne', 'MI', '48180', 'USA', '313-288-7937', 'yuki_whobrey@aol.com'),
('Fletcher', 'Flosi', '394 Manchester Blvd', 'Rockford', 'Winnebago', 'IL', '61109', 'USA', '815-828-2147', 'fletcher.flosi@yahoo.com');
select * from customer;


-- Populating the "Bog" table
insert into bog (bogName, bogSize, plantDate, bogAge)
values
('Cranberry Cove', 'Small', '2010-11-23', 14),
('Birchroot Basin', 'Medium', '2004-05-03', 20),
('Hemlock Haven', 'Medium', '1996-04-03', 28),
('Amber Acres', 'Large', '2014-04-05', 10);
select * from bog;


-- Populating the "Employee" table
insert into employee (empFirstName, empLastName, empSSN, empHireDate, empEmail, empSkillset)
values
('John', 'Smith', '123-45-6789', '2002-01-15', 'jsmith@gmail.com', 'Harvesting'),
('August', 'Gerald', '987-65-4321', '2000-05-20', 'agerald@gmail.com', 'Pesticide Application'),
('Alex', 'Garcia', '234-56-7890', '1994-12-30', 'agarcia@gmail.com', 'Truck Driving'),
('Allison', 'Maurice', '907-77-4590', '2006-07-18', 'amaurice@gmail.com', 'Harvesting'),
('Pat', 'Wilson', '195-23-1945', '1983-08-09', 'pwilson@gmail.com', 'Truck Driving');
select * from employee;


-- Populating the "Trucks" table
insert into trucks (truckCapacity, truckDriver, mileage, maintenanceDate)
values
('25 tons', 'Sam Rodriguez', 92678, '2023-12-14'),
('25 tons', 'Casey Johnson', 28950, '2023-01-23'),
('21 tons', null, 50469, '2024-12-02'),
('12 tons', null, 18675, '2022-12-05'),
('10 tons', 'Chris Wilson', 90368, '2021-01-24'),
('5 tons', 'Morgan Wilson', 12492, '2024-01-23'),
('7 tons', 'Pat Wilson', 51610, '2022-12-13'),
('6 tons', null, 31337, '2023-12-29'),
('10 tons', 'Alex Garcia', 58602, '2024-12-22'),
('25 tons', null, 80376, '2021-01-11');
select * from trucks;


-- Populating the "Sales" table
insert into sales (saleDate, amount, quantity, unitPrice, Customer_custID)
values
('2021-01-06', 25000, 25000, 1, 1),
('2021-09-26', 100000, 100000, 1, 2),
('2021-11-20', 20000, 20000, 1, 3),
('2021-12-15', 50000, 100000, 1, 4),
('2022-01-17', 48000, 48000, 1, 5),
('2022-01-21', 60000, 60000, 1, 6),
('2022-09-29', 10000, 10000, 1, 7),
('2022-10-30', 38000, 76000, 1, 8),
('2022-12-08', 70000, 140000, 1, 9),
('2023-01-13', 60000, 60000, 1, 11),
('2023-09-24', 90000, 90000, 1, 11),
('2023-09-14', 72000, 72000, 1, 12),
('2023-11-11', 87000, 174000, 1, 12),
('2023-12-07', 55500, 37000, 2, 12),
('2024-01-19', 112000, 112000, 1, 15),
('2024-01-21', 49000, 98000, 1, 16),
('2024-09-23', 72000, 72000, 1, 17),
('2024-10-18', 100000, 100000, 1, 18),
('2024-10-25', 67000, 67000, 1, 19),
('2024-11-16', 89000, 89000, 1, 20);
select * from sales;


-- Populating the "Harvest" table
insert into harvest (harvestDate, expectedCrop, numberOfBarrels, laborHours, actualCrop, Bog_BogID, Trucks_truckID, Sales_salesID)
values
('2021-10-19', 'Vaccinium oxycocos', 19, 2, 'Cranberry', 4, 6, 3),
('2022-11-18', 'Vaccinium oxycocos', 56, 7, 'Cranberry', 3, 4, 9),
('2023-10-30', 'Vaccinium oxycocos', 38, 3, 'Cranberry', 3, 7, 13),
('2021-10-13', 'Vaccinium oxycocos', 90, 15, 'Cranberry', 2, 10, 3),
('2021-10-31', 'Vaccinium oxycocos', 75, 11, 'Cranberry', 1, 10, 3);
select * from harvest;


-- Populating the "harvest_has_employees" table
insert into harvest_has_employees (Employee_empID, Harvest_harvestID)
values
(2, 1), (5, 1), (2, 2), (3, 2), (4, 2), (1, 4), (4, 4), (5, 4), (1, 5), (4, 5);
select * from harvest_has_employees;


-- Populating the "Equipment" table
insert into equipment (equipName, equipmentCondition, equipmentAvailability)
values
('Water Reel', 'Good', 'Available'),
('Dry Harvester', 'Good', 'Available'),
('Rakes', 'Poor', 'Available'),
('Water Pumps', 'Excellent', 'Available');
select * from equipment;


-- Populating the "Pesticides" table
insert into pesticides (pesticideName, pesticideUsage)
values
('Diazinon', 'Used to control insects such as cranberry fruitworms and girdler larvae'),
('Chlorothalonil', 'A fungicide used to control diseases like fruit rot and leaf spot'),
('Mancozeb', 'A fungicide used to control diseases such as fruit rot and leaf spot'),
('Malathion', 'Effective against a wide range of insects, including cranberry fruitworms and spanworms');
select * from pesticides;
 
 
-- Populating the "bog_has_pesticides" table
insert into bog_has_pesticides (Bog_BogID, Pesticides_pesticideID)
values
(1, 1), (3, 1), (4, 1), (1, 2), (2, 2), (4, 2), (1, 3), (2, 3), (4, 3), (2, 4), (3, 4);
select * from bog_has_pesticides;


-- Populating the "emp_has_equipment" table
insert into emp_has_equipment (Equipment_equipmentID, Employee_empID)
values
(1, 1), (3, 1), (4, 1), (1, 2), (2, 2), (4, 2), (1, 3), (2, 3), (4, 3), (2, 4), (3, 4), (1, 5), (2, 5), (3, 5), (4, 5);
select * from emp_has_equipment;