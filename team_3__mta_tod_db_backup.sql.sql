
-- MySQL dump 10.13  Distrib 8.0.31, for macos12 (x86_64)
--
-- Host: localhost    Database: mta_tod1
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

-- -----------------------------------------------------
-- Schema mta_tod11
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mta_tod1` DEFAULT CHARACTER SET utf8mb3 ;
USE `mta_tod1`;

--
-- Table structure for table `access`
--

DROP TABLE IF EXISTS `access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `access` (
  `access_id` int NOT NULL AUTO_INCREMENT,
  `intersection_density` float DEFAULT NULL,
  `short_trip_opp_analysis` int DEFAULT NULL,
  `modes_served` int DEFAULT NULL,
  `ped_access_score` int DEFAULT NULL,
  `bike_access_id` int NOT NULL,
  PRIMARY KEY (`access_id`),
  INDEX `bike_access_id_idx` (`bike_access_id` ASC) VISIBLE,
  CONSTRAINT `bike_access_id`
    FOREIGN KEY (`bike_access_id`)
    REFERENCES `mta_tod1`.`bike_access` (`bike_access_id`))
ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `access`
--

LOCK TABLES `access` WRITE;
/*!40000 ALTER TABLE `access` DISABLE KEYS */;
INSERT INTO `access` VALUES (1,327.275,7,5,5,1),(2,264.876,10,4,5,2),(3,21.6486,3,2,2,3),(4,57.305,5,2,3,4),(5,86.5942,6,2,4,5),(6,99.3286,6,2,4,6),(7,191.017,6,2,4,7),(8,217.759,7,2,4,8),(9,196.11,6,2,4,9),(10,342.556,8,2,5,10),(11,352.744,8,2,5,11),(12,342.556,11,3,5,12),(13,371.846,9,3,5,13),(14,318.361,10,3,5,14),(15,332.369,11,3,5,15),(16,297.986,10,4,5,16),(17,0,3,4,1,17),(18,19.1017,2,4,1,18),(19,89.1411,6,3,4,19),(20,127.344,3,1,2,20),(21,105.696,3,1,2,21),(22,76.4066,3,1,2,22),(23,61.1253,3,2,2,23),(24,62.3988,3,1,2,24),(25,71.3129,3,2,2,25),(26,61.1253,5,2,3,26),(27,67.4925,6,1,3,27),(28,266.15,6,1,4,28),(29,296.712,7,4,5,29),(30,336.189,10,3,5,30),(31,369.299,10,3,5,31),(32,373.119,8,2,5,32),(33,342.556,9,3,5,33),(34,331.095,8,2,5,34),(35,245.775,6,2,4,35),(36,105.696,4,2,3,36),(37,45.844,4,2,3,37),(38,87.8676,7,2,4,38),(39,38.2033,2,2,1,39),(40,70.0394,6,2,4,40),(41,63.6722,6,1,4,41),(42,58.5784,3,2,2,42),(43,16.5548,2,2,1,43),(44,12.7344,1,1,1,44),(45,14.0079,4,2,2,45),(46,22.922,1,1,1,46),(47,19.1017,5,2,2,47),(48,50.9378,2,1,1,48),(49,178.282,2,3,2,49),(50,31.8361,3,2,2,50),(51,33.1095,1,3,1,51),(52,276.337,6,4,4,52),(53,118.43,3,2,2,53),(54,2.54689,2,4,1,54),(55,52.2112,2,2,1,55),(56,5.09378,3,2,1,56),(57,92.9614,3,2,2,57),(58,62.3988,2,4,2,58),(59,43.2971,3,1,2,59),(60,30.5627,1,3,1,60),(61,12.7344,1,1,1,61),(62,17.8282,1,2,1,62),(63,NULL,NULL,1,NULL,63),(64,85.3208,3,2,2,64),(65,35.6564,2,2,1,65),(66,72.5863,6,4,4,66),(67,115.883,3,5,3,67),(68,147.72,6,2,4,68),(69,NULL,NULL,2,NULL,69),(70,NULL,NULL,1,NULL,70),(71,0,NULL,3,1,71),(72,141.352,3,2,2,72),(73,39.4768,1,2,1,73),(74,122.251,5,3,4,74),(75,34.383,3,3,1,75),(76,11.461,1,1,1,76),(77,3.82033,1,1,1,77),(78,5.09378,2,1,1,78),(79,57.305,4,2,2,79),(80,35.6564,2,3,1,80),(81,86.5942,5,2,3,81),(82,75.1332,3,2,2,82),(83,182.103,8,3,5,83),(84,100.602,4,1,3,84),(85,179.556,4,2,3,85),(86,163.001,11,4,5,86),(87,NULL,NULL,3,NULL,87),(88,NULL,NULL,3,NULL,88),(89,NULL,NULL,4,NULL,89),(90,NULL,NULL,3,NULL,90),(91,NULL,NULL,3,NULL,91),(92,NULL,NULL,3,NULL,92);
/*!40000 ALTER TABLE `access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bike_access`
--

DROP TABLE IF EXISTS `bike_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bike_access` (
  `bike_access_id` int NOT NULL,
  `num_bike_racks` int DEFAULT NULL,
  `num_bike_lockers` int DEFAULT NULL,
  `bike_access_score` int DEFAULT NULL,
  PRIMARY KEY (`bike_access_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bike_access`
--

LOCK TABLES `bike_access` WRITE;
/*!40000 ALTER TABLE `bike_access` DISABLE KEYS */;
INSERT INTO `bike_access` VALUES (1,7,0,5),(2,5,0,3),(3,0,10,5),(4,2,8,1),(5,2,10,2),(6,2,10,4),(7,2,10,4),(8,2,10,3),(9,0,10,4),(10,0,0,3),(11,0,0,4),(12,0,0,4),(13,0,0,4),(14,0,0,3),(15,0,0,4),(16,0,0,3),(17,1,0,2),(18,0,10,1),(19,2,10,3),(20,2,0,1),(21,2,0,4),(22,2,0,1),(23,0,0,2),(24,2,0,1),(25,2,0,2),(26,2,0,3),(27,0,0,5),(28,0,0,3),(29,0,0,3),(30,0,0,4),(31,0,0,3),(32,0,0,4),(33,0,0,4),(34,2,0,4),(35,2,0,4),(36,3,0,3),(37,0,0,4),(38,3,0,3),(39,0,8,3),(40,2,0,1),(41,2,0,4),(42,0,14,1),(43,0,0,4),(44,0,0,1),(45,0,0,4),(46,0,0,1),(47,0,0,4),(48,1,0,4),(49,3,0,5),(50,1,0,1),(51,0,10,2),(52,1,0,4),(53,1,6,1),(54,0,20,1),(55,4,10,4),(56,6,0,1),(57,3,10,1),(58,35,8,5),(59,0,0,1),(60,2,10,1),(61,0,0,1),(62,1,0,4),(63,NULL,NULL,NULL),(64,8,10,4),(65,0,8,1),(66,70,27,4),(67,40,20,4),(68,2,1,1),(69,NULL,NULL,NULL),(70,NULL,NULL,NULL),(71,1,0,1),(72,2,0,4),(73,4,0,1),(74,6,0,3),(75,10,0,1),(76,0,0,2),(77,4,0,1),(78,0,0,2),(79,4,0,2),(80,3,0,1),(81,0,0,3),(82,0,0,2),(83,32,20,4),(84,2,0,1),(85,2,0,1),(86,0,0,4),(87,NULL,NULL,NULL),(88,NULL,NULL,NULL),(89,NULL,NULL,NULL),(90,NULL,NULL,NULL),(91,NULL,NULL,NULL),(92,NULL,NULL,NULL);
/*!40000 ALTER TABLE `bike_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `county`
--

DROP TABLE IF EXISTS `county`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `county` (
  `county_id` int NOT NULL,
  `county_name` varchar(100) NOT NULL,
  PRIMARY KEY (`county_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `county`
--

LOCK TABLES `county` WRITE;
/*!40000 ALTER TABLE `county` DISABLE KEYS */;
INSERT INTO `county` VALUES (1,'Anne Arundel County'),(2,'Baltimore City'),(3,'Baltimore County'),(4,'City of Brunswick'),(5,'City of College Park'),(6,'City of Frederick'),(7,'City of Gaithersburg'),(8,'City of Harpers Ferry, WV'),(9,'City of Laurel'),(10,'City of Perryville'),(11,'City of Rockville'),(12,'Frederick County'),(13,'Harford County'),(14,'Howard County'),(15,'Montgomery County'),(16,'Prince Georges County'),(17,'West Virginia');
/*!40000 ALTER TABLE `county` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parking`
--

DROP TABLE IF EXISTS `parking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parking` (
  `parking_id` int NOT NULL AUTO_INCREMENT,
  `parking_spots_reg` int DEFAULT NULL,
  `parking_spots_ada` int DEFAULT NULL,
  `vehicles_parked` int DEFAULT NULL,
  `parking_score` int DEFAULT NULL,
  `spaces_relatives_avg_weekday_daily_total` float DEFAULT NULL,
  PRIMARY KEY (`parking_id`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parking`
--

LOCK TABLES `parking` WRITE;
/*!40000 ALTER TABLE `parking` DISABLE KEYS */;
INSERT INTO `parking` VALUES (1,0,0,494,5,0),(2,28,0,0,3,0.03),(3,2883,95,2232,1,0.64),(4,540,25,411,3,0.36),(5,1000,44,677,5,0.55),(6,675,22,258,2,0.27),(7,318,19,266,5,0.11),(8,235,12,137,1,0.12),(9,133,6,133,3,0.02),(10,0,0,0,4,0),(11,0,0,0,3,0),(12,0,0,0,1,0),(13,0,0,0,1,0),(14,0,0,0,1,0),(15,0,0,0,1,0),(16,0,0,0,2,0),(17,0,0,0,4,0),(18,30,4,22,1,0.13),(19,707,16,152,3,0.57),(20,0,0,0,5,0),(21,0,0,0,4,0),(22,335,11,265,5,0.51),(23,33,2,32,1,0.07),(24,27,3,20,4,0.09),(25,164,3,93,1,0.12),(26,0,0,0,3,0),(27,0,0,0,5,0),(28,0,0,0,1,0),(29,0,0,0,2,0),(30,0,0,0,5,0),(31,0,0,0,1,0),(32,0,0,0,4,0),(33,0,0,0,3,0),(34,0,0,0,2,0),(35,36,2,36,1,0.03),(36,0,0,0,3,0),(37,0,0,0,5,0),(38,79,6,75,1,0.16),(39,197,6,141,1,0.42),(40,341,15,212,1,0.38),(41,0,0,0,4,0),(42,769,17,310,4,0.7),(43,341,8,43,1,1.08),(44,0,0,0,3,0),(45,0,0,0,4,0),(46,0,0,0,5,0),(47,145,5,31,5,0.17),(48,168,14,165,1,1.08039),(49,279,8,284,5,1.48932),(50,334,14,261,4,1.39895),(51,348,6,290,2,1.01212),(52,323,11,333,3,0.446698),(53,795,44,699,4,0.619601),(54,0,0,975,3,0),(55,1920,56,1769,5,0.805116),(56,618,14,415,4,0.992771),(57,257,10,239,4,0.628106),(58,0,0,0,3,0),(59,32,2,18,1,3.52294),(60,842,18,594,2,1.80203),(61,32,0,7,1,48),(62,363,30,348,5,0.975806),(63,NULL,NULL,NULL,NULL,NULL),(64,470,14,443,5,0.843175),(65,667,15,209,1,2.05653),(66,0,0,3164,4,0),(67,0,0,0,3,0),(68,108,4,13,2,2.07029),(69,NULL,NULL,NULL,NULL,NULL),(70,NULL,NULL,NULL,NULL,NULL),(71,84,4,56,4,1.01103),(72,626,20,490,4,1.14112),(73,499,15,489,5,1.29751),(74,89,4,30,1,0.857831),(75,791,23,485,2,3.8367),(76,16,0,14,2,0.633663),(77,73,2,66,1,0.975501),(78,16,0,13,1,1.08475),(79,672,22,667,4,0.888399),(80,343,8,160,1,1.07918),(81,0,0,370,3,0),(82,27,0,25,3,0.621881),(83,0,0,500,5,0),(84,41,1,7,3,0.923077),(85,102,5,40,1,0.623218),(86,0,0,0,1,0),(87,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `parking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rail_line`
--

DROP TABLE IF EXISTS `rail_line`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rail_line` (
  `rail_id` int NOT NULL AUTO_INCREMENT,
  `rail_line` varchar(100) NOT NULL,
  PRIMARY KEY (`rail_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rail_line`
--

LOCK TABLES `rail_line` WRITE;
/*!40000 ALTER TABLE `rail_line` DISABLE KEYS */;
INSERT INTO `rail_line` VALUES (1,'Light Rail'),(2,'MARC: Brunswick Line'),(3,'MARC: Camden Line'),(4,'MARC: Penn Line'),(5,'Metro'),(6,'WMATA Metro'),(7,'Amtrak');
/*!40000 ALTER TABLE `rail_line` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rail_station`
--

DROP TABLE IF EXISTS `rail_station`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rail_station` (
  `station_id` int NOT NULL,
  `rail_id` int NOT NULL,
  INDEX `rail_id_idx` (`rail_id` ASC) VISIBLE,
  PRIMARY KEY (`station_id`, `rail_id`),
  CONSTRAINT `rail_id`
    FOREIGN KEY (`rail_id`)
    REFERENCES `mta_tod1`.`rail_line` (`rail_id`),
  CONSTRAINT `station_id`
    FOREIGN KEY (`station_id`)
    REFERENCES `mta_tod1`.`station` (`station_id`))
ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rail_station`
--

LOCK TABLES `rail_station` WRITE;
/*!40000 ALTER TABLE `rail_station` DISABLE KEYS */;
INSERT INTO `rail_station` VALUES (1,1),(2,1),(17,1),(18,1),(19,1),(20,1),(21,1),(22,1),(23,1),(24,1),(25,1),(26,1),(27,1),(28,1),(29,1),(30,1),(31,1),(32,1),(33,1),(34,1),(35,1),(36,1),(37,1),(38,1),(39,1),(40,1),(41,1),(42,1),(43,1),(44,1),(45,1),(46,1),(47,1),(69,2),(70,2),(71,2),(72,2),(73,2),(74,2),(75,2),(76,2),(77,2),(78,2),(79,2),(80,2),(81,2),(82,2),(83,2),(84,2),(85,2),(86,2),(2,3),(59,3),(60,3),(61,3),(62,3),(63,3),(64,3),(65,3),(66,3),(67,3),(68,3),(1,4),(48,4),(49,4),(50,4),(51,4),(52,4),(53,4),(54,4),(55,4),(56,4),(57,4),(58,4),(3,5),(4,5),(5,5),(6,5),(7,5),(8,5),(9,5),(10,5),(11,5),(12,5),(13,5),(14,5),(15,5),(16,5),(58,6),(66,6),(67,6),(82,6),(86,6),(87,6),(88,6),(89,6),(90,6),(91,6),(92,6),(1,7),(58,7),(69,7),(71,7),(83,7);
/*!40000 ALTER TABLE `rail_station` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `station`
--

DROP TABLE IF EXISTS `station`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `station` (
  `station_id` int NOT NULL,
  `station_name` varchar(100) NOT NULL,
  `area_population` bigint unsigned DEFAULT NULL,
  `station_facility_score` int DEFAULT NULL,
  `tod_zoning_score` int DEFAULT NULL,
  `county_id` int NOT NULL,
  `parking_id` int NOT NULL,
  `access_id` int NOT NULL,
  PRIMARY KEY (`station_id`),
  KEY `county_id_idx` (`county_id`),
  KEY `parking_id_idx` (`parking_id`),
  KEY `access_id_idx` (`access_id`),
  CONSTRAINT `access_id` FOREIGN KEY (`access_id`) REFERENCES `access` (`access_id`),
  CONSTRAINT `county_id` FOREIGN KEY (`county_id`) REFERENCES `county` (`county_id`),
  CONSTRAINT `parking_id` FOREIGN KEY (`parking_id`) REFERENCES `parking` (`parking_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `station`
--

LOCK TABLES `station` WRITE;
/*!40000 ALTER TABLE `station` DISABLE KEYS */;
INSERT INTO `station` VALUES (1,'Penn Station',604827,5,5,2,1,1),(2,'Camden Station',549217,1,5,2,2,2),(3,'Owings Mills',175524,3,4,3,3,3),(4,'Old Court',275633,3,1,3,4,4),(5,'Milford Mill',319823,3,1,3,5,5),(6,'Resisterstown Plaza',400814,2,5,2,6,6),(7,'Rogers Avenue',470630,3,5,2,7,7),(8,'West Cold Spring',546561,3,5,2,8,8),(9,'Mondawmin',622731,3,5,2,9,9),(10,'Penn North',623771,3,5,2,10,10),(11,'Upton',608105,1,5,2,11,11),(12,'State Center',598132,1,5,2,12,12),(13,'Lexington Market',575933,1,5,2,13,13),(14,'Charles Center',566012,1,5,2,14,14),(15,'Shot Tower',561369,2,5,2,15,15),(16,'Johns Hopkins Hospital',574352,2,5,2,16,16),(17,'BWI Airport',202689,3,1,1,17,17),(18,'BWI Business District',208356,2,2,1,18,18),(19,'Cromwell Station/Glen Burnie',188867,3,2,1,19,19),(20,'Ferndale',199270,2,1,1,20,20),(21,'Linthicum',201438,3,3,1,21,21),(22,'North Linthicum',215086,3,1,1,22,22),(23,'Nursery Road',230560,3,1,1,23,23),(24,'Baltimore Highlands',321577,3,1,3,24,24),(25,'Patapsco',372674,1,1,3,25,25),(26,'Cherry Hill',432625,3,5,2,26,26),(27,'Westport',459602,2,5,2,27,27),(28,'Hamburg Street',534100,1,5,2,28,28),(29,'Pratt Street/Convention Center',556292,1,5,2,29,29),(30,'Baltimore St./1st Mariner Arena',565504,1,5,2,30,30),(31,'Lexington Street',574546,1,5,2,31,31),(32,'Centre Street',586468,1,5,2,32,32),(33,'Cultural Center/State Center',599830,2,5,2,33,33),(34,'Mount Royal/University of Baltimore',609062,5,5,2,34,34),(35,'North Avenue',612599,3,5,2,35,35),(36,'Woodberry',157509,3,5,2,36,36),(37,'Cold Spring Lane',592208,2,5,2,37,37),(38,'Mount Washington',460390,2,5,2,38,38),(39,'Falls Road',430950,3,2,3,39,39),(40,'Lutherville',191933,3,2,3,40,40),(41,'Timonium Business Park',172673,3,3,3,41,41),(42,'Timonium Fairgrounds',129973,3,3,3,42,42),(43,'Warren Road',85777,2,3,3,43,43),(44,'Gilroy Road',76318,2,3,3,44,44),(45,'McCormick Road',73036,2,3,3,45,45),(46,'Pepper Road',72184,3,3,3,46,46),(47,'Hunt Valley',69912,2,4,3,47,47),(48,'Perryville',28554,3,3,10,48,48),(49,'Aberdeen',46940,3,4,13,49,49),(50,'Edgewood',81133,3,3,13,50,50),(51,'Martin State Airport',135189,3,4,3,51,51),(52,'West Baltimore',572849,1,5,2,52,52),(53,'Halethorpe',282770,3,2,3,53,53),(54,'BWI Rail Station',183449,5,1,1,54,54),(55,'Odenton',133367,5,3,1,55,55),(56,'Bowie State',118615,1,2,16,56,56),(57,'Seabrook',231434,2,3,16,57,57),(58,'New Carrollton',301688,3,4,16,58,58),(59,'St. Denis',225363,1,2,3,59,59),(60,'Dorsey',145241,5,4,14,60,60),(61,'Jessup',175470,1,2,1,61,61),(62,'Savage',174932,2,5,14,62,62),(63,'Laurel Racetrack',143527,NULL,NULL,14,63,63),(64,'Laurel Mainstreet',147126,2,5,9,64,64),(65,'Muirkirk',192427,1,3,16,65,65),(66,'Greenbelt',347842,1,4,16,66,66),(67,'College Park',368352,1,5,5,67,67),(68,'Riverdale',364380,1,3,16,68,68),(69,'Martinsburg',NULL,NULL,NULL,17,69,69),(70,'Duffields',NULL,NULL,NULL,17,70,70),(71,'Harpers Ferry',NULL,1,1,8,71,71),(72,'Brunswick',11322,3,3,4,72,72),(73,'Point of Rocks',8424,1,1,12,73,73),(74,'Frederick',110368,3,5,6,74,74),(75,'Monocacy',101546,2,3,12,75,75),(76,'Dickerson',5046,1,3,15,76,76),(77,'Barnesville',11447,1,1,15,77,77),(78,'Boyds',111308,1,3,15,78,78),(79,'Germantown',216450,1,4,15,79,79),(80,'Metropolitan Grove',289266,1,2,7,80,80),(81,'Gaithersburg',282045,2,5,7,81,81),(82,'Washington Grove',281726,1,3,15,82,82),(83,'Rockville',316574,1,5,11,83,83),(84,'Garrett Park',389820,1,3,15,84,84),(85,'Kensington',418254,3,4,15,85,85),(86,'Silver Spring',391426,1,5,15,86,86),(87,'Branch Avenue',NULL,NULL,NULL,16,87,87),(88,'Naylor Road',NULL,NULL,NULL,16,87,88),(89,'Shady Grove',NULL,NULL,NULL,15,87,89),(90,'Twinbrook',NULL,NULL,NULL,15,87,90),(91,'Wheaton',NULL,NULL,NULL,15,87,91),(92,'White Flint',NULL,NULL,NULL,15,87,92);
/*!40000 ALTER TABLE `station` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transit_connection`
--

DROP TABLE IF EXISTS `transit_connection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transit_connection` (
  `transit_id` int NOT NULL,
  `transit_connection` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`transit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transit_connection`
--

LOCK TABLES `transit_connection` WRITE;
/*!40000 ALTER TABLE `transit_connection` DISABLE KEYS */;
INSERT INTO `transit_connection` VALUES (1,'BaltimoreLink Core Bus'),(2,'Charm City Circulator'),(3,'Amtrak'),(4,'Commuter Bus'),(5,'Local Transit'),(6,'WMATA Metrobus'),(7,'N/A');
/*!40000 ALTER TABLE `transit_connection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transit_station`
--

DROP TABLE IF EXISTS `transit_station`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transit_station` (
  `station_id` int NOT NULL,
  `transit_id` int NOT NULL,
  PRIMARY KEY (`station_id`,`transit_id`),
  KEY `transit_id_idx` (`transit_id`),
  CONSTRAINT `station1_id` FOREIGN KEY (`station_id`) REFERENCES `station` (`station_id`),
  CONSTRAINT `transit_id12345` FOREIGN KEY (`transit_id`) REFERENCES `transit_connection` (`transit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transit_station`
--

LOCK TABLES `transit_station` WRITE;
/*!40000 ALTER TABLE `transit_station` DISABLE KEYS */;
INSERT INTO `transit_station` VALUES (1,1),(58,1),(69,1),(71,1),(1,2),(2,2),(3,2),(4,2),(5,2),(6,2),(7,2),(8,2),(9,2),(10,2),(11,2),(12,2),(13,2),(14,2),(15,2),(16,2),(17,2),(18,2),(19,2),(23,2),(25,2),(26,2),(29,2),(30,2),(31,2),(32,2),(33,2),(34,2),(35,2),(36,2),(37,2),(38,2),(39,2),(40,2),(42,2),(43,2),(45,2),(47,2),(51,2),(52,2),(53,2),(54,2),(1,3),(15,3),(16,3),(29,3),(2,4),(12,4),(13,4),(14,4),(16,4),(17,4),(19,4),(29,4),(30,4),(31,4),(33,4),(49,4),(54,4),(60,4),(67,4),(74,4),(75,4),(80,4),(86,4),(89,4),(17,5),(18,5),(49,5),(50,5),(54,5),(55,5),(60,5),(62,5),(64,5),(65,5),(66,5),(67,5),(68,5),(69,5),(71,5),(72,5),(73,5),(74,5),(75,5),(79,5),(80,5),(81,5),(82,5),(83,5),(85,5),(86,5),(87,5),(88,5),(89,5),(90,5),(91,5),(92,5),(18,6),(56,6),(57,6),(58,6),(66,6),(67,6),(83,6),(86,6),(87,6),(88,6),(89,6),(90,6),(91,6),(92,6),(20,7),(21,7),(22,7),(24,7),(27,7),(28,7),(41,7),(44,7),(46,7),(48,7),(59,7),(61,7),(63,7),(70,7),(76,7),(77,7),(78,7),(84,7);
/*!40000 ALTER TABLE `transit_station` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-04 18:27:38
