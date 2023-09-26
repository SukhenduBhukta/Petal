-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: petal
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `appointment`
--

DROP TABLE IF EXISTS `appointment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appointment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `ownerName` varchar(45) NOT NULL,
  `petName` varchar(45) NOT NULL,
  `gender` varchar(45) NOT NULL,
  `mob` varchar(45) NOT NULL,
  `address` varchar(200) NOT NULL,
  `street` varchar(45) NOT NULL,
  `city` varchar(45) NOT NULL,
  `state` varchar(45) NOT NULL,
  `pincode` varchar(6) NOT NULL,
  `email` varchar(45) NOT NULL,
  `age` varchar(45) NOT NULL,
  `date` varchar(45) NOT NULL,
  `did` int NOT NULL,
  `status` varchar(500) DEFAULT NULL,
  `time` varchar(50) DEFAULT NULL,
  `link` varchar(500) DEFAULT NULL,
  `report` varchar(100) DEFAULT NULL,
  `disease` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id_idx` (`user_id`),
  KEY `did_idx` (`did`),
  CONSTRAINT `did` FOREIGN KEY (`did`) REFERENCES `doctor` (`did`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment`
--

LOCK TABLES `appointment` WRITE;
/*!40000 ALTER TABLE `appointment` DISABLE KEYS */;
INSERT INTO `appointment` VALUES (16,28,'Sukhendu Bhukta','abc','Select','7319164971','Palashpai','7319164971','Paschim Medinipur','West Bengal','721146','sukhendu.bhukta789@gmail.com','3','2023-05-24',1,'Done','09:30','ferrtefre.iiui','shib2.jpg',NULL),(17,28,'Sukhendu Bhukta','333','Female','7319164971','Palashpai','7319164971','Paschim Medinipur','West Bengal','721146','sukhendu.bhukta789@gmail.com','5','2023-05-31',2,'under process',NULL,NULL,NULL,NULL),(18,28,'Sukhendu Bhukta','da','Female','7319164971','Palashpai','7319164971','Paschim Medinipur','West Bengal','721146','sukhendu.bhukta789@gmail.com','3','2023-06-09',1,'schedule','10:56','ferrtefre.iiui',NULL,NULL),(19,28,'Sukhendu Bhukta','rwre','Female','7319164971','Palashpai','7319164971','Paschim Medinipur','West Bengal','721146','sukhendu.bhukta789@gmail.com','6','2023-05-23',1,'schedule','14:40','ferrtefre.iiuifdfdyfgfjhgiyhiuh',NULL,NULL),(20,28,'Sukhendu Bhukta','gfg','Select','7319164971','Palashpai','7319164971','Paschim Medinipur','West Bengal','721146','sukhendu.bhukta789@gmail.com','7','2023-05-16',3,'schedule','22:10','meet.ytygt.tiitt',NULL,NULL),(21,28,'Sukhendu Bhukta','sfsf','Select','7319164971','Palashpai','7319164971','Paschim Medinipur','West Bengal','721146','sukhendu.bhukta789@gmail.com','5','2023-05-02',2,'under process',NULL,NULL,NULL,NULL),(22,28,'Sukhendu Bhukta','kalu','Male','7319164971','Palashpai','Abashar Club','Paschim Medinipur','West Bengal','721146','sukhendu.bhukta789@gmail.com','2','42-50-3202',3,'under process',NULL,NULL,NULL,NULL),(23,28,'Sukhendu Bhukta','dsd','Female','7319164971','Palashpai','Abashar Club','Paschim Medinipur','West Bengal','721146','sukhendu.bhukta789@gmail.com','2','2023-05-26',2,'under process',NULL,NULL,NULL,NULL),(24,28,'Sukhendu Bhukta','a','Male','7319164971','Palashpai','Abashar Club','Paschim Medinipur','West Bengal','721171','sukhendu.bhukta789@gmail.com','5','2023-05-26',1,'schedule','14:41','ferrtefre.iiuifdfdyfgfjhgiyhiuh',NULL,NULL),(25,28,'Sukhendu Bhukta','sfsd','Female','7319164971','Palashpai','Abashar Club','Paschim Medinipur','West Bengal','721171','sukhendu.bhukta789@gmail.com','6','2023-05-27',1,'schedule','16:48','ferrtefre.iiuifdfdyfgfjhgiyhiuh',NULL,NULL),(26,28,'Sukhendu Bhukta','ada','Male','7319164971','Palashpai','Abashar Club','Paschim Medinipur','West Bengal','721171','sukhendu.bhukta789@gmail.com','656','2023-05-18',1,'schedule','17:37','ferrtefre.iiuifdfdyfgfjhgiyhiuh',NULL,NULL),(27,28,'Sukhendu Bhukta','sfsd','Male','7319164971','Palashpai','Abashar Club','Paschim Medinipur','West Bengal','721171','sukhendu.bhukta789@gmail.com','76','2023-05-18',3,'under process',NULL,NULL,NULL,NULL),(28,28,'Sukhendu Bhukta','sfsd','Male','7319164971','Palashpai','Abashar Club','Paschim Medinipur','West Bengal','721171','sukhendu.bhukta789@gmail.com','8','2023-05-24',3,'under process',NULL,NULL,NULL,NULL),(29,28,'Sukhendu Bhukta','sfsf','Male','7319164971','Palashpai','Abashar Club','Paschim Medinipur','West Bengal','721171','sukhendu.bhukta789@gmail.com','5','2023-05-16',1,'schedule','20:50','meet.ytygt.tiitt',NULL,NULL),(30,28,'Sukhendu Bhukta','ada','Male','7319164971','Palashpai','Abashar Club','Paschim Medinipur','West Bengal','721171','sukhendu.bhukta789@gmail.com','22','2023-05-17',2,'under process',NULL,NULL,NULL,NULL),(31,28,'Sukhendu Bhukta','Rocky','Select','7319164971','Palashpai','Abashar Club','Paschim Medinipur','West Bengal','721171','sukhendu.bhukta789@gmail.com','4','2023-05-19',3,'Done','23:08','ferrtefre.iiuifdfdyfgfjhgiyhiuh.77rydg','sign.jpg','Maar Gaya'),(32,28,'Sukhendu Bhukta','Tomy','Male','7319164971','Palashpai','Abashar Club','Paschim Medinipur','West Bengal','721171','sukhendu.bhukta789@gmail.com','2','2023-05-19',4,'schedule','00:09','meet.ytygt.tiitt',NULL,'Vomiting'),(33,28,'Sukhendu Bhukta','r','Male','7319164971','Palashpai','Abashar Club','Paschim Medinipur','West Bengal','721171','sukhendu.bhukta789@gmail.com','4','2023-05-18',2,'under process',NULL,NULL,NULL,'sdfsf'),(34,28,'Sukhendu Bhukta','gfgfs','Male','7319164971','Palashpai','Abashar Club','Paschim Medinipur','West Bengal','721171','sukhendu.bhukta789@gmail.com','45','2023-05-18',3,'under process',NULL,NULL,NULL,'fsfsf'),(35,28,'Sukhendu Bhukta','sdf','Male','7319164971','Palashpai','Abashar Club','Paschim Medinipur','West Bengal','721171','sukhendu.bhukta789@gmail.com','5','2023-05-18',2,'under process',NULL,NULL,NULL,'sdfsf'),(36,28,'Sukhendu Bhukta','Rocky','Male','7319164971','Palashpai','Abashar Club','Paschim Medinipur','West Bengal','721171','sukhendu.bhukta789@gmail.com','9','2023-05-18',1,'under process',NULL,NULL,NULL,'yiu'),(37,28,'Sukhendu Bhukta','rrr','Male','7319164971','Palashpai','Abashar Club','Paschim Medinipur','West Bengal','721171','sukhendu.bhukta789@gmail.com','4','2023-05-19',4,'under process',NULL,NULL,NULL,'dds'),(38,28,'Sukhendu Bhukta','sfsf','Male','7319164971','Palashpai','Abashar Club','Paschim Medinipur','West Bengal','721171','sukhendu.bhukta789@gmail.com','-7','2023-05-20',1,'Done','03:27','ferrtefre.iiuifdfdyfgfjhgiyhiuh.77rydg','Screenshot (1).png','rtf');
/*!40000 ALTER TABLE `appointment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `cid` int NOT NULL AUTO_INCREMENT,
  `uid` int DEFAULT NULL,
  `pid` int DEFAULT NULL,
  `pname` varchar(45) DEFAULT NULL,
  `cname` varchar(45) DEFAULT NULL,
  `pcount` int DEFAULT NULL,
  `price` double DEFAULT NULL,
  `tprice` double DEFAULT NULL,
  `sid` int DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (23,14,22,'Pedigre',NULL,3,351,1053,25),(36,28,22,'Pedigre',NULL,3,351,1053,25);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctor`
--

DROP TABLE IF EXISTS `doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctor` (
  `did` int NOT NULL AUTO_INCREMENT,
  `dfname` varchar(45) NOT NULL,
  `dlname` varchar(45) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `pimg` varchar(100) DEFAULT NULL,
  `designation` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`did`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor`
--

LOCK TABLES `doctor` WRITE;
/*!40000 ALTER TABLE `doctor` DISABLE KEYS */;
INSERT INTO `doctor` VALUES (1,'Sukhendu','Bhukta','07319164971','sukhendu.bhukta789@gmail.com','12345','_Documents_RHITIKA.pdf','PXL_20230404_072117957 copy.jpg','ABC','active'),(2,'Rhitika','d','8795353534','rhitikads@gmail.com','12345','RHITIKA.pdf',NULL,NULL,'active'),(3,'Ritikesh','Kumar','7897424242','ritikesh@gmail.com','12345','Payment Integration.pdf','IMG20230218221854.jpg','Skin','active'),(4,'Koushik','Sarkar','8933622345','koushik.sarkar789@gmail.com','1234!@#$','shisankar.pdf','IMG20230502143002 copy.jpg','XYZ','active');
/*!40000 ALTER TABLE `doctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctor_rating`
--

DROP TABLE IF EXISTS `doctor_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctor_rating` (
  `rid` int NOT NULL AUTO_INCREMENT,
  `did` int DEFAULT NULL,
  `uid` int DEFAULT NULL,
  `rcount` int DEFAULT NULL,
  `comment` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor_rating`
--

LOCK TABLES `doctor_rating` WRITE;
/*!40000 ALTER TABLE `doctor_rating` DISABLE KEYS */;
INSERT INTO `doctor_rating` VALUES (1,1,28,5,'Very Good\r\n'),(2,3,28,4,'Nice Dr.');
/*!40000 ALTER TABLE `doctor_rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dog_buy`
--

DROP TABLE IF EXISTS `dog_buy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dog_buy` (
  `dogid` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `type` varchar(45) NOT NULL,
  `price` varchar(45) NOT NULL,
  `dogphoto` varchar(45) NOT NULL,
  `discription` varchar(45) NOT NULL,
  PRIMARY KEY (`dogid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dog_buy`
--

LOCK TABLES `dog_buy` WRITE;
/*!40000 ALTER TABLE `dog_buy` DISABLE KEYS */;
/*!40000 ALTER TABLE `dog_buy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grocery`
--

DROP TABLE IF EXISTS `grocery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grocery` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `category` varchar(45) NOT NULL,
  `price` varchar(45) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `status` varchar(45) NOT NULL,
  `seller` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `sid` int DEFAULT NULL,
  `cname` varchar(45) DEFAULT NULL,
  `expdate` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grocery`
--

LOCK TABLES `grocery` WRITE;
/*!40000 ALTER TABLE `grocery` DISABLE KEYS */;
INSERT INTO `grocery` VALUES (22,'Pedigre','Food','351','Dog_food-2.png','demo','Active','Nimai','nimaisamanta@gmail.com',25,NULL,NULL),(23,'Pedigre','Food','667','Dog_Food-1.png','There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.','Active','Nimai','nimaisamanta@gmail.com',25,NULL,'2026-11-30'),(24,'Pet Dress','Dress','571','dog_dress_2.png','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.','Active','Nimai','nimaisamanta@gmail.com',25,'Demo','2026-12-30'),(25,'Drools','Food','691','Dog_Food-3.png','Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.','Active','Soumen','smnk107@gmail.com',32,'xyz','2026-11-27'),(26,'Iams','Food','816','Dog_Food-4.png','Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.','Active','Soumen','smnk107@gmail.com',32,'abc','2025-06-24'),(27,'Cat toy','Toy','510','cat_toy_1.png','There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.','Active','Nimai','nimaisamanta@gmail.com',25,'SB','2025-11-20'),(28,'Dog toy','Toy','916','dog_toy-_1.png','There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.','Active','Nimai','nimaisamanta@gmail.com',25,'SB','2025-12-23'),(29,'Dog Puzzle Toy','Toy','499','dog_toy_2.png','There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.','Active','Soumen','smnk107@gmail.com',32,'SMNK','2026-10-20'),(30,'Rabbit Toy','Toy','800','rabbit_toy_1.png','There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.','Active','Soumen','smnk107@gmail.com',32,'SMNK','2025-06-19'),(31,'Cat Fancy Dress','Dress','1091','cat_dress_1.png','There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.','Active','Soumen','smnk107@gmail.com',32,'Zaaraa','2024-11-30'),(32,'Dog Classic Dress','Dress','892','dog_dress_1.png','There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.','Active','Soumen','smnk107@gmail.com',32,'Zaaraa','2025-12-15'),(33,'Rabbit Tide Dress','Dress','494','rabbit_dress_1.png','There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.','Active','Nimai','nimaisamanta@gmail.com',25,'Faltu','2025-11-19');
/*!40000 ALTER TABLE `grocery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_table`
--

DROP TABLE IF EXISTS `order_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_table` (
  `orderid` varchar(50) NOT NULL,
  `uid` int DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `house` varchar(50) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `pid` int DEFAULT NULL,
  `landmark` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `pincode` varchar(6) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `payment` varchar(45) DEFAULT NULL,
  `sid` int DEFAULT NULL,
  `pcount` int DEFAULT NULL,
  PRIMARY KEY (`orderid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_table`
--

LOCK TABLES `order_table` WRITE;
/*!40000 ALTER TABLE `order_table` DISABLE KEYS */;
INSERT INTO `order_table` VALUES ('PETAL-011-0000',14,'Sukhendu Bhukta ','df','07319164971',0,'sf','sfs','dsf','123456','Ordered',NULL,NULL,1),('PETAL-011-0001',14,'Sukhendu Bhukta','+917319164971','9732852263',0,'fdd','Paschim Medinipur','West Bengal','721146','Ordered',NULL,NULL,2),('PETAL-022-00010',28,'Sukhendu Bhukta','Palashpai','7319164971',22,'Abashar Club','Paschim Medinipur','West Bengal','721146','Cancel','COD',25,6),('PETAL-022-00011',28,'Sukhendu Bhukta','Palashpai','7319164971',22,'Abashar Club','Paschim Medinipur','West Bengal','721146','Ordered','COD',25,6),('PETAL-022-00012',28,'Sukhendu Bhukta','Palashpai','7319164971',22,'Abashar Club','Paschim Medinipur','West Bengal','721171','Ordered','COD',25,1),('PETAL-022-00015',28,'Sukhendu Bhukta','Palashpai','7319164971',22,'Abashar Club','Paschim Medinipur','West Bengal','721171','Ordered','COD',25,1),('PETAL-022-0002',28,'Sukhendu Bhukta','Palashpai','7319164971',22,'Abashar Club','Paschim Medinipur','West Bengal','721146','Ordered',NULL,25,5),('PETAL-022-0003',28,'Sukhendu Bhukta','Palashpai','7319164971',22,'Abashar Club','Paschim Medinipur','West Bengal','721146','Cancel',NULL,25,1),('PETAL-022-0004',28,'Sukhendu Bhukta','Palashpai','7319164971',22,'Abashar Club','Paschim Medinipur','West Bengal','721146','Cancel',NULL,25,2),('PETAL-022-0005',28,'Sukhendu Bhukta','Palashpai','7319164971',22,'Abashar Club','Paschim Medinipur','West Bengal','721146','Delivered',NULL,25,3),('PETAL-022-0006',28,'Sukhendu Bhukta','Palashpai','7319164971',22,'Abashar Club','Paschim Medinipur','West Bengal','721146','Cancel',NULL,25,2),('PETAL-022-0007',28,'Sukhendu Bhukta','Palashpai','7319164971',22,'Abashar Club','Paschim Medinipur','West Bengal','721146','Ordered',NULL,25,4),('PETAL-022-0008',28,'Sukhendu Bhukta','Palashpai','7319164971',22,'Abashar Club','Paschim Medinipur','West Bengal','721146','Ordered',NULL,25,1),('PETAL-022-0009',28,'Sukhendu Bhukta','Palashpai','7319164971',22,'Abashar Club','Paschim Medinipur','West Bengal','721146','Ordered',NULL,25,5),('PETAL-023-00013',28,'Sukhendu Bhukta','Palashpai','7319164971',23,'Abashar Club','Paschim Medinipur','West Bengal','721171','Ordered','COD',25,1),('PETAL-029-00019',28,'Sukhendu Bhukta','Palashpai','7319164971',29,'Abashar Club','Paschim Medinipur','West Bengal','721171','Ordered','COD',32,1),('PETAL-031-00016',28,'Sukhendu Bhukta','Palashpai','7319164971',31,'Abashar Club','Paschim Medinipur','West Bengal','721171','Ordered','COD',32,1),('PETAL-031-00018',28,'Sukhendu Bhukta','Palashpai','7319164971',31,'Abashar Club','Paschim Medinipur','West Bengal','721171','Ordered','COD',32,1),('PETAL-032-00014',28,'Sukhendu Bhukta','Palashpai','7319164971',32,'Abashar Club','Paschim Medinipur','West Bengal','721171','Ordered','COD',32,1),('PETAL-032-00017',28,'Sukhendu Bhukta','Palashpai','7319164971',32,'Abashar Club','Paschim Medinipur','West Bengal','721171','Ordered','COD',32,1);
/*!40000 ALTER TABLE `order_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `payid` int NOT NULL AUTO_INCREMENT,
  `amount` int DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `razorpay_payment_id` varchar(100) DEFAULT NULL,
  `razorpay_order_id` varchar(100) DEFAULT NULL,
  `razorpay_signature` varchar(100) DEFAULT NULL,
  `cid` int DEFAULT NULL,
  `apid` int DEFAULT NULL,
  PRIMARY KEY (`payid`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,100,'paid','pay_LpC4zLx4JG0MM3','order_LpC4g6Tc6dT8Rf','802ed1012f8b7e7a79279d01820d624eb66fb247d7cb0018e75600e2e60b22cc',28,17),(2,100,'paid','pay_LpDaNt0vXy6Dp9','order_LpDZymB3j1J060','596df1459976bd7d909eb6ed2711266addeb818f798bdadb28c526de1b40225a',28,16),(3,100,'paid','pay_LpE48VhCNwZ7Gw','order_LpE3UvStlM5p9O','df2c35d26908833b6f22b29889e61721bf6e237798ec72a8d00a6603671158de',28,18),(4,100,'created',NULL,'order_LpEeM4k26U2a7Y',NULL,28,19),(5,100,'paid','pay_LpEenUcs3R4b5C','order_LpEeQVEC7Dk1ZY','1c21e8741393d1b44cf6f29101b9a62c76991bb86114d754f3ebc102050b4ac8',28,19),(6,100,'paid','pay_LpPbkfSARh3fFx','order_LpPb0QV8vSgo08','2ffd5b2379d204c2f57284c82da1a5b141e64dcf21033e95e1252ab7159ec16d',28,20),(7,100,'created',NULL,'order_Lpd0gg8klxYeJv',NULL,28,21),(8,100,'paid','pay_Lq0mdz8AtbeTrs','order_Lq0mQqsc7vze71','5012adbf8560c9eaad88c1f55aac9d1c37dc493f743bc869fc34b8bf96011bae',28,22),(9,300,'paid','pay_Lq1aO8uAoe0Zor','order_Lq1aCDP33ct0px','841d43571ec108cd20d3abef118ea35fc9e15aa4476f1cb22cbbe896d5431ca3',28,23),(10,300,'paid','pay_Lq1hc45X4n0lKH','order_Lq1hO9ZiT3Emnx','6ef5235d374a13b2bb1dd746b9c44401e1a90ba10a3271b1d48ca2c4f930e6c5',28,23),(11,300,'paid','pay_LqFCf4f5t5EDY9','order_LqFCVc68Stah06','1661e457d5d3a1a1fd25dda96f96402890f61fa6e4ae3c779bc8336002d574a9',28,24),(12,300,'paid','pay_LqFUnjdlVRKtkR','order_LqFUco7XIMi3nA','851adf254c0064cc240e83d03beeb8ae8b5ed5eb6cdc5e8c2467cfe69c65f967',28,25),(13,300,'paid','pay_LqG5VaHdSAcpTW','order_LqG5BpZVB3ZzWq','45ddfafaf26dfa6a05211a347ad6d154726f2d0599c2ec2cab760d22e6dbc9fd',28,26),(14,300,'paid','pay_LqG7IK24YwC1Jd','order_LqG6F5oHGT2wTv','e843dd5fc76dd655cee22cf96d048e263c33c7964651fefb18e57c71bbc40f65',28,27),(15,300,'created',NULL,'order_LqG7ZCnAfjnmHp',NULL,28,27),(16,300,'paid','pay_LqIEDy6pvGbKXv','order_LqIBywltbQdK7m','3e848ec7ff9c082a5344903612b200a9ef563fee8b21fad4073b9c31bd8139cc',28,28),(17,300,'paid','pay_LqNYLKplzJlCpF','order_LqNY4hTHEipFXN','c895f468b66e663a7962ee48e94d8e9e9a668f8dfee7eb696593117d380a5095',28,29),(18,300,'paid','pay_LqbfImMZ5RB7Mt','order_Lqbem9fE9TOVha','7c6ea6e5d285416f829fc37f5fb45fc456eb2feab97dda4757f7a78a39927c50',28,30),(19,300,'paid','pay_LqlRc28vAFxl2W','order_LqlRNIw6craV6n','e4240c3818f0aceabef07a7861554bb7fea7d7e438647dc45b307bfdd6bfcb98',28,31),(20,300,'paid','pay_LrCaV7vZ6hjYj4','order_LrCaGrXxZUYLzX','2180ef29296b83f69065c3d51ad189125c3789b8445ea14d0e8a85f01917011b',28,32),(21,300,'paid','pay_LrChxU8W9YuNEC','order_LrChknXcByGCUb','1cd6b82ce3f64aa717b7b57b407596b998d790f942dbbdd76cc8a9b3fe99aea5',28,33),(22,300,'paid','pay_LrCkhI5KDAmqYy','order_LrCkMFaBBuoAdF','11795b383d7eb801f955570c4442840f767385e4c1080e02641646bc19b8eed3',28,34),(23,300,'paid','pay_LrClwyPK0Iu1SS','order_LrCljUyTBDrBdy','cdc6574272596c20f5ff4bf91a19d88fd17bcc821fe6bdf889748100fe4705e6',28,35),(24,300,'paid','pay_LrCoWKdyPBtB6I','order_LrCoKPYvE1RMXD','56f5e8d2ed1928a31f3293d973b9289a42ae0598d09b7a618d335088cec121d8',28,35),(25,300,'paid','pay_LrDVk8M2FR6bzd','order_LrDVVmrvurWZz5','a8bf78ef14a0840164a02f73aacb56d839ae48db6e99f8970bf34cd0812408b7',28,36),(26,300,'paid','pay_LrOpN85dMZksZH','order_LrOotVW6MHqP5w','97850131ff7c3f5b0e5e8211bc75d7c11eb43a5c8f41cd2cd783c010b5851fe6',28,37),(27,300,'paid','pay_Lrn7sR15nFOfqx','order_Lrn7amQbk4bP9J','a2471eefe7dbfaa83c0b921ec49688ac1c8674258adef9954abf2a84f20f2f59',28,38);
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `userid` int NOT NULL AUTO_INCREMENT,
  `fname` varchar(45) NOT NULL,
  `lname` varchar(45) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `designation` varchar(45) NOT NULL,
  `photo` varchar(200) DEFAULT NULL,
  `pimg` varchar(200) DEFAULT NULL,
  `house` varchar(45) DEFAULT NULL,
  `landmark` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `pincode` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`userid`),
  UNIQUE KEY `userid_UNIQUE` (`userid`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (12,'Sukhendu','','07319164971','sukhendu.bhukta789@gail.com','fe344','Patient',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(15,'Sukhendu','Bhukta','07319164971','sukhendu.bhukta78449@gmail.com','sefsg','Patient',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(22,'Sukhendu','Bhukta','07319164971','asddd@gmail.com','2656372','Doctor',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(25,'Nimai','Samanta','847875434','nimaisamanta@gmail.com','12345','Seller','Undertaking Form1-signed.pdf','100kb.jpg',NULL,NULL,NULL,NULL,NULL),(27,'kalu','d','345353656','kalu@gmail.com','123456','Patient','',NULL,NULL,NULL,NULL,NULL,NULL),(28,'Sukhendu','Bhukta','7319164971','sukhendu.bhukta789@gmail.com','123456','Patient','','Cat_Food-2.png','Palashpai','Abashar Club','Paschim Medinipur','West Bengal','721171'),(32,'Soumen','Mallick','9837483423','smnk107@gmail.com','1234567','Seller','sign.jpg',NULL,NULL,NULL,NULL,NULL,NULL);
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

-- Dump completed on 2023-09-26 20:36:19
