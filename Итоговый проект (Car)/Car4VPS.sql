-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: mydb
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `brand`
--

DROP TABLE IF EXISTS `brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brand` (
  `BrandName` varchar(50) NOT NULL,
  `Country_CountryName` varchar(30) NOT NULL,
  PRIMARY KEY (`BrandName`),
  UNIQUE KEY `BrandName_UNIQUE` (`BrandName`),
  KEY `fk_Brand_Country1_idx` (`Country_CountryName`),
  CONSTRAINT `fk_Brand_Country1` FOREIGN KEY (`Country_CountryName`) REFERENCES `country` (`CountryName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brand`
--

LOCK TABLES `brand` WRITE;
/*!40000 ALTER TABLE `brand` DISABLE KEYS */;
INSERT INTO `brand` VALUES ('Honda','Япония'),('Toyota','Япония');
/*!40000 ALTER TABLE `brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `car`
--

DROP TABLE IF EXISTS `car`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `car` (
  `IDCar` varchar(20) NOT NULL COMMENT 'номер кузова или вин',
  `BrandName` varchar(50) NOT NULL,
  `ModelName` varchar(50) NOT NULL,
  `IDEngine` varchar(10) NOT NULL,
  `ReleaseDate` int NOT NULL COMMENT 'дата релиза',
  `TransmissionType` varchar(20) NOT NULL,
  `DriveType` varchar(15) NOT NULL,
  PRIMARY KEY (`IDCar`),
  UNIQUE KEY `IDCar_UNIQUE` (`IDCar`),
  KEY `fk_CarData_Engine1_idx` (`IDEngine`),
  KEY `fk_Car_Model1_idx` (`ModelName`,`BrandName`),
  CONSTRAINT `fk_Car_Model1` FOREIGN KEY (`ModelName`, `BrandName`) REFERENCES `model` (`ModelName`, `BrandName`),
  CONSTRAINT `fk_CarData_Engine1` FOREIGN KEY (`IDEngine`) REFERENCES `engine` (`IDEngine`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car`
--

LOCK TABLES `car` WRITE;
/*!40000 ALTER TABLE `car` DISABLE KEYS */;
INSERT INTO `car` VALUES ('GK3','Honda','Fit','L13B',2017,'CVT','FF'),('NCP91','Toyota','Vitz','1NZ-FE',2009,'MT','FF'),('NCP95','Toyota','Vitz','2NZ-FE',2009,'AT','4WD'),('NCP96','Toyota','Belta','2NZ-FE',2009,'AT','4WD');
/*!40000 ALTER TABLE `car` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `car_has_part`
--

DROP TABLE IF EXISTS `car_has_part`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `car_has_part` (
  `IDCar` varchar(20) NOT NULL,
  `IDPart` int NOT NULL,
  PRIMARY KEY (`IDCar`,`IDPart`),
  KEY `fk_Car_has_Part_Part1_idx` (`IDPart`),
  KEY `fk_Car_has_Part_Car1_idx` (`IDCar`),
  CONSTRAINT `fk_Car_has_Part_Car1` FOREIGN KEY (`IDCar`) REFERENCES `car` (`IDCar`),
  CONSTRAINT `fk_Car_has_Part_Part1` FOREIGN KEY (`IDPart`) REFERENCES `part` (`IDPart`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car_has_part`
--

LOCK TABLES `car_has_part` WRITE;
/*!40000 ALTER TABLE `car_has_part` DISABLE KEYS */;
INSERT INTO `car_has_part` VALUES ('NCP95',1),('NCP96',1),('NCP91',2),('NCP95',2),('NCP96',2),('NCP91',3),('NCP95',3),('NCP96',3),('NCP95',4),('NCP96',4),('NCP91',5),('NCP95',5),('NCP96',6),('NCP91',7),('NCP95',7),('NCP96',8),('GK3',9),('NCP91',10),('NCP95',10),('NCP96',11),('NCP91',12),('NCP95',12),('NCP96',13),('GK3',14),('GK3',15),('NCP91',15),('NCP95',15),('NCP96',15);
/*!40000 ALTER TABLE `car_has_part` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `country` (
  `CountryName` varchar(30) NOT NULL,
  PRIMARY KEY (`CountryName`),
  UNIQUE KEY `CountryName_UNIQUE` (`CountryName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES ('Австрия'),('Беларусь'),('Великобритания'),('Германия'),('Испания'),('Италия'),('Китай'),('Корея'),('Литва'),('Нидерланды'),('Польша'),('Россия'),('США'),('Тайвань'),('Турция'),('Франция'),('Швеция'),('Япония');
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `engine`
--

DROP TABLE IF EXISTS `engine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `engine` (
  `IDEngine` varchar(10) NOT NULL COMMENT 'название двигателя',
  `Capacity` double NOT NULL COMMENT 'объем',
  `HP` int NOT NULL COMMENT 'мощность',
  `FuelType` varchar(10) NOT NULL,
  PRIMARY KEY (`IDEngine`),
  UNIQUE KEY `IDEngine_UNIQUE` (`IDEngine`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `engine`
--

LOCK TABLES `engine` WRITE;
/*!40000 ALTER TABLE `engine` DISABLE KEYS */;
INSERT INTO `engine` VALUES ('1NZ-FE',1.5,119,'Бензин'),('2NZ-FE',1.3,87,'Бензин'),('L13B',1.3,100,'Бензин');
/*!40000 ALTER TABLE `engine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favourite`
--

DROP TABLE IF EXISTS `favourite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `favourite` (
  `IDUser` int NOT NULL,
  `IDPart` int NOT NULL,
  PRIMARY KEY (`IDUser`,`IDPart`),
  KEY `fk_Favourite_Part1_idx` (`IDPart`),
  CONSTRAINT `fk_Favourite_Part1` FOREIGN KEY (`IDPart`) REFERENCES `part` (`IDPart`),
  CONSTRAINT `fk_Favourite_User1` FOREIGN KEY (`IDUser`) REFERENCES `user` (`IDUser`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favourite`
--

LOCK TABLES `favourite` WRITE;
/*!40000 ALTER TABLE `favourite` DISABLE KEYS */;
INSERT INTO `favourite` VALUES (1,1);
/*!40000 ALTER TABLE `favourite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manufacturer`
--

DROP TABLE IF EXISTS `manufacturer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manufacturer` (
  `ManufacturerName` varchar(45) NOT NULL,
  `CountryName` varchar(30) NOT NULL,
  PRIMARY KEY (`ManufacturerName`),
  UNIQUE KEY `ManufacturerName_UNIQUE` (`ManufacturerName`),
  KEY `fk_Manufacturer_Country1_idx` (`CountryName`),
  CONSTRAINT `fk_Manufacturer_Country1` FOREIGN KEY (`CountryName`) REFERENCES `country` (`CountryName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manufacturer`
--

LOCK TABLES `manufacturer` WRITE;
/*!40000 ALTER TABLE `manufacturer` DISABLE KEYS */;
INSERT INTO `manufacturer` VALUES ('SAT','Китай'),('Kixx GS Oil','Корея'),('Denso','Япония'),('Honda','Япония'),('Koyo','Япония'),('Toyota','Япония');
/*!40000 ALTER TABLE `manufacturer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model`
--

DROP TABLE IF EXISTS `model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `model` (
  `BrandName` varchar(50) NOT NULL,
  `ModelName` varchar(50) NOT NULL,
  PRIMARY KEY (`BrandName`,`ModelName`),
  UNIQUE KEY `ModelName_UNIQUE` (`ModelName`),
  KEY `fk_Model_Brand1_idx` (`BrandName`),
  CONSTRAINT `fk_Model_Brand1` FOREIGN KEY (`BrandName`) REFERENCES `brand` (`BrandName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model`
--

LOCK TABLES `model` WRITE;
/*!40000 ALTER TABLE `model` DISABLE KEYS */;
INSERT INTO `model` VALUES ('Toyota','Belta'),('Honda','Fit'),('Toyota','Vitz');
/*!40000 ALTER TABLE `model` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `node`
--

DROP TABLE IF EXISTS `node`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `node` (
  `IDNode` int NOT NULL,
  `NodeName` varchar(45) NOT NULL,
  `UnitName` varchar(45) NOT NULL,
  PRIMARY KEY (`IDNode`),
  UNIQUE KEY `IDNode_UNIQUE` (`IDNode`),
  KEY `fk_Node_Unit1_idx` (`UnitName`),
  CONSTRAINT `fk_Node_Unit1` FOREIGN KEY (`UnitName`) REFERENCES `unit` (`UnitName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `node`
--

LOCK TABLES `node` WRITE;
/*!40000 ALTER TABLE `node` DISABLE KEYS */;
INSERT INTO `node` VALUES (1,'Коллектор','Двигатель и элементы двигателя'),(2,'ГРМ','Двигатель и элементы двигателя'),(3,'Система зажигания','Двигатель и элементы двигателя'),(4,'Катализатор','Выхлопная система'),(5,'Бампера','Детали кузова'),(6,'Фары передние','Оптика'),(7,'Сиденья передние','Интерьер'),(8,'ГСМ','Расходники и комплектующие'),(9,'Фильтры','Расходники и комплектующие');
/*!40000 ALTER TABLE `node` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `part`
--

DROP TABLE IF EXISTS `part`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `part` (
  `IDPart` int NOT NULL COMMENT 'номер детали',
  `PartNumber` varchar(45) DEFAULT NULL,
  `PartName` varchar(45) NOT NULL,
  `Price` double NOT NULL,
  `ManufacturerName` varchar(45) NOT NULL,
  `IDNode` int NOT NULL,
  PRIMARY KEY (`IDPart`),
  UNIQUE KEY `IDPart_UNIQUE` (`IDPart`),
  KEY `fk_Part_Manufacturer1_idx` (`ManufacturerName`),
  KEY `fk_Part_Node1_idx` (`IDNode`),
  CONSTRAINT `fk_Part_Manufacturer1` FOREIGN KEY (`ManufacturerName`) REFERENCES `manufacturer` (`ManufacturerName`),
  CONSTRAINT `fk_Part_Node1` FOREIGN KEY (`IDNode`) REFERENCES `node` (`IDNode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `part`
--

LOCK TABLES `part` WRITE;
/*!40000 ALTER TABLE `part` DISABLE KEYS */;
INSERT INTO `part` VALUES (1,'17101-21090','Коллектор впускной',1500,'Toyota',1),(2,'13568-79025','Комплект ГРМ ременной',6500,'Koyo',2),(3,'IKH16','Комплект свечей зажигания',3200,'Denso',3),(4,'17140-21040','Катализатор в сборе',14000,'Toyota',4),(5,'521195-2410B0','Бампер передний',9000,'Toyota',5),(6,'52119-52530','Бампер передний',30000,'Toyota',5),(7,'STTYA20000','Бампер передний',4700,'SAT',5),(8,'52159-52620','Бампер задний',19500,'Toyota',5),(9,'W3674','Фара левая LED',48000,'Honda',6),(10,'52183','Комплект фар ксенон',8000,'Toyota',6),(11,'52163','Фара левая галоген',7500,'Toyota',6),(12,'51172, 44674','Комплект сидений RS',34999,'Toyota',7),(13,'71110-52450','Комплект сидений',14240,'Toyota',7),(14,'15742','Комплект сидений',5000,'Honda',7),(15,'L2100440E1','Масло моторное Kixx G1 5W20 SN/GF-5 4л',2050,'Kixx GS Oil',8);
/*!40000 ALTER TABLE `part` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `RoleName` varchar(45) NOT NULL,
  PRIMARY KEY (`RoleName`),
  UNIQUE KEY `RoleName_UNIQUE` (`RoleName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES ('Поставщик-оптовик'),('Работник автосервиса'),('Работник магазина автозапчастей');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unit`
--

DROP TABLE IF EXISTS `unit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `unit` (
  `UnitName` varchar(45) NOT NULL,
  PRIMARY KEY (`UnitName`),
  UNIQUE KEY `UnitName_UNIQUE` (`UnitName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unit`
--

LOCK TABLES `unit` WRITE;
/*!40000 ALTER TABLE `unit` DISABLE KEYS */;
INSERT INTO `unit` VALUES ('Выхлопная система'),('Двигатель и элементы двигателя'),('Детали кузова'),('Дополнительное оборудование'),('Интерьер'),('Оптика'),('Расходники и комплектующие'),('Система отопления и кондиционирования'),('Система подачи воздуха'),('Топливная система'),('Тормозная система'),('Трансмиссия'),('Ходовая часть'),('Электрика');
/*!40000 ALTER TABLE `unit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `IDUser` int NOT NULL,
  `FIO` varchar(100) NOT NULL,
  `RoleName` varchar(45) NOT NULL,
  `PhoneNumber` varchar(20) NOT NULL,
  `EmailAddress` varchar(45) NOT NULL,
  `City` varchar(45) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`IDUser`),
  UNIQUE KEY `IDUser_UNIQUE` (`IDUser`),
  KEY `fk_User_Role1_idx` (`RoleName`),
  CONSTRAINT `fk_User_Role1` FOREIGN KEY (`RoleName`) REFERENCES `role` (`RoleName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Пупкин Василий Иванович','Работник автосервиса','79147273881','pupkin@mail.ru','Владивосток','Баляева 50, 4');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-23 23:00:43
