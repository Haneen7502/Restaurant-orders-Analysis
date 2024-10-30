-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: restaurant_db
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `menu_items`
--

DROP TABLE IF EXISTS `menu_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_items` (
  `menu_item_id` smallint NOT NULL,
  `item_name` varchar(45) DEFAULT NULL,
  `category` varchar(45) DEFAULT NULL,
  `price` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`menu_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_items`
--

LOCK TABLES `menu_items` WRITE;
/*!40000 ALTER TABLE `menu_items` DISABLE KEYS */;
INSERT INTO `menu_items` VALUES (101,'Hamburger','American',12.95),(102,'Cheeseburger','American',13.95),(103,'Hot Dog','American',9.00),(104,'Veggie Burger','American',10.50),(105,'Mac & Cheese','American',7.00),(106,'French Fries','American',7.00),(107,'Orange Chicken','Asian',16.50),(108,'Tofu Pad Thai','Asian',14.50),(109,'Korean Beef Bowl','Asian',17.95),(110,'Pork Ramen','Asian',17.95),(111,'California Roll','Asian',11.95),(112,'Salmon Roll','Asian',14.95),(113,'Edamame','Asian',5.00),(114,'Potstickers','Asian',9.00),(115,'Chicken Tacos','Mexican',11.95),(116,'Steak Tacos','Mexican',13.95),(117,'Chicken Burrito','Mexican',12.95),(118,'Steak Burrito','Mexican',14.95),(119,'Chicken Torta','Mexican',11.95),(120,'Steak Torta','Mexican',13.95),(121,'Cheese Quesadillas','Mexican',10.50),(122,'Chips & Salsa','Mexican',7.00),(123,'Chips & Guacamole','Mexican',9.00),(124,'Spaghetti','Italian',14.50),(125,'Spaghetti & Meatballs','Italian',17.95),(126,'Fettuccine Alfredo','Italian',14.50),(127,'Meat Lasagna','Italian',17.95),(128,'Cheese Lasagna','Italian',15.50),(129,'Mushroom Ravioli','Italian',15.50),(130,'Shrimp Scampi','Italian',19.95),(131,'Chicken Parmesan','Italian',17.95),(132,'Eggplant Parmesan','Italian',16.95);
/*!40000 ALTER TABLE `menu_items` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-29 19:11:44
