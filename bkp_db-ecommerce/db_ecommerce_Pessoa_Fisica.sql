-- MySQL dump 10.13  Distrib 8.0.43, for macos15 (arm64)
--
-- Host: 127.0.0.1    Database: db_ecommerce
-- ------------------------------------------------------
-- Server version	9.4.0

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
-- Table structure for table `Pessoa_Fisica`
--

DROP TABLE IF EXISTS `Pessoa_Fisica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Pessoa_Fisica` (
  `idPessoa_Fisica` int NOT NULL AUTO_INCREMENT,
  `Nome` varchar(45) NOT NULL,
  `Sobrenome` varchar(45) NOT NULL,
  `CPF` char(11) NOT NULL,
  `Data_Nascimento` date NOT NULL,
  `Cliente_idCliente` int NOT NULL,
  PRIMARY KEY (`idPessoa_Fisica`),
  UNIQUE KEY `idPessoa_Fisica` (`idPessoa_Fisica`),
  UNIQUE KEY `CPF` (`CPF`),
  KEY `Cliente_idCliente` (`Cliente_idCliente`),
  CONSTRAINT `pessoa_fisica_ibfk_1` FOREIGN KEY (`Cliente_idCliente`) REFERENCES `Cliente` (`idCliente`)
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pessoa_Fisica`
--

LOCK TABLES `Pessoa_Fisica` WRITE;
/*!40000 ALTER TABLE `Pessoa_Fisica` DISABLE KEYS */;
INSERT INTO `Pessoa_Fisica` VALUES (1,'Nome1','Sobrenome1','00000000001','1990-01-01',1),(2,'Nome2','Sobrenome2','00000000002','1990-01-01',2),(3,'Nome3','Sobrenome3','00000000003','1990-01-01',3),(4,'Nome4','Sobrenome4','00000000004','1990-01-01',4),(5,'Nome5','Sobrenome5','00000000005','1990-01-01',5),(6,'Nome6','Sobrenome6','00000000006','1990-01-01',6),(7,'Nome7','Sobrenome7','00000000007','1990-01-01',7),(8,'Nome8','Sobrenome8','00000000008','1990-01-01',8),(9,'Nome9','Sobrenome9','00000000009','1990-01-01',9),(10,'Nome10','Sobrenome10','00000000010','1990-01-01',10),(11,'Nome11','Sobrenome11','00000000011','1990-01-01',11),(12,'Nome12','Sobrenome12','00000000012','1990-01-01',12),(13,'Nome13','Sobrenome13','00000000013','1990-01-01',13),(14,'Nome14','Sobrenome14','00000000014','1990-01-01',14),(15,'Nome15','Sobrenome15','00000000015','1990-01-01',15),(16,'Nome16','Sobrenome16','00000000016','1990-01-01',16),(17,'Nome17','Sobrenome17','00000000017','1990-01-01',17),(18,'Nome18','Sobrenome18','00000000018','1990-01-01',18),(19,'Nome19','Sobrenome19','00000000019','1990-01-01',19),(20,'Nome20','Sobrenome20','00000000020','1990-01-01',20),(21,'Nome21','Sobrenome21','00000000021','1990-01-01',21),(22,'Nome22','Sobrenome22','00000000022','1990-01-01',22),(23,'Nome23','Sobrenome23','00000000023','1990-01-01',23),(24,'Nome24','Sobrenome24','00000000024','1990-01-01',24),(25,'Nome25','Sobrenome25','00000000025','1990-01-01',25),(26,'Nome26','Sobrenome26','00000000026','1990-01-01',26),(27,'Nome27','Sobrenome27','00000000027','1990-01-01',27),(28,'Nome28','Sobrenome28','00000000028','1990-01-01',28),(29,'Nome29','Sobrenome29','00000000029','1990-01-01',29),(30,'Nome30','Sobrenome30','00000000030','1990-01-01',30),(31,'Nome31','Sobrenome31','00000000031','1990-01-01',31),(32,'Nome32','Sobrenome32','00000000032','1990-01-01',32),(33,'Nome33','Sobrenome33','00000000033','1990-01-01',33),(34,'Nome34','Sobrenome34','00000000034','1990-01-01',34),(35,'Nome35','Sobrenome35','00000000035','1990-01-01',35),(36,'Nome36','Sobrenome36','00000000036','1990-01-01',36),(37,'Nome37','Sobrenome37','00000000037','1990-01-01',37),(38,'Nome38','Sobrenome38','00000000038','1990-01-01',38),(39,'Nome39','Sobrenome39','00000000039','1990-01-01',39),(40,'Nome40','Sobrenome40','00000000040','1990-01-01',40),(41,'Nome41','Sobrenome41','00000000041','1990-01-01',41),(42,'Nome42','Sobrenome42','00000000042','1990-01-01',42),(43,'Nome43','Sobrenome43','00000000043','1990-01-01',43),(44,'Nome44','Sobrenome44','00000000044','1990-01-01',44),(45,'Nome45','Sobrenome45','00000000045','1990-01-01',45),(46,'Nome46','Sobrenome46','00000000046','1990-01-01',46),(47,'Nome47','Sobrenome47','00000000047','1990-01-01',47),(48,'Nome48','Sobrenome48','00000000048','1990-01-01',48),(49,'Nome49','Sobrenome49','00000000049','1990-01-01',49),(50,'Nome50','Sobrenome50','00000000050','1990-01-01',50),(51,'Nome51','Sobrenome51','00000000051','1990-01-01',51),(52,'Nome52','Sobrenome52','00000000052','1990-01-01',52),(53,'Nome53','Sobrenome53','00000000053','1990-01-01',53),(54,'Nome54','Sobrenome54','00000000054','1990-01-01',54),(55,'Nome55','Sobrenome55','00000000055','1990-01-01',55),(56,'Nome56','Sobrenome56','00000000056','1990-01-01',56),(57,'Nome57','Sobrenome57','00000000057','1990-01-01',57),(58,'Nome58','Sobrenome58','00000000058','1990-01-01',58),(59,'Nome59','Sobrenome59','00000000059','1990-01-01',59),(60,'Nome60','Sobrenome60','00000000060','1990-01-01',60),(61,'Nome61','Sobrenome61','00000000061','1990-01-01',61),(62,'Nome62','Sobrenome62','00000000062','1990-01-01',62),(63,'Nome63','Sobrenome63','00000000063','1990-01-01',63),(64,'Nome64','Sobrenome64','00000000064','1990-01-01',64),(65,'Nome65','Sobrenome65','00000000065','1990-01-01',65),(66,'Nome66','Sobrenome66','00000000066','1990-01-01',66),(67,'Nome67','Sobrenome67','00000000067','1990-01-01',67),(68,'Nome68','Sobrenome68','00000000068','1990-01-01',68),(69,'Nome69','Sobrenome69','00000000069','1990-01-01',69),(70,'Nome70','Sobrenome70','00000000070','1990-01-01',70),(71,'Nome71','Sobrenome71','00000000071','1990-01-01',71),(72,'Nome72','Sobrenome72','00000000072','1990-01-01',72),(73,'Nome73','Sobrenome73','00000000073','1990-01-01',73),(74,'Nome74','Sobrenome74','00000000074','1990-01-01',74),(75,'Nome75','Sobrenome75','00000000075','1990-01-01',75),(76,'Nome76','Sobrenome76','00000000076','1990-01-01',76),(77,'Nome77','Sobrenome77','00000000077','1990-01-01',77),(78,'Nome78','Sobrenome78','00000000078','1990-01-01',78),(79,'Nome79','Sobrenome79','00000000079','1990-01-01',79),(80,'Nome80','Sobrenome80','00000000080','1990-01-01',80),(81,'Nome81','Sobrenome81','00000000081','1990-01-01',81),(82,'Nome82','Sobrenome82','00000000082','1990-01-01',82),(83,'Nome83','Sobrenome83','00000000083','1990-01-01',83),(84,'Nome84','Sobrenome84','00000000084','1990-01-01',84),(85,'Nome85','Sobrenome85','00000000085','1990-01-01',85),(86,'Nome86','Sobrenome86','00000000086','1990-01-01',86),(87,'Nome87','Sobrenome87','00000000087','1990-01-01',87),(88,'Nome88','Sobrenome88','00000000088','1990-01-01',88),(89,'Nome89','Sobrenome89','00000000089','1990-01-01',89),(90,'Nome90','Sobrenome90','00000000090','1990-01-01',90),(91,'Nome91','Sobrenome91','00000000091','1990-01-01',91),(92,'Nome92','Sobrenome92','00000000092','1990-01-01',92),(93,'Nome93','Sobrenome93','00000000093','1990-01-01',93),(94,'Nome94','Sobrenome94','00000000094','1990-01-01',94),(95,'Nome95','Sobrenome95','00000000095','1990-01-01',95),(96,'Nome96','Sobrenome96','00000000096','1990-01-01',96),(97,'Nome97','Sobrenome97','00000000097','1990-01-01',97),(98,'Nome98','Sobrenome98','00000000098','1990-01-01',98),(99,'Nome99','Sobrenome99','00000000099','1990-01-01',99),(100,'Nome100','Sobrenome100','00000000100','1990-01-01',100);
/*!40000 ALTER TABLE `Pessoa_Fisica` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-02-21 23:50:48
