CREATE DATABASE  IF NOT EXISTS `laitaidb` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `laitaidb`;
-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: laitaidb
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `agentcompany`
--

DROP TABLE IF EXISTS `agentcompany`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `agentcompany` (
  `AgentCompany_ID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) NOT NULL,
  `Tel` bigint DEFAULT NULL,
  `Location` varchar(80) DEFAULT NULL,
  `Representative` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`AgentCompany_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agentcompany`
--

LOCK TABLES `agentcompany` WRITE;
/*!40000 ALTER TABLE `agentcompany` DISABLE KEYS */;
INSERT INTO `agentcompany` VALUES (1,'安徽喜乐健生物技术有限公司',55168588852,'公投立恒工业广场B-3-2西','田果德'),(2,'巢湖市罗拉医疗器械有限公司',55185211227,'世纪新都商业街56-113号',NULL);
/*!40000 ALTER TABLE `agentcompany` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add 中介公司',7,'add_agentcompany'),(26,'Can change 中介公司',7,'change_agentcompany'),(27,'Can delete 中介公司',7,'delete_agentcompany'),(28,'Can view 中介公司',7,'view_agentcompany'),(29,'Can add 销售合同',9,'add_contract'),(30,'Can change 销售合同',9,'change_contract'),(31,'Can delete 销售合同',9,'delete_contract'),(32,'Can view 销售合同',9,'view_contract'),(33,'Can add 设备清单',8,'add_equipment'),(34,'Can change 设备清单',8,'change_equipment'),(35,'Can delete 设备清单',8,'delete_equipment'),(36,'Can view 设备清单',8,'view_equipment'),(37,'Can add 记录',10,'add_equipmentsincontract'),(38,'Can change 记录',10,'change_equipmentsincontract'),(39,'Can delete 记录',10,'delete_equipmentsincontract'),(40,'Can view 记录',10,'view_equipmentsincontract'),(41,'Can add 医院列表',12,'add_hospital'),(42,'Can change 医院列表',12,'change_hospital'),(43,'Can delete 医院列表',12,'delete_hospital'),(44,'Can view 医院列表',12,'view_hospital'),(45,'Can add 设备生产商',11,'add_producer'),(46,'Can change 设备生产商',11,'change_producer'),(47,'Can delete 设备生产商',11,'delete_producer'),(48,'Can view 设备生产商',11,'view_producer');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$216000$ZniVCEWi1JEn$yozzOSDGOjEV0A79WIqT2kWLxtdfnu05MS7hfCjpJUI=','2020-12-03 19:15:41.911760',1,'admin','','','lich2000117@gmail.com',1,1,'2020-07-24 10:42:16.560176'),(2,'pbkdf2_sha256$216000$xLBtFoOH8DUp$zxwsfla5Mg6EQjEe6IID/mBsgJ6O8sO9Jl32MdDjUxs=','2020-12-01 16:45:34.562141',0,'laitai','','','',1,1,'2020-07-24 14:43:00.000000');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
INSERT INTO `auth_user_user_permissions` VALUES (25,2,25),(26,2,26),(27,2,27),(28,2,28),(29,2,29),(30,2,30),(31,2,31),(32,2,32),(33,2,33),(34,2,34),(35,2,35),(36,2,36),(37,2,37),(38,2,38),(39,2,39),(40,2,40),(41,2,41),(42,2,42),(43,2,43),(44,2,44),(45,2,45),(46,2,46),(47,2,47),(48,2,48);
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contract`
--

DROP TABLE IF EXISTS `contract`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contract` (
  `Contract_ID` int NOT NULL AUTO_INCREMENT,
  `Date` date NOT NULL,
  `Hospital_ID` int DEFAULT NULL,
  `AgentCompany_ID` int DEFAULT NULL,
  `Warranty` int DEFAULT NULL,
  `File` varchar(6000) DEFAULT NULL,
  `text` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`Contract_ID`),
  KEY `fk_Contract_Hospital_idx` (`Hospital_ID`),
  KEY `fk_Contract_AgentCompany1_idx` (`AgentCompany_ID`),
  CONSTRAINT `fk_Contract_AgentCompany1` FOREIGN KEY (`AgentCompany_ID`) REFERENCES `agentcompany` (`AgentCompany_ID`),
  CONSTRAINT `fk_Contract_Hospital` FOREIGN KEY (`Hospital_ID`) REFERENCES `hospital` (`Hospital_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contract`
--

LOCK TABLES `contract` WRITE;
/*!40000 ALTER TABLE `contract` DISABLE KEYS */;
INSERT INTO `contract` VALUES (1,'2017-12-12',1,1,24,NULL,NULL),(2,'2018-04-11',NULL,2,NULL,NULL,NULL),(7,'2018-02-24',5,NULL,12,'','总价：  615000.00'),(12,'2017-01-02',1,NULL,12,'',NULL);
/*!40000 ALTER TABLE `contract` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=192 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2020-07-24 10:51:49.725216','1','Agentcompany object (1)',2,'[]',7,1),(2,'2020-07-24 14:44:17.687496','2','laitai',2,'[{\"changed\": {\"fields\": [\"User permissions\"]}}]',4,1),(3,'2020-07-24 14:45:08.126250','2','laitai',2,'[{\"changed\": {\"fields\": [\"User permissions\", \"Last login\"]}}]',4,1),(4,'2020-07-24 14:45:34.992863','2','laitai',2,'[{\"changed\": {\"fields\": [\"Superuser status\", \"Last login\"]}}]',4,1),(5,'2020-07-24 14:47:14.888186','22','安徽省庐江县人民医院 合同',2,'[{\"changed\": {\"fields\": [\"\\u51fa\\u552e\\u516c\\u53f8\"]}}]',9,2),(6,'2020-07-24 14:47:21.813128','22','安徽省庐江县人民医院 合同',2,'[{\"changed\": {\"fields\": [\"\\u51fa\\u552e\\u516c\\u53f8\"]}}]',9,2),(7,'2020-07-24 15:30:05.414496','2','laitai',2,'[{\"changed\": {\"fields\": [\"Superuser status\", \"User permissions\", \"Last login\"]}}]',4,1),(8,'2020-07-26 02:26:25.366620','18','马鞍山市人民医院',2,'[{\"added\": {\"name\": \"\\u8bb0\\u5f55\", \"object\": \"2019-05-27 \\u9a6c\\u978d\\u5c71\\u5e02\\u4eba\\u6c11\\u533b\\u9662\"}}]',9,1),(9,'2020-07-26 02:27:40.325985','78','2019-05-27 马鞍山市人民医院',3,'',10,1),(10,'2020-07-26 03:01:48.664846','7','山东浩嘉医疗科技有限公司',2,'[]',7,1),(11,'2020-07-26 12:04:40.293810','22','安徽省庐江县人民医院',2,'[{\"added\": {\"name\": \"\\u8bb0\\u5f55\", \"object\": \"2019-07-08 \\u5b89\\u5fbd\\u7701\\u5e90\\u6c5f\\u53bf\\u4eba\\u6c11\\u533b\\u9662\"}}]',9,1),(12,'2020-07-26 12:04:48.995952','22','安徽省庐江县人民医院',2,'[{\"deleted\": {\"name\": \"\\u8bb0\\u5f55\", \"object\": \"2019-07-08 \\u5b89\\u5fbd\\u7701\\u5e90\\u6c5f\\u53bf\\u4eba\\u6c11\\u533b\\u9662\"}}]',9,1),(13,'2020-07-26 12:05:30.441331','22','安徽省庐江县人民医院',2,'[{\"added\": {\"name\": \"\\u8bb0\\u5f55\", \"object\": \"2019-07-08 \\u5b89\\u5fbd\\u7701\\u5e90\\u6c5f\\u53bf\\u4eba\\u6c11\\u533b\\u9662\"}}]',9,1),(14,'2020-07-26 12:05:41.297117','22','安徽省庐江县人民医院',2,'[{\"deleted\": {\"name\": \"\\u8bb0\\u5f55\", \"object\": \"2019-07-08 \\u5b89\\u5fbd\\u7701\\u5e90\\u6c5f\\u53bf\\u4eba\\u6c11\\u533b\\u9662\"}}]',9,1),(15,'2020-07-26 12:05:54.850573','22','安徽省庐江县人民医院',2,'[{\"added\": {\"name\": \"\\u8bb0\\u5f55\", \"object\": \"2019-07-08 \\u5b89\\u5fbd\\u7701\\u5e90\\u6c5f\\u53bf\\u4eba\\u6c11\\u533b\\u9662\"}}]',9,1),(16,'2020-07-26 12:06:04.444429','22','安徽省庐江县人民医院',2,'[{\"deleted\": {\"name\": \"\\u8bb0\\u5f55\", \"object\": \"2019-07-08 \\u5b89\\u5fbd\\u7701\\u5e90\\u6c5f\\u53bf\\u4eba\\u6c11\\u533b\\u9662\"}}]',9,1),(17,'2020-07-28 10:40:22.246436','22','安徽省庐江县人民医院',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',9,1),(18,'2020-07-28 10:42:46.419899','22','安徽省庐江县人民医院',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',9,1),(19,'2020-07-28 10:43:53.991086','22','安徽省庐江县人民医院',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',9,1),(20,'2020-07-28 10:44:22.937792','22','安徽省庐江县人民医院',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',9,1),(21,'2020-07-28 10:44:44.583167','22','安徽省庐江县人民医院',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',9,1),(22,'2020-07-28 10:54:33.234609','22','安徽省庐江县人民医院',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',9,1),(23,'2020-07-28 10:55:47.484696','22','安徽省庐江县人民医院',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',9,1),(24,'2020-07-28 11:17:05.037920','22','安徽省庐江县人民医院',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',9,1),(25,'2020-07-28 11:17:31.864488','22','安徽省庐江县人民医院',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',9,1),(26,'2020-07-28 11:19:05.380327','22','安徽省庐江县人民医院',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',9,1),(27,'2020-07-28 12:23:29.871123','22','安徽省庐江县人民医院',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',9,1),(28,'2020-07-28 12:24:05.630033','22','安徽省庐江县人民医院',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',9,1),(29,'2020-07-28 12:25:01.059695','22','安徽省庐江县人民医院',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',9,1),(30,'2020-07-28 12:26:54.210048','22','安徽省庐江县人民医院',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',9,1),(31,'2020-07-28 12:56:39.593663','22','安徽省庐江县人民医院',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',9,1),(32,'2020-07-28 13:00:15.189047','22','安徽省庐江县人民医院',2,'[{\"changed\": {\"fields\": [\"\\u4e0a\\u4f20\\u9644\\u4ef6(\\u5355\\u4e2aPDF)\"]}}]',9,1),(33,'2020-07-28 13:01:25.631205','22','安徽省庐江县人民医院',2,'[{\"changed\": {\"fields\": [\"\\u4e0a\\u4f20\\u9644\\u4ef6(\\u5355\\u4e2aPDF)\"]}}]',9,1),(34,'2020-07-28 13:11:44.701510','20','皖南医学院弋矶山医院',2,'[{\"changed\": {\"fields\": [\"\\u4e0a\\u4f20\\u9644\\u4ef6(\\u5355\\u4e2aPDF)\"]}}]',9,1),(35,'2020-07-28 13:13:43.888273','22','安徽省庐江县人民医院',2,'[{\"changed\": {\"fields\": [\"\\u4e0a\\u4f20\\u9644\\u4ef6(\\u5355\\u4e2aPDF)\"]}}]',9,1),(36,'2020-07-28 13:14:03.946238','22','安徽省庐江县人民医院',2,'[{\"changed\": {\"fields\": [\"\\u4e0a\\u4f20\\u9644\\u4ef6(\\u5355\\u4e2aPDF)\"]}}]',9,1),(37,'2020-07-28 13:14:29.611977','22','安徽省庐江县人民医院',2,'[{\"changed\": {\"fields\": [\"\\u4e0a\\u4f20\\u9644\\u4ef6(\\u5355\\u4e2aPDF)\"]}}]',9,1),(38,'2020-07-28 13:14:45.206687','18','马鞍山市人民医院',2,'[{\"changed\": {\"fields\": [\"\\u4e0a\\u4f20\\u9644\\u4ef6(\\u5355\\u4e2aPDF)\"]}}]',9,1),(39,'2020-07-28 13:15:01.739844','18','马鞍山市人民医院',2,'[{\"changed\": {\"fields\": [\"\\u4e0a\\u4f20\\u9644\\u4ef6(\\u5355\\u4e2aPDF)\"]}}]',9,1),(40,'2020-07-28 13:16:05.127912','14','颍上县中医院',2,'[{\"changed\": {\"fields\": [\"\\u4e0a\\u4f20\\u9644\\u4ef6(\\u5355\\u4e2aPDF)\"]}}]',9,1),(41,'2020-07-28 13:16:44.782703','14','颍上县中医院',2,'[{\"changed\": {\"fields\": [\"\\u4e0a\\u4f20\\u9644\\u4ef6(\\u5355\\u4e2aPDF)\"]}}]',9,1),(42,'2020-07-28 14:17:48.990797','2','laitai',2,'[{\"changed\": {\"fields\": [\"User permissions\", \"Last login\"]}}]',4,1),(43,'2020-07-28 14:28:49.253421','16','颍上县人民医院',2,'[{\"changed\": {\"fields\": [\"\\u4e0a\\u4f20\\u9644\\u4ef6(\\u5355\\u4e2aPDF)\"]}}]',9,2),(44,'2020-07-28 14:34:25.723864','16','颍上县人民医院',2,'[{\"changed\": {\"fields\": [\"\\u4e0a\\u4f20\\u9644\\u4ef6(\\u5355\\u4e2aPDF)\"]}}]',9,2),(45,'2020-07-28 14:48:57.814077','16','颍上县人民医院',2,'[{\"changed\": {\"fields\": [\"\\u4e0a\\u4f20\\u9644\\u4ef6(\\u5355\\u4e2aPDF)\"]}}]',9,1),(46,'2020-07-28 14:51:07.227085','16','颍上县人民医院',2,'[{\"changed\": {\"fields\": [\"\\u4e0a\\u4f20\\u9644\\u4ef6(\\u5355\\u4e2aPDF)\"]}}]',9,1),(47,'2020-07-28 14:54:54.505507','16','颍上县人民医院',2,'[{\"changed\": {\"fields\": [\"\\u4e0a\\u4f20\\u9644\\u4ef6(\\u5355\\u4e2aPDF)\"]}}]',9,1),(48,'2020-07-28 14:56:34.260283','16','颍上县人民医院',2,'[{\"changed\": {\"fields\": [\"\\u4e0a\\u4f20\\u9644\\u4ef6(\\u5355\\u4e2aPDF)\"]}}]',9,1),(49,'2020-07-28 15:00:58.106291','16','颍上县人民医院',2,'[{\"changed\": {\"fields\": [\"\\u4e0a\\u4f20\\u9644\\u4ef6(\\u5355\\u4e2aPDF)\"]}}]',9,1),(50,'2020-07-28 15:01:52.688333','16','颍上县人民医院',2,'[{\"changed\": {\"fields\": [\"\\u4e0a\\u4f20\\u9644\\u4ef6(\\u5355\\u4e2aPDF)\"]}}]',9,1),(51,'2020-07-28 15:02:44.946491','16','颍上县人民医院',2,'[{\"changed\": {\"fields\": [\"\\u4e0a\\u4f20\\u9644\\u4ef6(\\u5355\\u4e2aPDF)\"]}}]',9,1),(52,'2020-07-28 15:05:08.387995','19','安徽玖熙科技有限公司',2,'[{\"changed\": {\"fields\": [\"\\u4e0a\\u4f20\\u9644\\u4ef6(\\u5355\\u4e2aPDF)\"]}}]',9,2),(53,'2020-07-28 16:28:47.014717','1','安徽中医药大学第一附属医院',2,'[{\"changed\": {\"fields\": [\"\\u4e0a\\u4f20\\u9644\\u4ef6(\\u5355\\u4e2aPDF)\"]}}]',9,2),(54,'2020-07-28 16:35:43.093343','3','巢湖东旭威宇医疗器械科技有限公司',2,'[{\"changed\": {\"fields\": [\"\\u540d\\u79f0\"]}}]',7,2),(55,'2020-07-29 17:43:53.704842','19','安徽玖熙科技有限公司',2,'[{\"changed\": {\"fields\": [\"\\u4e0a\\u4f20\\u9644\\u4ef6(\\u5355\\u4e2aPDF)\"]}}]',9,2),(56,'2020-07-29 17:43:57.859879','19','安徽玖熙科技有限公司',2,'[]',9,2),(57,'2020-07-29 17:44:34.545160','19','安徽玖熙科技有限公司',2,'[]',9,2),(58,'2020-07-30 15:37:41.707080','19','安徽玖熙科技有限公司',2,'[]',9,1),(59,'2020-07-30 15:41:23.061224','19','安徽玖熙科技有限公司',2,'[{\"added\": {\"name\": \"\\u6240\\u6709\\u5408\\u540c\\u6c47\\u603b\\u9500\\u552e\\u8bb0\\u5f55\", \"object\": \"2019-12-25 \\u5b89\\u5fbd\\u7396\\u7199\\u79d1\\u6280\\u6709\\u9650\\u516c\\u53f8\"}}]',9,1),(60,'2020-07-30 15:41:27.870957','19','安徽玖熙科技有限公司',2,'[{\"deleted\": {\"name\": \"\\u6240\\u6709\\u5408\\u540c\\u6c47\\u603b\\u9500\\u552e\\u8bb0\\u5f55\", \"object\": \"2019-12-25 \\u5b89\\u5fbd\\u7396\\u7199\\u79d1\\u6280\\u6709\\u9650\\u516c\\u53f8\"}}]',9,1),(61,'2020-07-30 16:00:53.954858','19','安徽玖熙科技有限公司',2,'[{\"changed\": {\"fields\": [\"\\u4e0a\\u4f20\\u9644\\u4ef6(\\u5355\\u4e2aPDF)\"]}}]',9,1),(62,'2020-07-30 16:00:57.813002','19','安徽玖熙科技有限公司',2,'[]',9,1),(63,'2020-07-30 16:02:34.432413','19','安徽玖熙科技有限公司',2,'[{\"changed\": {\"fields\": [\"\\u4e0a\\u4f20\\u9644\\u4ef6(\\u5355\\u4e2aPDF)\"]}}]',9,1),(64,'2020-07-30 16:25:34.916949','None','定远县总医院',1,'[{\"added\": {}}]',9,1),(65,'2020-07-30 16:26:00.759690','25','定远县总医院',2,'[{\"added\": {\"name\": \"\\u6240\\u6709\\u5408\\u540c\\u6c47\\u603b\\u9500\\u552e\\u8bb0\\u5f55\", \"object\": \"2020-07-30 \\u5b9a\\u8fdc\\u53bf\\u603b\\u533b\\u9662\"}}]',9,1),(66,'2020-07-30 16:28:18.451281','25','定远县总医院',3,'',9,1),(67,'2020-07-30 16:47:10.278837','None','淮北市人民医院',1,'[{\"added\": {}}]',9,2),(68,'2020-07-30 16:50:20.585053','None','安徽皖北医院管理有限责任公司',1,'[{\"added\": {}}]',9,2),(69,'2020-07-30 16:50:46.708147','27','安徽皖北医院管理有限责任公司',3,'',9,2),(70,'2020-07-30 16:50:51.782594','26','淮北市人民医院',3,'',9,2),(71,'2020-07-30 16:51:27.111913','None','芜湖县医院',1,'[{\"added\": {}}]',9,2),(72,'2020-07-30 16:53:02.236168','None','测试厂商',1,'[{\"added\": {}}]',11,2),(73,'2020-07-30 16:53:37.429136','None','测试刀头 || dsaffdsa',1,'[{\"added\": {}}]',8,2),(74,'2020-07-30 16:54:54.193174','28','芜湖县医院',2,'[{\"added\": {\"name\": \"\\u6240\\u6709\\u5408\\u540c\\u6c47\\u603b\\u9500\\u552e\\u8bb0\\u5f55\", \"object\": \"2020-07-30 \\u829c\\u6e56\\u53bf\\u533b\\u9662\"}}, {\"added\": {\"name\": \"\\u6240\\u6709\\u5408\\u540c\\u6c47\\u603b\\u9500\\u552e\\u8bb0\\u5f55\", \"object\": \"2020-07-30 \\u829c\\u6e56\\u53bf\\u533b\\u9662\"}}]',9,2),(75,'2020-07-30 16:55:44.551653','28','芜湖县医院',2,'[{\"deleted\": {\"name\": \"\\u6240\\u6709\\u5408\\u540c\\u6c47\\u603b\\u9500\\u552e\\u8bb0\\u5f55\", \"object\": \"2020-07-30 \\u829c\\u6e56\\u53bf\\u533b\\u9662\"}}]',9,2),(76,'2020-07-30 16:56:33.573607','28','芜湖县医院',3,'',9,2),(77,'2020-07-30 16:59:08.407520','46','测试刀头 || dsaffdsa',3,'',8,2),(78,'2020-07-30 17:54:39.178233','None','马鞍山市中心医院',1,'[{\"added\": {}}]',9,2),(79,'2020-07-30 17:56:10.214317','29','马鞍山市中心医院',3,'',9,2),(80,'2020-07-30 18:09:31.885342','None','芜湖县医院',1,'[{\"added\": {}}]',9,2),(81,'2020-07-30 18:09:56.734937','30','芜湖县医院',2,'[{\"added\": {\"name\": \"\\u6240\\u6709\\u5408\\u540c\\u6c47\\u603b\\u9500\\u552e\\u8bb0\\u5f55\", \"object\": \"2020-07-30 \\u829c\\u6e56\\u53bf\\u533b\\u9662\"}}]',9,2),(82,'2020-07-30 18:10:38.225049','30','芜湖县医院',3,'',9,2),(83,'2020-07-31 11:12:03.248448','None','利辛县人民医院',1,'[{\"added\": {}}]',12,2),(84,'2020-07-31 11:13:17.115531','None','利辛县人民医院',1,'[{\"added\": {}}]',9,2),(85,'2020-07-31 11:14:36.512358','31','利辛县人民医院',2,'[{\"changed\": {\"fields\": [\"\\u4e0a\\u4f20\\u9644\\u4ef6(\\u5355\\u4e2aPDF)\"]}}, {\"added\": {\"name\": \"\\u6240\\u6709\\u5408\\u540c\\u6c47\\u603b\\u9500\\u552e\\u8bb0\\u5f55\", \"object\": \"2020-07-24 \\u5229\\u8f9b\\u53bf\\u4eba\\u6c11\\u533b\\u9662\"}}]',9,2),(86,'2020-08-26 14:46:54.638940','None','泗县人民医院',1,'[{\"added\": {}}]',12,2),(87,'2020-08-26 14:48:43.455521','None','泗县人民医院',1,'[{\"added\": {}}]',12,2),(88,'2020-08-27 10:48:47.783599','4','马鞍山市中心医院',2,'[{\"changed\": {\"fields\": [\"\\u5907\\u6ce8\"]}}]',9,2),(89,'2020-08-27 10:52:20.450738','6','芜湖县医院',2,'[{\"changed\": {\"fields\": [\"\\u5907\\u6ce8\"]}}]',9,2),(90,'2020-08-27 10:59:28.875050','7','临泉县人民医院',2,'[{\"changed\": {\"fields\": [\"\\u5907\\u6ce8\"]}}]',9,2),(91,'2020-08-27 11:01:12.481032','7','临泉县人民医院',2,'[]',9,2),(92,'2020-08-27 11:02:14.029568','4','马鞍山市中心医院',2,'[]',9,2),(93,'2020-08-27 11:28:31.949653','11','六安市人民医院',2,'[{\"changed\": {\"fields\": [\"\\u5907\\u6ce8\"]}}]',9,2),(94,'2020-08-27 11:30:09.940462','12','安徽中医药大学第一附属医院',2,'[]',9,2),(95,'2020-08-27 11:54:13.798865','14','颍上县中医院',2,'[{\"changed\": {\"fields\": [\"\\u5907\\u6ce8\"]}}]',9,2),(96,'2020-08-27 11:54:46.218777','14','颍上县中医院',2,'[]',9,2),(97,'2020-08-27 12:09:54.402577','None','杭州中亚医疗器械有限公司',1,'[{\"added\": {}}]',7,2),(98,'2020-08-27 12:11:10.151629','None','杭州中亚医疗器械有限公司',1,'[{\"added\": {}}]',9,2),(99,'2020-08-27 12:11:43.135080','32','杭州中亚医疗器械有限公司',2,'[{\"added\": {\"name\": \"\\u6240\\u6709\\u5408\\u540c\\u6c47\\u603b\\u9500\\u552e\\u8bb0\\u5f55\", \"object\": \"2019-05-27 \\u676d\\u5dde\\u4e2d\\u4e9a\\u533b\\u7597\\u5668\\u68b0\\u6709\\u9650\\u516c\\u53f8\"}}]',9,2),(100,'2020-08-27 12:13:17.025649','32','马鞍山市人民医院',2,'[{\"changed\": {\"fields\": [\"\\u51fa\\u552e\\u533b\\u9662\"]}}]',9,2),(101,'2020-08-27 12:14:53.378019','18','马鞍山市人民医院',3,'',9,2),(102,'2020-08-27 12:15:35.311399','8','杭州中亚医疗器械有限公司',2,'[]',7,2),(103,'2020-08-27 14:32:08.046654','None','彩色激光打印机 || 001',1,'[{\"added\": {}}]',8,2),(104,'2020-08-27 14:40:06.483745','None','彩色激光打印机 || 佳能',1,'[{\"added\": {}}]',8,2),(105,'2020-08-27 14:45:34.152909','17','滁州市第五人民医院',2,'[{\"added\": {\"name\": \"\\u6240\\u6709\\u5408\\u540c\\u6c47\\u603b\\u9500\\u552e\\u8bb0\\u5f55\", \"object\": \"2019-07-19 \\u6ec1\\u5dde\\u5e02\\u7b2c\\u4e94\\u4eba\\u6c11\\u533b\\u9662\"}}]',9,2),(106,'2020-08-27 14:52:41.414078','None','彩色激光打印机 || 佳能',1,'[{\"added\": {}}]',8,2),(107,'2020-08-27 14:53:36.291412','17','滁州市第五人民医院',2,'[{\"added\": {\"name\": \"\\u6240\\u6709\\u5408\\u540c\\u6c47\\u603b\\u9500\\u552e\\u8bb0\\u5f55\", \"object\": \"2019-07-19 \\u6ec1\\u5dde\\u5e02\\u7b2c\\u4e94\\u4eba\\u6c11\\u533b\\u9662\"}}, {\"added\": {\"name\": \"\\u6240\\u6709\\u5408\\u540c\\u6c47\\u603b\\u9500\\u552e\\u8bb0\\u5f55\", \"object\": \"2019-07-19 \\u6ec1\\u5dde\\u5e02\\u7b2c\\u4e94\\u4eba\\u6c11\\u533b\\u9662\"}}, {\"added\": {\"name\": \"\\u6240\\u6709\\u5408\\u540c\\u6c47\\u603b\\u9500\\u552e\\u8bb0\\u5f55\", \"object\": \"2019-07-19 \\u6ec1\\u5dde\\u5e02\\u7b2c\\u4e94\\u4eba\\u6c11\\u533b\\u9662\"}}, {\"added\": {\"name\": \"\\u6240\\u6709\\u5408\\u540c\\u6c47\\u603b\\u9500\\u552e\\u8bb0\\u5f55\", \"object\": \"2019-07-19 \\u6ec1\\u5dde\\u5e02\\u7b2c\\u4e94\\u4eba\\u6c11\\u533b\\u9662\"}}, {\"added\": {\"name\": \"\\u6240\\u6709\\u5408\\u540c\\u6c47\\u603b\\u9500\\u552e\\u8bb0\\u5f55\", \"object\": \"2019-07-19 \\u6ec1\\u5dde\\u5e02\\u7b2c\\u4e94\\u4eba\\u6c11\\u533b\\u9662\"}}]',9,2),(108,'2020-08-27 15:08:04.180119','31','OTV-S190 主机+CLV-190光源 || ENF-VH，VT2，V3,活检、异物钳，侧漏其，台车，工作站，奥巴OEV262H监视器',2,'[{\"changed\": {\"fields\": [\"\\u540d\\u79f0\", \"\\u578b\\u53f7\"]}}]',8,2),(109,'2020-08-27 15:08:15.293115','15','淮北市人民医院',2,'[{\"added\": {\"name\": \"\\u6240\\u6709\\u5408\\u540c\\u6c47\\u603b\\u9500\\u552e\\u8bb0\\u5f55\", \"object\": \"2019-04-16 \\u6dee\\u5317\\u5e02\\u4eba\\u6c11\\u533b\\u9662\"}}]',9,2),(110,'2020-08-27 15:09:35.287005','15','淮北市人民医院',2,'[{\"changed\": {\"fields\": [\"\\u5907\\u6ce8\"]}}]',9,2),(111,'2020-08-27 15:34:54.736546','15','淮北市人民医院',2,'[]',9,2),(112,'2020-09-11 17:48:17.064912','None','安徽医科大学附属阜阳医院',1,'[{\"added\": {}}]',12,2),(113,'2020-09-11 17:49:29.402043','None','安徽医科大学附属阜阳医院',1,'[{\"added\": {}}]',9,2),(114,'2020-09-11 17:53:31.085850','None','上海倡粼医疗器械有限公司',1,'[{\"added\": {}}]',11,2),(115,'2020-09-11 17:53:51.431549','None','鼓室成形术假体 || 合同附件',1,'[{\"added\": {}}]',8,2),(116,'2020-09-11 17:55:05.909994','33','安徽医科大学附属阜阳医院',2,'[{\"added\": {\"name\": \"\\u6240\\u6709\\u5408\\u540c\\u6c47\\u603b\\u9500\\u552e\\u8bb0\\u5f55\", \"object\": \"2020-09-07 \\u5b89\\u5fbd\\u533b\\u79d1\\u5927\\u5b66\\u9644\\u5c5e\\u961c\\u9633\\u533b\\u9662\"}}]',9,2),(117,'2020-09-11 17:55:47.307446','33','安徽医科大学附属阜阳医院',2,'[]',9,2),(118,'2020-09-22 16:31:00.668374','None','淮南朝阳医院',1,'[{\"added\": {}}]',12,2),(119,'2020-09-22 16:35:07.069582','None','淮南朝阳医院',1,'[{\"added\": {}}]',9,2),(120,'2020-09-22 16:36:31.748779','34','淮南朝阳医院',2,'[{\"changed\": {\"fields\": [\"\\u4fdd\\u4fee\\u65f6\\u957f(\\u6708)\"]}}, {\"added\": {\"name\": \"\\u6240\\u6709\\u5408\\u540c\\u6c47\\u603b\\u9500\\u552e\\u8bb0\\u5f55\", \"object\": \"2020-09-22 \\u6dee\\u5357\\u671d\\u9633\\u533b\\u9662\"}}]',9,2),(121,'2020-12-01 16:46:52.471040','34','淮南朝阳医院',2,'[{\"changed\": {\"fields\": [\"\\u4e0a\\u4f20\\u9644\\u4ef6(\\u5355\\u4e2aPDF)\"]}}]',9,2),(122,'2020-12-01 16:47:06.262662','34','淮南朝阳医院',2,'[{\"changed\": {\"fields\": [\"\\u4e0a\\u4f20\\u9644\\u4ef6(\\u5355\\u4e2aPDF)\"]}}]',9,2),(123,'2020-12-03 18:26:33.134395','34','淮南朝阳医院',3,'',9,2),(124,'2020-12-03 18:26:33.195511','33','安徽医科大学附属阜阳医院',3,'',9,2),(125,'2020-12-03 18:26:33.207419','31','利辛县人民医院',3,'',9,2),(126,'2020-12-03 18:26:33.231399','19','安徽玖熙科技有限公司',3,'',9,2),(127,'2020-12-03 18:26:33.244403','17','滁州市第五人民医院',3,'',9,2),(128,'2020-12-03 18:26:33.258711','22','安徽省庐江县人民医院',3,'',9,2),(129,'2020-12-03 18:26:33.267714','32','马鞍山市人民医院',3,'',9,2),(130,'2020-12-03 18:26:33.279722','20','皖南医学院弋矶山医院',3,'',9,2),(131,'2020-12-03 18:26:33.295654','4','马鞍山市中心医院',3,'',9,2),(132,'2020-12-03 18:26:33.308182','15','淮北市人民医院',3,'',9,2),(133,'2020-12-03 18:26:33.392227','21','山东浩嘉医疗科技有限公司',3,'',9,2),(134,'2020-12-03 18:26:33.426092','16','颍上县人民医院',3,'',9,2),(135,'2020-12-03 18:26:33.442225','14','颍上县中医院',3,'',9,2),(136,'2020-12-03 18:26:33.466439','8','安徽玖熙科技有限公司',3,'',9,2),(137,'2020-12-03 18:26:33.492719','11','六安市人民医院',3,'',9,2),(138,'2020-12-03 18:26:33.519259','6','芜湖县医院',3,'',9,2),(139,'2020-12-03 18:26:33.555405','13','安徽皖北医院管理有限责任公司',3,'',9,2),(140,'2020-12-03 18:26:33.588733','10','当涂县人民医院',3,'',9,2),(141,'2020-12-03 18:26:33.614224','5','定远县总医院',3,'',9,2),(142,'2020-12-03 18:26:33.641221','3','巢湖东旭威宇医疗器械科技有限公司',3,'',9,2),(143,'2020-12-03 18:26:51.636012','8','杭州中亚医疗器械有限公司',3,'',7,2),(144,'2020-12-03 18:26:55.756331','7','山东浩嘉医疗科技有限公司',3,'',7,2),(145,'2020-12-03 18:26:59.005378','6','安徽省锐达医疗器材有限公司',3,'',7,2),(146,'2020-12-03 18:27:01.841355','5','安徽皖北医院管理有限责任公司',3,'',7,2),(147,'2020-12-03 18:27:11.654691','3','巢湖东旭威宇医疗器械科技有限公司',3,'',7,2),(148,'2020-12-03 18:27:19.286993','4','安徽玖熙科技有限公司',3,'',7,2),(149,'2020-12-03 18:27:47.375103','20','淮南朝阳医院',3,'',12,2),(150,'2020-12-03 18:27:47.406117','19','安徽医科大学附属阜阳医院',3,'',12,2),(151,'2020-12-03 18:27:47.419120','18','泗县人民医院',3,'',12,2),(152,'2020-12-03 18:27:47.427128','17','泗县人民医院',3,'',12,2),(153,'2020-12-03 18:27:47.439722','16','利辛县人民医院',3,'',12,2),(154,'2020-12-03 18:27:47.451730','15','安徽省庐江县人民医院',3,'',12,2),(155,'2020-12-03 18:27:47.464257','14','皖南医学院弋矶山医院',3,'',12,2),(156,'2020-12-03 18:27:47.477262','13','马鞍山市人民医院',3,'',12,2),(157,'2020-12-03 18:27:47.485264','12','滁州市第五人民医院',3,'',12,2),(158,'2020-12-03 18:27:47.500491','11','颍上县人民医院',3,'',12,2),(159,'2020-12-03 18:27:47.513499','10','淮北市人民医院',3,'',12,2),(160,'2020-12-03 18:27:47.525652','9','颍上县中医院',3,'',12,2),(161,'2020-12-03 18:27:47.538509','8','六安市人民医院',3,'',12,2),(162,'2020-12-03 18:27:47.546514','7','当涂县人民医院',3,'',12,2),(163,'2020-12-03 18:27:47.559167','4','芜湖县医院',3,'',12,2),(164,'2020-12-03 18:27:47.571526','3','定远县总医院',3,'',12,2),(165,'2020-12-03 18:27:47.584162','2','马鞍山市中心医院',3,'',12,2),(166,'2020-12-03 18:28:10.616338','8','测试厂商',3,'',11,2),(167,'2020-12-03 18:28:31.411846','9','上海倡粼医疗器械有限公司',3,'',11,2),(168,'2020-12-03 18:28:31.438856','7','瑞士彼岸',3,'',11,2),(169,'2020-12-03 18:28:31.451861','6','泰州隆达',3,'',11,2),(170,'2020-12-03 18:28:31.460154','5','沈阳沈大',3,'',11,2),(171,'2020-12-03 18:29:04.346132','9','上海倡粼医疗器械有限公司',3,'',11,2),(172,'2020-12-03 18:29:04.364159','7','瑞士彼岸',3,'',11,2),(173,'2020-12-03 18:29:04.377134','6','泰州隆达',3,'',11,2),(174,'2020-12-03 18:29:04.392139','5','沈阳沈大',3,'',11,2),(175,'2020-12-03 18:29:04.404745','3','国产',3,'',11,2),(176,'2020-12-03 18:29:04.420749','2','北京龙泰洋健',3,'',11,2),(177,'2020-12-03 18:29:11.305144','9','上海倡粼医疗器械有限公司',3,'',11,2),(178,'2020-12-03 18:29:30.207449','50','鼓室成形术假体 || 合同附件',3,'',8,2),(179,'2020-12-03 18:29:37.005423','9','上海倡粼医疗器械有限公司',3,'',11,2),(180,'2020-12-03 18:29:49.546885','16','高清内镜图文工作站 || 南京淳仁',3,'',8,2),(181,'2020-12-03 18:29:55.718044','4','南京淳仁',3,'',11,2),(182,'2020-12-03 18:30:00.551770','23','70度喉镜 || 沈阳沈大',3,'',8,2),(183,'2020-12-03 18:30:06.969153','5','沈阳沈大',3,'',11,2),(184,'2020-12-03 18:30:11.411976','7','瑞士彼岸',3,'',11,2),(185,'2020-12-03 18:30:52.732387','6','打印机 || M154A',3,'',8,2),(186,'2020-12-03 18:30:52.755784','5','电脑 || 电脑',3,'',8,2),(187,'2020-12-03 18:30:52.769882','4','26监视器 || 26监视器',3,'',8,2),(188,'2020-12-03 18:30:59.539785','3','电子鼻咽喉镜 || CV-170',3,'',8,2),(189,'2020-12-03 18:30:59.595963','2','电子鼻咽喉内窥镜 || ENF-VT2',3,'',8,2),(190,'2020-12-03 18:30:59.603970','1','电子鼻咽喉内窥镜 || ENF TYPE V2',3,'',8,2),(191,'2020-12-03 18:31:28.667885','9','亳州市人民医院',3,'',9,2);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(7,'laitaiapp','agentcompany'),(9,'laitaiapp','contract'),(8,'laitaiapp','equipment'),(10,'laitaiapp','equipmentsincontract'),(12,'laitaiapp','hospital'),(11,'laitaiapp','producer'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2020-07-24 10:40:33.366706'),(2,'auth','0001_initial','2020-07-24 10:40:33.482697'),(3,'admin','0001_initial','2020-07-24 10:40:33.726262'),(4,'admin','0002_logentry_remove_auto_add','2020-07-24 10:40:33.792511'),(5,'admin','0003_logentry_add_action_flag_choices','2020-07-24 10:40:33.802171'),(6,'contenttypes','0002_remove_content_type_name','2020-07-24 10:40:33.869593'),(7,'auth','0002_alter_permission_name_max_length','2020-07-24 10:40:33.908393'),(8,'auth','0003_alter_user_email_max_length','2020-07-24 10:40:33.955947'),(9,'auth','0004_alter_user_username_opts','2020-07-24 10:40:33.966760'),(10,'auth','0005_alter_user_last_login_null','2020-07-24 10:40:34.003779'),(11,'auth','0006_require_contenttypes_0002','2020-07-24 10:40:34.007777'),(12,'auth','0007_alter_validators_add_error_messages','2020-07-24 10:40:34.019254'),(13,'auth','0008_alter_user_username_max_length','2020-07-24 10:40:34.061168'),(14,'auth','0009_alter_user_last_name_max_length','2020-07-24 10:40:34.102252'),(15,'auth','0010_alter_group_name_max_length','2020-07-24 10:40:34.139727'),(16,'auth','0011_update_proxy_permissions','2020-07-24 10:40:34.151436'),(17,'auth','0012_alter_user_first_name_max_length','2020-07-24 10:40:34.194606'),(18,'sessions','0001_initial','2020-07-24 10:40:34.213244'),(19,'laitaiapp','0001_initial','2020-07-25 09:41:18.519433'),(20,'laitaiapp','0002_auto_20200725_0952','2020-07-25 09:52:10.459145'),(21,'laitaiapp','0003_auto_20200728_1652','2020-07-28 16:52:41.572552');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('13le840ds2cuuehpx2xq4vvje38h98o4','.eJxVjMsOwiAQRf-FtSFQ3i7d-w1kmAGpGkhKuzL-uzbpQrf3nHNfLMK21riNvMSZ2JlJdvrdEuAjtx3QHdqtc-xtXebEd4UfdPBrp_y8HO7fQYVRv3U2kwYIKQg_-SCoaIsmSG8UGYNCF4VKCxLagiyYhFUGi6aUnPKuOMveH83DN3Y:1kkly0:uryRhz-OoWCt02rWAgOp5IYfYR5UDKlHV4uUWZu9Ab0','2020-12-17 18:36:04.066419'),('2htun5yzshnkhm8107kmjro4tvq02lsz','.eJxVjMsOwiAQRf-FtSFQ3i7d-w1kmAGpGkhKuzL-uzbpQrf3nHNfLMK21riNvMSZ2JlJdvrdEuAjtx3QHdqtc-xtXebEd4UfdPBrp_y8HO7fQYVRv3U2kwYIKQg_-SCoaIsmSG8UGYNCF4VKCxLagiyYhFUGi6aUnPKuOMveH83DN3Y:1kkmaL:2RnUIboO8pXjKS39FuaAfwZH3slHabRYkbfwfYwG3uE','2020-12-17 19:15:41.927763'),('3wn7r4sxqfdqof7pv4uu3jqngzb5gy34','ZTMxMDc2ZmNhYWU1NmVlYTQyMWRmMzc0MmFjYThmNGNkNDMzMWIwMzp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3YjBhNDI4YTk3ZDM0MTUwMzU2MTgzODZkY2YxYTY1NjQwMTY3ZWNkIn0=','2020-09-10 16:44:36.555319'),('5dp24o0ndi945e6av2c4tltzp8mnddrx','NGRlYWZlODhkZWMyNjU5ZTI4OWFjYjdjMzIyZGQzMDYwYzFjMzcwYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3OTVjN2Y2MjJjNTI5NjA2MDYwOTIwYjk4Nzg2ZGUwNjAxMDcwNzEzIn0=','2020-08-07 15:31:31.068200'),('6ku48kj3w1adl4xnb5scz82tahgt1gxb','ZTMxMDc2ZmNhYWU1NmVlYTQyMWRmMzc0MmFjYThmNGNkNDMzMWIwMzp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3YjBhNDI4YTk3ZDM0MTUwMzU2MTgzODZkY2YxYTY1NjQwMTY3ZWNkIn0=','2020-08-11 16:26:14.038025'),('adnkpru7jl22hwezmfk32clp3apz3agn','NGRlYWZlODhkZWMyNjU5ZTI4OWFjYjdjMzIyZGQzMDYwYzFjMzcwYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3OTVjN2Y2MjJjNTI5NjA2MDYwOTIwYjk4Nzg2ZGUwNjAxMDcwNzEzIn0=','2020-08-11 10:35:17.393070'),('al54ky8rpvoeetsdcvvwmm60j88kql3z','NGRlYWZlODhkZWMyNjU5ZTI4OWFjYjdjMzIyZGQzMDYwYzFjMzcwYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3OTVjN2Y2MjJjNTI5NjA2MDYwOTIwYjk4Nzg2ZGUwNjAxMDcwNzEzIn0=','2020-08-08 09:41:39.691214'),('csobkusqwyox850p013g5gzl5jlw25vr','ZTMxMDc2ZmNhYWU1NmVlYTQyMWRmMzc0MmFjYThmNGNkNDMzMWIwMzp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3YjBhNDI4YTk3ZDM0MTUwMzU2MTgzODZkY2YxYTY1NjQwMTY3ZWNkIn0=','2020-09-25 17:45:28.353658'),('cyl73fosubym1p43zcnamf9evwwaxmdb','NGRlYWZlODhkZWMyNjU5ZTI4OWFjYjdjMzIyZGQzMDYwYzFjMzcwYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3OTVjN2Y2MjJjNTI5NjA2MDYwOTIwYjk4Nzg2ZGUwNjAxMDcwNzEzIn0=','2020-08-13 13:14:55.062868'),('dav44e8ljm4c3ccqajkjl577gq7xoyav','ZTMxMDc2ZmNhYWU1NmVlYTQyMWRmMzc0MmFjYThmNGNkNDMzMWIwMzp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3YjBhNDI4YTk3ZDM0MTUwMzU2MTgzODZkY2YxYTY1NjQwMTY3ZWNkIn0=','2020-08-11 15:03:58.613048'),('eea27v7iwkmn46863i7fcasod9ibl12w','NGRlYWZlODhkZWMyNjU5ZTI4OWFjYjdjMzIyZGQzMDYwYzFjMzcwYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3OTVjN2Y2MjJjNTI5NjA2MDYwOTIwYjk4Nzg2ZGUwNjAxMDcwNzEzIn0=','2020-08-09 11:51:30.511985'),('hz82ki4w9bow0jkbcc87gtpq58z4j5uz','ZTMxMDc2ZmNhYWU1NmVlYTQyMWRmMzc0MmFjYThmNGNkNDMzMWIwMzp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3YjBhNDI4YTk3ZDM0MTUwMzU2MTgzODZkY2YxYTY1NjQwMTY3ZWNkIn0=','2020-08-13 15:19:57.215132'),('mm027ozylgkwo2yb676jj6ghmvfjirik','ZTMxMDc2ZmNhYWU1NmVlYTQyMWRmMzc0MmFjYThmNGNkNDMzMWIwMzp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3YjBhNDI4YTk3ZDM0MTUwMzU2MTgzODZkY2YxYTY1NjQwMTY3ZWNkIn0=','2020-08-14 17:03:19.903963'),('rllh67jsb15mu0186jyuo8sfavjyipma','.eJxVjEEOwiAQRe_C2hCgAoNL9z0DYRhGqoYmpV0Z765NutDtf-_9l4hpW2vcelniROIijDj9bpjyo7Qd0D212yzz3NZlQrkr8qBdjjOV5_Vw_w5q6vVbZ68cQGAHRhMyKoUO0FFROCjrCmTmDGiNHgI4PpO2hIqDZa8xeyveH-bzOBU:1jyyyE:Zj22JIfgBQKhxyAkefJymYsPVUxtwzLDoqZyauozk90','2020-08-07 14:46:46.497627'),('sh89hux5da5azhuo58kdxjo11p0spvcf','NGRlYWZlODhkZWMyNjU5ZTI4OWFjYjdjMzIyZGQzMDYwYzFjMzcwYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3OTVjN2Y2MjJjNTI5NjA2MDYwOTIwYjk4Nzg2ZGUwNjAxMDcwNzEzIn0=','2020-08-09 03:15:46.418786'),('tubu8sh3cipwf7a201gyhgsjtwx5cr9f','.eJxVjDsOwyAQRO9CHSE-YoGU6XMGtLAQnEQgGbuycvfYkoukmWLem9lYwHWpYR15DhOxK5Ps8ttFTK_cDkBPbI_OU2_LPEV-KPykg9875fftdP8OKo66r6PSJRpnknKpJJc9Agoo3orolDB7IHpw2gJRIQsZbURBIH3W0jpgny_z6DgY:1jyvA8:7CdhQKDTeswCjyA6UBZaJCcje6_3DzjqXdjoUg6jD1g','2020-08-07 10:42:48.519356'),('vzia38jo033semmpobunfo2wkdwhh82z','NGRlYWZlODhkZWMyNjU5ZTI4OWFjYjdjMzIyZGQzMDYwYzFjMzcwYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3OTVjN2Y2MjJjNTI5NjA2MDYwOTIwYjk4Nzg2ZGUwNjAxMDcwNzEzIn0=','2020-08-09 11:59:11.170647'),('wzenwwwediwbi9fkqrtrtiivlk45zxzk','NGRlYWZlODhkZWMyNjU5ZTI4OWFjYjdjMzIyZGQzMDYwYzFjMzcwYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3OTVjN2Y2MjJjNTI5NjA2MDYwOTIwYjk4Nzg2ZGUwNjAxMDcwNzEzIn0=','2020-08-11 14:39:24.633779'),('x14plyxe7rfx09w3mp2jrrjhmt8hmfih','ZTMxMDc2ZmNhYWU1NmVlYTQyMWRmMzc0MmFjYThmNGNkNDMzMWIwMzp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3YjBhNDI4YTk3ZDM0MTUwMzU2MTgzODZkY2YxYTY1NjQwMTY3ZWNkIn0=','2020-08-13 17:47:39.893336'),('yu5u1gnmx3tqmmx7al0h5pdb6flmaq6p','NGRlYWZlODhkZWMyNjU5ZTI4OWFjYjdjMzIyZGQzMDYwYzFjMzcwYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3OTVjN2Y2MjJjNTI5NjA2MDYwOTIwYjk4Nzg2ZGUwNjAxMDcwNzEzIn0=','2020-08-09 12:02:05.102634');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipment`
--

DROP TABLE IF EXISTS `equipment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `equipment` (
  `Equipment_ID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) NOT NULL,
  `Model` varchar(45) NOT NULL,
  `Price` varchar(45) DEFAULT NULL,
  `Type` varchar(45) NOT NULL,
  `Producer_ID` int DEFAULT NULL,
  PRIMARY KEY (`Equipment_ID`),
  KEY `fk_Equipment_Producer1_idx` (`Producer_ID`),
  CONSTRAINT `fk_Equipment_Producer1` FOREIGN KEY (`Producer_ID`) REFERENCES `producer` (`Producer_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipment`
--

LOCK TABLES `equipment` WRITE;
/*!40000 ALTER TABLE `equipment` DISABLE KEYS */;
INSERT INTO `equipment` VALUES (7,'台车','国产','4285','台车',3),(8,'0度鼻窦内窥镜','30-140-00','20550','内窥镜',2),(9,'30度鼻窦内窥镜','30-140-30','21400','内窥镜',2),(10,'70度鼻窦内窥镜','30-140-70','22500','内窥镜',2),(11,'数字高清电子鼻咽喉镜','ENF-VH',NULL,'咽喉镜',1),(12,'监视器21','索尼21',NULL,'监视器',NULL),(13,'活检钳','FB-19C-1',NULL,'钳子',1),(14,'异物钳','FG-20P-1',NULL,'钳子',1),(15,'金属一体化台车','台车',NULL,'台车',1),(17,'电子内镜测漏器','WA23080A',NULL,'测漏器',1),(18,'监视器17','南京巨鲨19寸',NULL,'监视器',NULL),(19,'彩色图文打印机','爱普生',NULL,'打印机',NULL),(20,'监视器22','索尼22',NULL,'监视器',NULL),(21,'摄像头及适配器','OTV-S7H-1NAR-T10E',NULL,'摄像头',NULL),(22,'导光束','WA03300A',NULL,'导光束',NULL),(24,'消毒槽','泰州隆达',NULL,'消毒槽',6),(25,'悬挂柜','泰州隆达',NULL,'悬挂柜',6),(26,'VT2+CV170','VT2和CV-170',NULL,'套装',1),(27,'电子鼻咽喉镜','ENF-VQ',NULL,'咽喉镜',1),(28,'电子鼻咽喉镜','OTV-S190',NULL,'咽喉镜',1),(29,'内窥镜冷光源','CLV-S190',NULL,'光源',1),(30,'摄像头','OTV-S7Pro-HD-10E',NULL,'摄像头',1),(31,'OTV-S190 主机+CLV-190光源','ENF-VH，VT2，V3,活检、异物钳，侧漏其，台车，工作站，奥巴OEV262H监视器',NULL,'套装',1),(32,'电子鼻咽喉镜','ENF-V3',NULL,'咽喉镜',1),(33,'综合动力系统','瑞士彼岸',NULL,'套装',3),(34,'耳鼻喉科动力系统主机','OSSEODUO',NULL,'主机',3),(35,'脚踏','OSSEODUO',NULL,'脚踏',3),(36,'鼻咽喉吸切手柄','S120',NULL,'手柄',3),(37,'耳科手柄','1600206/7-001',NULL,'手柄',3),(38,'0度鼻科刀头','1600540-001',NULL,'刀头',3),(39,'40度刀头内弯','1600550-001',NULL,'刀头',3),(40,'60度刀头内弯','1600574-001',NULL,'刀头',3),(41,'40度刀头背弯','1600572-001',NULL,'刀头',3),(42,'15度扁桃体刀头','1600570-001',NULL,'刀头',3),(43,'下鼻甲刀头','1600546-001',NULL,'刀头',3),(44,'耳科切割钻头','1100016,19,21,24,26-001',NULL,'钻头',3),(45,'耳科打磨钻头','1100002,05,08,11,12-001',NULL,'钻头',3),(47,'彩色激光打印机','001',NULL,'佳能',NULL),(48,'彩色激光打印机','佳能',NULL,'佳能',NULL),(49,'彩色激光打印机','佳能',NULL,'佳能',NULL);
/*!40000 ALTER TABLE `equipment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipmentsincontract`
--

DROP TABLE IF EXISTS `equipmentsincontract`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `equipmentsincontract` (
  `EquipmentsinContractID` int NOT NULL AUTO_INCREMENT,
  `Equipment_ID` int NOT NULL,
  `Contract_ID` int NOT NULL,
  `NumberSold` int DEFAULT NULL,
  `PriceSold` varchar(45) DEFAULT NULL,
  `hospital_id` int DEFAULT NULL,
  `agentcompany_id` int DEFAULT NULL,
  PRIMARY KEY (`EquipmentsinContractID`),
  KEY `fk_Equipment_has_Contract_Contract1_idx` (`Contract_ID`),
  KEY `fk_Equipment_has_Contract_Equipment1_idx` (`Equipment_ID`),
  KEY `hospital_id` (`hospital_id`),
  KEY `agentcompany_id` (`agentcompany_id`),
  CONSTRAINT `equipmentsincontract_ibfk_1` FOREIGN KEY (`hospital_id`) REFERENCES `hospital` (`Hospital_ID`),
  CONSTRAINT `equipmentsincontract_ibfk_2` FOREIGN KEY (`agentcompany_id`) REFERENCES `agentcompany` (`AgentCompany_ID`),
  CONSTRAINT `fk_Equipment_has_Contract_Contract1` FOREIGN KEY (`Contract_ID`) REFERENCES `contract` (`Contract_ID`),
  CONSTRAINT `fk_Equipment_has_Contract_Equipment1` FOREIGN KEY (`Equipment_ID`) REFERENCES `equipment` (`Equipment_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipmentsincontract`
--

LOCK TABLES `equipmentsincontract` WRITE;
/*!40000 ALTER TABLE `equipmentsincontract` DISABLE KEYS */;
INSERT INTO `equipmentsincontract` VALUES (52,26,12,1,'776000',1,NULL);
/*!40000 ALTER TABLE `equipmentsincontract` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hospital`
--

DROP TABLE IF EXISTS `hospital`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hospital` (
  `Hospital_ID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) DEFAULT NULL,
  `Location` varchar(45) DEFAULT NULL,
  `Tel` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Hospital_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospital`
--

LOCK TABLES `hospital` WRITE;
/*!40000 ALTER TABLE `hospital` DISABLE KEYS */;
INSERT INTO `hospital` VALUES (1,'安徽中医药大学第一附属医院','安徽省合肥市梅山路117号','055162838609'),(5,'临泉县人民医院',NULL,NULL),(6,'亳州市人民医院',NULL,NULL);
/*!40000 ALTER TABLE `hospital` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producer`
--

DROP TABLE IF EXISTS `producer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producer` (
  `Producer_ID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) NOT NULL,
  `Tel` varchar(45) DEFAULT NULL,
  `Location` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Producer_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producer`
--

LOCK TABLES `producer` WRITE;
/*!40000 ALTER TABLE `producer` DISABLE KEYS */;
INSERT INTO `producer` VALUES (1,'奥林巴斯',NULL,NULL),(2,'北京龙泰洋健',NULL,NULL),(3,'国产',NULL,NULL),(6,'泰州隆达',NULL,NULL);
/*!40000 ALTER TABLE `producer` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-03 19:39:11
