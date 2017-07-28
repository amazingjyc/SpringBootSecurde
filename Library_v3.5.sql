CREATE DATABASE  IF NOT EXISTS `library` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `library`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: library
-- ------------------------------------------------------
-- Server version	5.7.18-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `item_reservations`
--

DROP TABLE IF EXISTS `item_reservations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_reservations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `borrow_date` varchar(255) DEFAULT NULL,
  `can_review` int(11) DEFAULT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `item_type` varchar(255) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `return_date` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_reservations`
--

LOCK TABLES `item_reservations` WRITE;
/*!40000 ALTER TABLE `item_reservations` DISABLE KEYS */;
INSERT INTO `item_reservations` VALUES (3,'2017-07-26',0,'Introduction to Computers','Book',1,'2017-08-26',2,1),(4,'2017-07-27',0,'How to be Pro','Magazine',21,'2017-08-27',2,2),(6,'2017-07-27',0,'Politics And Society','Thesis',43,'2017-08-27',2,2);
/*!40000 ALTER TABLE `item_reservations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `items_list`
--

DROP TABLE IF EXISTS `items_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `items_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_name` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `author` varchar(100) NOT NULL,
  `publisher` varchar(100) NOT NULL,
  `year_published` year(4) NOT NULL,
  `item_status` bit(1) NOT NULL,
  `date_of_availability` date DEFAULT NULL,
  `item_type` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items_list`
--

LOCK TABLES `items_list` WRITE;
/*!40000 ALTER TABLE `items_list` DISABLE KEYS */;
INSERT INTO `items_list` VALUES (1,'Introduction to Computers','000.1','Jarrell Chua','My Publishing House',2017,'','2017-08-26',0),(2,'Introduction to Programming','000.2','Jordan Chua','My Publishing House',2016,'\0',NULL,0),(6,'Riches in the Country','200.1','John Paul Wee','North Publishing House',2014,'\0',NULL,2),(7,'Introduction to Social Science','300.1','Jarrell Ng','My Publishing Company',2009,'\0',NULL,0),(8,'What is Social Science?','300.2','Jordan Ng','My Publishing Publisher',2000,'\0',NULL,0),(9,'Introduction to English','400.1','Jordan Chua','The Publisher',2012,'\0',NULL,0),(10,'Introduction to Chinese','400.2','Jordan De Guzman','The Publisher',2013,'\0',NULL,0),(11,'Introduction to Science','500.1','Jordan Ng','The Publishing Company',2017,'\0',NULL,0),(12,'Basic Physics','500.2','Mark Chua','My Publishing House',2012,'\0',NULL,0),(13,'Introduction to Technology','600.1','John Paul Chua','My Publishing Company',2003,'\0',NULL,0),(14,'Introduction to Gadgets','600.2','John Paul De Guzman','The Publishing Company',2004,'\0',NULL,0),(15,'Introduction to Arts','700.1','John Paul Ng','My Publishing House',2005,'\0',NULL,0),(17,'Introduction to Literature','800.1','Jarrell Chua','Printing Press',2017,'\0',NULL,0),(18,'What is Literature?','800.2','Jarrell De Guzman','My Publishing Publisher',2007,'\0',NULL,0),(19,'Introduction to History','900.1','Jarrell Ng','My Publishing Company',2008,'\0',NULL,0),(20,'Introduction to Geography','900.2','John Paul Chua','Publishing Inc.',2009,'\0',NULL,0),(21,'How to be Pro','000.1','Jarrell Chua','My Publishing House',2017,'','2017-08-27',1),(22,'Time to be a Pro Developer','000.2','Jordan Chua','My Publishing Publisher',2016,'\0',NULL,1),(23,'How to Pass Securde','100.1','John Paul De Guzman','My Publishing Publisher',2013,'\0',NULL,1),(25,'LIFE TIME MAGAZINE','200.1','Jordan De Guzman','Publishing Inc.',2014,'\0',NULL,1),(26,'Life of a Computer Science Student','200.2','John Paul Ng','The Publishing House',2014,'\0',NULL,1),(27,'This Is It','300.1','Jarrell Ng','My Publishing Company',2009,'\0',NULL,1),(28,'How Secured Are You?','300.2','Jordan Ng','My Publishing Publisher',2000,'\0',NULL,1),(29,'Fashion Magazine','400.1','Jordan Chua','My Publishing Publisher',2012,'\0',NULL,1),(30,'Boys Magazine','400.2','Jordan De Guzman','The Publisher',2013,'\0',NULL,1),(31,'DLSU Magazine','500.1','Jordan Ng','The Publishing Company',2017,'\0',NULL,1),(32,'Latest Trends Today','500.2','Mark Chua','The Publishing House',2012,'\0',NULL,1),(33,'Introduction to Technology','600.1','John Paul Chua','My Publishing Company',2003,'\0',NULL,1),(35,'Introduction to Arts','700.1','John Paul Ng','The Publishing House',2005,'\0',NULL,1),(37,'Introduction to Literature','800.1','Jarrell Chua','Publishing Inc.',2017,'\0',NULL,1),(38,'What is Literature?','800.2','Jarrell De Guzman','The Publishing House',2007,'\0',NULL,1),(39,'Introduction to History','900.1','Jarrell Ng','Printing Press',2008,'\0',NULL,1),(40,'Introduction to Geography','900.2','John Paul Chua','Publishing Inc.',2009,'\0',NULL,1),(42,'Algorithms 101','000.2','Jordan Chua','The Publishing House',2016,'\0',NULL,2),(43,'Politics And Society','100.1','John Paul De Guzman','The Publisher',2013,'','2017-08-27',2),(44,'Artificial Intelligence','100.2','Jarrell De Guzman','The Publishing Company',2012,'\0',NULL,2),(45,'Software Design Patterns','200.1','Jordan De Guzman','Publishing Inc.',2014,'\0',NULL,2),(46,'Effects of WarFreaks','200.2','John Paul Ng','The Publishing House',2014,'\0',NULL,2),(47,'Effects of ESPORTS','300.1','Jarrell Ng','My Publishing Company',2009,'\0',NULL,2),(48,'Social Science 101','300.2','Jordan Ng','My Publishing Publisher',2000,'\0',NULL,2),(49,'Introduction to English','400.1','Jordan Chua','The Publisher',2012,'\0',NULL,2),(50,'Introduction to Chinese','400.2','Jordan De Guzman','The Publisher',2013,'\0',NULL,2),(51,'Introduction to Science','500.1','Jordan Ng','The Publishing Company',2017,'\0',NULL,2),(52,'Basic Physics','500.2','Mark Chua','The Publishing House',2012,'\0',NULL,0),(53,'Introduction to Technology','600.1','John Paul Chua','Printing Press',2003,'\0',NULL,2),(55,'Introduction to Arts','700.1','John Paul Ng','The Publishing House',2005,'\0',NULL,2),(57,'Introduction to Literature','800.1','Jarrell Chua','Publishing Inc.',2017,'\0',NULL,2),(58,'What is Literature?','800.2','Jarrell De Guzman','The Publishing House',2007,'\0',NULL,2),(59,'Introduction to Everything','900.1','Jarrell Chua','Printing Press',2008,'\0',NULL,1),(60,'Introduction to Geography','900.2','John Paul Chua','Publishing Inc.',2009,'\0',NULL,2),(61,'HOW TO PASS MODESTA','100.100','Jordan The Great','Jordan Publishing House',2017,'\0',NULL,0),(62,'MODESTA 101','100.10','Maverick','Maverick Publishing House',2016,'\0',NULL,1),(63,'How to be Amazing','200.10','Jarrell Chua','AMAZING Publishing House',2015,'\0',NULL,1),(64,'HelloWorld','100.1','Someone','Some Publishing House',2017,'\0',NULL,0);
/*!40000 ALTER TABLE `items_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reviews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) DEFAULT NULL,
  `review` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `reviewer` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES (2,1,'Good Book! MUST READ!',6,'amazingjyc'),(3,1,'Good Explanation!',6,'amazingjyc'),(4,42,'Good Thesis!',6,'amazingjyc'),(5,42,'Nice Explanation',6,'amazingjyc'),(6,42,'Good!',6,'amazingjyc'),(7,42,'THE BEST! MUST READ!',6,'amazingjyc');
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'ADMIN'),(2,'MANAGER'),(3,'STAFF'),(4,'USER');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room_reservations`
--

DROP TABLE IF EXISTS `room_reservations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `room_reservations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(255) DEFAULT NULL,
  `end_time` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `start_time` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room_reservations`
--

LOCK TABLES `room_reservations` WRITE;
/*!40000 ALTER TABLE `room_reservations` DISABLE KEYS */;
INSERT INTO `room_reservations` VALUES (5,'2017-07-28','10 AM','RoomNumber2','9 AM',2,'Prof'),(7,'2017-07-29','10 AM','RoomNumber1','9 AM',2,'Prof');
/*!40000 ALTER TABLE `room_reservations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`id`,`role_id`),
  KEY `FKa68196081fvovjhkek5m97n3y` (`role_id`),
  CONSTRAINT `FKa68196081fvovjhkek5m97n3y` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`),
  CONSTRAINT `FKqapdy0qjgpfgvmg5s9nytof8` FOREIGN KEY (`id`) REFERENCES `users_list` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES (5,1),(4,2),(3,3),(1,4),(2,4);
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_list`
--

DROP TABLE IF EXISTS `users_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_type` int(11) DEFAULT NULL,
  `birthday` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `locked` int(11) DEFAULT NULL,
  `middle_initial` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `secret_answer` varchar(255) DEFAULT NULL,
  `secret_question` varchar(255) DEFAULT NULL,
  `student_employee_number` double DEFAULT NULL,
  `user_type` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `wrong_attempts` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_list`
--

LOCK TABLES `users_list` WRITE;
/*!40000 ALTER TABLE `users_list` DISABLE KEYS */;
INSERT INTO `users_list` VALUES (1,1,'1998/12/20','HelloWorld@dlsu.edu.ph','Hello','World',0,'K','$2a$10$fT7AY97e5k4awk8os5seCuvdjWYEbtZN0wJGjM5wVd9IpQuZfl86W','Hello World!','What is my favorite sentence?',11401234,4,'HelloWorld',4),(2,1,'1998/12/20','Prof@gmail.com','Prof','Best',0,'C','$2a$10$nz4.CavQHU9.U0JMnQoDNeq1r0z6rDgAW6H6JHxeTZwS83OzMXhKC','None','What is my favorite subject?',11412345,4,'Prof',0),(3,NULL,NULL,'staff1@gmail.com',NULL,NULL,0,NULL,'$2a$10$TKm0QKImRx4xVE5v7loEAO6JVzQYkjobAPQjKk4xclgvCp.I66S0m',NULL,NULL,0,3,'staff',0),(4,NULL,NULL,'manager1@gmail.com',NULL,NULL,0,NULL,'$2a$10$f1Ks4V3aphjPgwVxbVPkZ.I1S0BKGpin94OY0Muofo3obS31NrXQC',NULL,NULL,0,2,'manager1234',0),(5,1,'1998/12/19','admin@gmail.com','admin','admin',0,'A','$2a$10$.Cn9q2rrXMfk/afN.ACTg.dzfV.yAq0e.9Pa0v0unzI/5rZSP/04W','Admin','Who am I?',11011111,1,'admin',0);
/*!40000 ALTER TABLE `users_list` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-07-28 22:13:05
