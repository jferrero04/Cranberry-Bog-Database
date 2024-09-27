-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: group9-cranberrybogdb
-- ------------------------------------------------------
-- Server version	8.0.36

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bog`
--

DROP TABLE IF EXISTS `bog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bog` (
  `bogID` int NOT NULL AUTO_INCREMENT,
  `bogName` varchar(45) NOT NULL,
  `bogSize` varchar(45) NOT NULL,
  `plantDate` date NOT NULL,
  `bogAge` int NOT NULL COMMENT 'bog age in years.',
  PRIMARY KEY (`bogID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bog`
--

LOCK TABLES `bog` WRITE;
/*!40000 ALTER TABLE `bog` DISABLE KEYS */;
INSERT INTO `bog` VALUES (1,'Cranberry Cove','Small','2010-11-23',14),(2,'Birchroot Basin','Medium','2004-05-03',20),(3,'Hemlock Haven','Medium','1996-04-03',28),(4,'Amber Acres','Large','2014-04-05',10);
/*!40000 ALTER TABLE `bog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bog_has_pesticides`
--

DROP TABLE IF EXISTS `bog_has_pesticides`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bog_has_pesticides` (
  `Bog_BogID` int NOT NULL,
  `Pesticides_pesticideID` int NOT NULL,
  PRIMARY KEY (`Bog_BogID`,`Pesticides_pesticideID`),
  KEY `fk_Bog_has_Pesticides_Pesticides1_idx` (`Pesticides_pesticideID`),
  KEY `fk_Bog_has_Pesticides_Bog1_idx` (`Bog_BogID`),
  CONSTRAINT `fk_Bog_has_Pesticides_Bog1` FOREIGN KEY (`Bog_BogID`) REFERENCES `bog` (`bogID`),
  CONSTRAINT `fk_Bog_has_Pesticides_Pesticides1` FOREIGN KEY (`Pesticides_pesticideID`) REFERENCES `pesticides` (`pesticideID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bog_has_pesticides`
--

LOCK TABLES `bog_has_pesticides` WRITE;
/*!40000 ALTER TABLE `bog_has_pesticides` DISABLE KEYS */;
INSERT INTO `bog_has_pesticides` VALUES (1,1),(3,1),(4,1),(1,2),(2,2),(4,2),(1,3),(2,3),(4,3),(2,4),(3,4);
/*!40000 ALTER TABLE `bog_has_pesticides` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `custID` int NOT NULL AUTO_INCREMENT,
  `firstName` varchar(45) NOT NULL,
  `lastName` varchar(45) NOT NULL,
  `address` varchar(100) NOT NULL,
  `city` varchar(45) NOT NULL,
  `county` varchar(45) NOT NULL,
  `stateProv` char(2) NOT NULL,
  `postalCode` varchar(6) NOT NULL,
  `country` varchar(10) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(45) NOT NULL,
  PRIMARY KEY (`custID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'James','Butt','6649 N Blue Gum St','New Orleans','Orleans','LA','70116','USA','504-621-8927','jbutt@gmail.com'),(2,'Josephine','Darakjy','4 B Blue Ridge Blvd','Brighton','Livingston','MI','48116','USA','810-292-9388','josephine_darakjy@darakjy.org'),(3,'Art','Venere','8 W Cerritos Ave #54','Bridgeport','Gloucester','NJ','08014','USA','856-636-8749','art@venere.org'),(4,'Lenna','Paprocki','639 Main St','Anchorage','Anchorage','AK','99501','USA','907-385-4412','lpaprocki@hotmail.com'),(5,'Donette','Foller','34 Center St','Hamilton','Butler','OH','45011','USA','513-570-1893','donette.foller@cox.net'),(6,'Simona','Morasca','3 Mcauley Dr','Ashland','Ashland','OH','44805','USA','419-503-2484','simona@morasca.com'),(7,'Mitsue','Tollner','7 Eads St','Chicago','Cook','IL','60632','USA','773-573-6914','mitsue_tollner@yahoo.com'),(8,'Leota','Dilliard','7 W Jackson Blvd','San Jose','Santa Clara','CA','95111','USA','408-752-3500','leota@hotmail.com'),(9,'Sage','Wieser','5 Boston Ave #88','Sioux Falls','Minnehaha','SD','57105','USA','605-414-2147','sage_wieser@cox.net'),(10,'Kris','Marrier','228 Runamuck Pl #2808','Baltimore','Baltimore City','MD','21224','USA','410-655-8723','kris@gmail.com'),(11,'Minna','Amigon','2371 Jerrold Ave','Kulpsville','Montgomery','PA','19443','USA','215-874-1229','minna_amigon@yahoo.com'),(12,'Abel','Maclead','37275 St  Rt 17m M','Middle Island','Suffolk','NY','11953','USA','631-335-3414','amaclead@gmail.com'),(13,'Kiley','Caldarera','25 E 75th St #69','Los Angeles','Los Angeles','CA','90034','USA','310-498-5651','kiley.caldarera@aol.com'),(14,'Graciela','Ruta','98 Connecticut Ave Nw','Chagrin Falls','Geauga','OH','44023','USA','440-780-8425','gruta@cox.net'),(15,'Cammy','Albares','56 E Morehead St','Laredo','Webb','TX','78045','USA','956-537-6195','calbares@gmail.com'),(16,'Mattie','Poquette','73 State Road 434 E','Phoenix','Maricopa','AZ','85013','USA','602-277-4385','mattie@aol.com'),(17,'Meaghan','Garufi','69734 E Carrillo St','Mc Minnville','Warren','TN','37110','USA','931-313-9635','meaghan@hotmail.com'),(18,'Gladys','Rim','322 New Horizon Blvd','Milwaukee','Milwaukee','WI','53207','USA','414-661-9598','gladys.rim@rim.org'),(19,'Yuki','Whobrey','1 State Route 27','Taylor','Wayne','MI','48180','USA','313-288-7937','yuki_whobrey@aol.com'),(20,'Fletcher','Flosi','394 Manchester Blvd','Rockford','Winnebago','IL','61109','USA','815-828-2147','fletcher.flosi@yahoo.com');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emp_has_equipment`
--

DROP TABLE IF EXISTS `emp_has_equipment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emp_has_equipment` (
  `Equipment_equipmentID` int NOT NULL,
  `Employee_empID` int NOT NULL,
  PRIMARY KEY (`Equipment_equipmentID`,`Employee_empID`),
  KEY `fk_Equipment_has_Employee_Employee1_idx` (`Employee_empID`),
  KEY `fk_Equipment_has_Employee_Equipment1_idx` (`Equipment_equipmentID`),
  CONSTRAINT `fk_Equipment_has_Employee_Employee1` FOREIGN KEY (`Employee_empID`) REFERENCES `employee` (`empID`),
  CONSTRAINT `fk_Equipment_has_Employee_Equipment1` FOREIGN KEY (`Equipment_equipmentID`) REFERENCES `equipment` (`equipmentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp_has_equipment`
--

LOCK TABLES `emp_has_equipment` WRITE;
/*!40000 ALTER TABLE `emp_has_equipment` DISABLE KEYS */;
INSERT INTO `emp_has_equipment` VALUES (1,1),(3,1),(4,1),(1,2),(2,2),(4,2),(1,3),(2,3),(4,3),(2,4),(3,4),(1,5),(2,5),(3,5),(4,5);
/*!40000 ALTER TABLE `emp_has_equipment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `empID` int NOT NULL AUTO_INCREMENT,
  `empFirstName` varchar(45) NOT NULL,
  `empLastName` varchar(45) NOT NULL,
  `empSSN` varchar(11) NOT NULL,
  `empHireDate` date NOT NULL,
  `empEmail` varchar(45) NOT NULL,
  `empSkillset` varchar(100) NOT NULL,
  PRIMARY KEY (`empID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'John','Smith','123-45-6789','2002-01-15','jsmith@gmail.com','Harvesting'),(2,'August','Gerald','987-65-4321','2000-05-20','agerald@gmail.com','Pesticide Application'),(3,'Alex','Garcia','234-56-7890','1994-12-30','agarcia@gmail.com','Truck Driving'),(4,'Allison','Maurice','907-77-4590','2006-07-18','amaurice@gmail.com','Harvesting'),(5,'Pat','Wilson','195-23-1945','1983-08-09','pwilson@gmail.com','Truck Driving');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipment`
--

DROP TABLE IF EXISTS `equipment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `equipment` (
  `equipmentID` int NOT NULL AUTO_INCREMENT,
  `equipName` varchar(45) NOT NULL,
  `equipmentCondition` varchar(100) NOT NULL,
  `equipmentAvailability` varchar(45) NOT NULL,
  PRIMARY KEY (`equipmentID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipment`
--

LOCK TABLES `equipment` WRITE;
/*!40000 ALTER TABLE `equipment` DISABLE KEYS */;
INSERT INTO `equipment` VALUES (1,'Water Reel','Good','Available'),(2,'Dry Harvester','Good','Available'),(3,'Rakes','Poor','Available'),(4,'Water Pumps','Excellent','Available');
/*!40000 ALTER TABLE `equipment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `harvest`
--

DROP TABLE IF EXISTS `harvest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `harvest` (
  `harvestID` int NOT NULL AUTO_INCREMENT,
  `harvestDate` varchar(45) NOT NULL,
  `expectedCrop` varchar(45) NOT NULL,
  `numberOfBarrels` int NOT NULL,
  `laborHours` int NOT NULL COMMENT 'how many hours it takes per harvest.',
  `actualCrop` varchar(45) DEFAULT NULL,
  `Bog_BogID` int NOT NULL,
  `Trucks_truckID` int NOT NULL,
  `Sales_salesID` int NOT NULL,
  PRIMARY KEY (`harvestID`),
  KEY `fk_Harvest_Bog_idx` (`Bog_BogID`),
  KEY `fk_Harvest_Trucks1_idx` (`Trucks_truckID`),
  KEY `fk_Harvest_Sales1_idx` (`Sales_salesID`),
  CONSTRAINT `fk_Harvest_Bog` FOREIGN KEY (`Bog_BogID`) REFERENCES `bog` (`bogID`),
  CONSTRAINT `fk_Harvest_Sales1` FOREIGN KEY (`Sales_salesID`) REFERENCES `sales` (`salesID`),
  CONSTRAINT `fk_Harvest_Trucks1` FOREIGN KEY (`Trucks_truckID`) REFERENCES `trucks` (`truckID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `harvest`
--

LOCK TABLES `harvest` WRITE;
/*!40000 ALTER TABLE `harvest` DISABLE KEYS */;
INSERT INTO `harvest` VALUES (1,'2021-10-19','Vaccinium oxycoccos',19,2,'Cranberry',4,6,3),(2,'2022-11-18','Vaccinium oxycoccos',56,7,'Cranberry',3,4,9),(3,'2023-10-30','Vaccinium oxycoccos',38,3,'Cranberry',3,7,13),(4,'2021-10-13','Vaccinium oxycoccos',90,15,'Cranberry',2,10,3),(5,'2021-10-31','Vaccinium oxycoccos',75,11,'Cranberry',1,10,3);
/*!40000 ALTER TABLE `harvest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `harvest_has_employees`
--

DROP TABLE IF EXISTS `harvest_has_employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `harvest_has_employees` (
  `Employee_empID` int NOT NULL,
  `Harvest_harvestID` int NOT NULL,
  PRIMARY KEY (`Employee_empID`,`Harvest_harvestID`),
  KEY `fk_Employee_has_Harvest_Harvest1_idx` (`Harvest_harvestID`),
  KEY `fk_Employee_has_Harvest_Employee1_idx` (`Employee_empID`),
  CONSTRAINT `fk_Employee_has_Harvest_Employee1` FOREIGN KEY (`Employee_empID`) REFERENCES `employee` (`empID`),
  CONSTRAINT `fk_Employee_has_Harvest_Harvest1` FOREIGN KEY (`Harvest_harvestID`) REFERENCES `harvest` (`harvestID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `harvest_has_employees`
--

LOCK TABLES `harvest_has_employees` WRITE;
/*!40000 ALTER TABLE `harvest_has_employees` DISABLE KEYS */;
INSERT INTO `harvest_has_employees` VALUES (2,1),(5,1),(2,2),(3,2),(4,2),(1,4),(4,4),(5,4),(1,5),(4,5);
/*!40000 ALTER TABLE `harvest_has_employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pesticides`
--

DROP TABLE IF EXISTS `pesticides`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pesticides` (
  `pesticideID` int NOT NULL AUTO_INCREMENT,
  `pesticideName` varchar(45) NOT NULL,
  `pesticideUsage` varchar(100) NOT NULL,
  PRIMARY KEY (`pesticideID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pesticides`
--

LOCK TABLES `pesticides` WRITE;
/*!40000 ALTER TABLE `pesticides` DISABLE KEYS */;
INSERT INTO `pesticides` VALUES (1,'Diazinon','Used to control insects such as cranberry fruitworms and girdler larvae'),(2,'Chlorothalonil','A fungicide used to control diseases like fruit rot and leaf spot'),(3,'Mancozeb','A fungicide used to control diseases such as fruit rot and leaf spot'),(4,'Malathion','Effective against a wide range of insects, including cranberry fruitworms and spanworms');
/*!40000 ALTER TABLE `pesticides` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales` (
  `salesID` int NOT NULL AUTO_INCREMENT,
  `saleDate` date DEFAULT NULL,
  `amount` decimal(10,0) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `unitPrice` decimal(10,0) DEFAULT NULL,
  `Customer_custID` int DEFAULT NULL,
  PRIMARY KEY (`salesID`),
  KEY `fk_Sales_Customer1_idx` (`Customer_custID`),
  CONSTRAINT `fk_Sales_Customer1` FOREIGN KEY (`Customer_custID`) REFERENCES `customer` (`custID`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales`
--

LOCK TABLES `sales` WRITE;
/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
INSERT INTO `sales` VALUES (1,'2021-01-06',25000,25000,1,1),(2,'2021-09-26',100000,100000,1,2),(3,'2021-11-20',20000,20000,1,3),(4,'2021-12-15',50000,100000,1,4),(5,'2022-01-17',48000,48000,1,5),(6,'2022-01-21',60000,60000,1,6),(7,'2022-09-29',10000,10000,1,7),(8,'2022-10-30',38000,76000,1,8),(9,'2022-12-08',70000,140000,1,9),(10,'2023-01-13',60000,60000,1,11),(11,'2023-09-24',90000,90000,1,11),(12,'2023-09-14',72000,72000,1,12),(13,'2023-11-11',87000,174000,1,12),(14,'2023-12-07',55500,37000,2,12),(15,'2024-01-19',112000,112000,1,15),(16,'2024-01-21',49000,98000,1,16),(17,'2024-09-23',72000,72000,1,17),(18,'2024-10-18',100000,100000,1,18),(19,'2024-10-25',67000,67000,1,19),(20,'2024-11-16',89000,89000,1,20);
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trucks`
--

DROP TABLE IF EXISTS `trucks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trucks` (
  `truckID` int NOT NULL AUTO_INCREMENT,
  `truckCapacity` varchar(45) NOT NULL,
  `truckDriver` varchar(45) DEFAULT NULL,
  `mileage` decimal(10,0) NOT NULL,
  `maintenanceDate` date NOT NULL,
  PRIMARY KEY (`truckID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trucks`
--

LOCK TABLES `trucks` WRITE;
/*!40000 ALTER TABLE `trucks` DISABLE KEYS */;
INSERT INTO `trucks` VALUES (1,'25 tons','Sam Rodriguez',92678,'2023-12-14'),(2,'25 tons','Casey Johnson',28950,'2023-01-23'),(3,'21 tons',NULL,50469,'2024-12-02'),(4,'12 tons',NULL,18675,'2022-12-05'),(5,'10 tons','Chris Wilson',90368,'2021-01-24'),(6,'5 tons','Morgan Wilson',12492,'2024-01-23'),(7,'7 tons','Pat Wilson',51610,'2022-12-13'),(8,'6 tons',NULL,31337,'2023-12-29'),(9,'10 tons','Alex Garcia',58602,'2024-12-22'),(10,'25 tons',NULL,80376,'2021-01-11');
/*!40000 ALTER TABLE `trucks` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-05 15:51:26
