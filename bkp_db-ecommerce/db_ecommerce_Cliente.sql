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
-- Table structure for table `Cliente`
--

DROP TABLE IF EXISTS `Cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Cliente` (
  `idCliente` int NOT NULL AUTO_INCREMENT,
  `Rua` varchar(45) NOT NULL,
  `Numero` varchar(10) DEFAULT NULL,
  `Complemento` varchar(45) DEFAULT NULL,
  `Bairro` varchar(45) NOT NULL,
  `CEP` char(8) NOT NULL,
  `UF` char(2) NOT NULL,
  `Pais` varchar(45) NOT NULL,
  PRIMARY KEY (`idCliente`),
  UNIQUE KEY `idCliente` (`idCliente`),
  CONSTRAINT `cliente_chk_1` CHECK (((`CEP` >= _utf8mb4'00000000') and (`CEP` <= _utf8mb4'99999999'))),
  CONSTRAINT `cliente_chk_2` CHECK ((`UF` in (_utf8mb4'AC',_utf8mb4'AL',_utf8mb4'AP',_utf8mb4'AM',_utf8mb4'BA',_utf8mb4'CE',_utf8mb4'DF',_utf8mb4'ES',_utf8mb4'GO',_utf8mb4'MA',_utf8mb4'MT',_utf8mb4'MS',_utf8mb4'MG',_utf8mb4'PA',_utf8mb4'PB',_utf8mb4'PR',_utf8mb4'PE',_utf8mb4'PI',_utf8mb4'RJ',_utf8mb4'RN',_utf8mb4'RS',_utf8mb4'RO',_utf8mb4'RR',_utf8mb4'SC',_utf8mb4'SP',_utf8mb4'SE',_utf8mb4'TO')))
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cliente`
--

LOCK TABLES `Cliente` WRITE;
/*!40000 ALTER TABLE `Cliente` DISABLE KEYS */;
INSERT INTO `Cliente` VALUES (1,'Rua B','456','Casa','Jardins','02002000','SP','Brasil'),(2,'Rua 2',NULL,NULL,'Centro','00000002','SP','Brasil'),(3,'Rua 3',NULL,NULL,'Centro','00000003','SP','Brasil'),(4,'Rua 4',NULL,NULL,'Centro','00000004','SP','Brasil'),(5,'Rua 5',NULL,NULL,'Centro','00000005','SP','Brasil'),(6,'Rua 6',NULL,NULL,'Centro','00000006','SP','Brasil'),(7,'Rua 7',NULL,NULL,'Centro','00000007','SP','Brasil'),(8,'Rua 8',NULL,NULL,'Centro','00000008','SP','Brasil'),(9,'Rua 9',NULL,NULL,'Centro','00000009','SP','Brasil'),(10,'Rua 10',NULL,NULL,'Centro','00000010','SP','Brasil'),(11,'Rua 11',NULL,NULL,'Centro','00000011','SP','Brasil'),(12,'Rua 12',NULL,NULL,'Centro','00000012','SP','Brasil'),(13,'Rua 13',NULL,NULL,'Centro','00000013','SP','Brasil'),(14,'Rua 14',NULL,NULL,'Centro','00000014','SP','Brasil'),(15,'Rua 15',NULL,NULL,'Centro','00000015','SP','Brasil'),(16,'Rua 16',NULL,NULL,'Centro','00000016','SP','Brasil'),(17,'Rua 17',NULL,NULL,'Centro','00000017','SP','Brasil'),(18,'Rua 18',NULL,NULL,'Centro','00000018','SP','Brasil'),(19,'Rua 19',NULL,NULL,'Centro','00000019','SP','Brasil'),(20,'Rua 20',NULL,NULL,'Centro','00000020','SP','Brasil'),(21,'Rua 21',NULL,NULL,'Centro','00000021','SP','Brasil'),(22,'Rua 22',NULL,NULL,'Centro','00000022','SP','Brasil'),(23,'Rua 23',NULL,NULL,'Centro','00000023','SP','Brasil'),(24,'Rua 24',NULL,NULL,'Centro','00000024','SP','Brasil'),(25,'Rua 25',NULL,NULL,'Centro','00000025','SP','Brasil'),(26,'Rua 26',NULL,NULL,'Centro','00000026','SP','Brasil'),(27,'Rua 27',NULL,NULL,'Centro','00000027','SP','Brasil'),(28,'Rua 28',NULL,NULL,'Centro','00000028','SP','Brasil'),(29,'Rua 29',NULL,NULL,'Centro','00000029','SP','Brasil'),(30,'Rua 30',NULL,NULL,'Centro','00000030','SP','Brasil'),(31,'Rua 31',NULL,NULL,'Centro','00000031','SP','Brasil'),(32,'Rua 32',NULL,NULL,'Centro','00000032','SP','Brasil'),(33,'Rua 33',NULL,NULL,'Centro','00000033','SP','Brasil'),(34,'Rua 34',NULL,NULL,'Centro','00000034','SP','Brasil'),(35,'Rua 35',NULL,NULL,'Centro','00000035','SP','Brasil'),(36,'Rua 36',NULL,NULL,'Centro','00000036','SP','Brasil'),(37,'Rua 37',NULL,NULL,'Centro','00000037','SP','Brasil'),(38,'Rua 38',NULL,NULL,'Centro','00000038','SP','Brasil'),(39,'Rua 39',NULL,NULL,'Centro','00000039','SP','Brasil'),(40,'Rua 40',NULL,NULL,'Centro','00000040','SP','Brasil'),(41,'Rua 41',NULL,NULL,'Centro','00000041','SP','Brasil'),(42,'Rua 42',NULL,NULL,'Centro','00000042','SP','Brasil'),(43,'Rua 43',NULL,NULL,'Centro','00000043','SP','Brasil'),(44,'Rua 44',NULL,NULL,'Centro','00000044','SP','Brasil'),(45,'Rua 45',NULL,NULL,'Centro','00000045','SP','Brasil'),(46,'Rua 46',NULL,NULL,'Centro','00000046','SP','Brasil'),(47,'Rua 47',NULL,NULL,'Centro','00000047','SP','Brasil'),(48,'Rua 48',NULL,NULL,'Centro','00000048','SP','Brasil'),(49,'Rua 49',NULL,NULL,'Centro','00000049','SP','Brasil'),(50,'Rua 50',NULL,NULL,'Centro','00000050','SP','Brasil'),(51,'Rua 51',NULL,NULL,'Centro','00000051','SP','Brasil'),(52,'Rua 52',NULL,NULL,'Centro','00000052','SP','Brasil'),(53,'Rua 53',NULL,NULL,'Centro','00000053','SP','Brasil'),(54,'Rua 54',NULL,NULL,'Centro','00000054','SP','Brasil'),(55,'Rua 55',NULL,NULL,'Centro','00000055','SP','Brasil'),(56,'Rua 56',NULL,NULL,'Centro','00000056','SP','Brasil'),(57,'Rua 57',NULL,NULL,'Centro','00000057','SP','Brasil'),(58,'Rua 58',NULL,NULL,'Centro','00000058','SP','Brasil'),(59,'Rua 59',NULL,NULL,'Centro','00000059','SP','Brasil'),(60,'Rua 60',NULL,NULL,'Centro','00000060','SP','Brasil'),(61,'Rua 61',NULL,NULL,'Centro','00000061','SP','Brasil'),(62,'Rua 62',NULL,NULL,'Centro','00000062','SP','Brasil'),(63,'Rua 63',NULL,NULL,'Centro','00000063','SP','Brasil'),(64,'Rua 64',NULL,NULL,'Centro','00000064','SP','Brasil'),(65,'Rua 65',NULL,NULL,'Centro','00000065','SP','Brasil'),(66,'Rua 66',NULL,NULL,'Centro','00000066','SP','Brasil'),(67,'Rua 67',NULL,NULL,'Centro','00000067','SP','Brasil'),(68,'Rua 68',NULL,NULL,'Centro','00000068','SP','Brasil'),(69,'Rua 69',NULL,NULL,'Centro','00000069','SP','Brasil'),(70,'Rua 70',NULL,NULL,'Centro','00000070','SP','Brasil'),(71,'Rua 71',NULL,NULL,'Centro','00000071','SP','Brasil'),(72,'Rua 72',NULL,NULL,'Centro','00000072','SP','Brasil'),(73,'Rua 73',NULL,NULL,'Centro','00000073','SP','Brasil'),(74,'Rua 74',NULL,NULL,'Centro','00000074','SP','Brasil'),(75,'Rua 75',NULL,NULL,'Centro','00000075','SP','Brasil'),(76,'Rua 76',NULL,NULL,'Centro','00000076','SP','Brasil'),(77,'Rua 77',NULL,NULL,'Centro','00000077','SP','Brasil'),(78,'Rua 78',NULL,NULL,'Centro','00000078','SP','Brasil'),(79,'Rua 79',NULL,NULL,'Centro','00000079','SP','Brasil'),(80,'Rua 80',NULL,NULL,'Centro','00000080','SP','Brasil'),(81,'Rua 81',NULL,NULL,'Centro','00000081','SP','Brasil'),(82,'Rua 82',NULL,NULL,'Centro','00000082','SP','Brasil'),(83,'Rua 83',NULL,NULL,'Centro','00000083','SP','Brasil'),(84,'Rua 84',NULL,NULL,'Centro','00000084','SP','Brasil'),(85,'Rua 85',NULL,NULL,'Centro','00000085','SP','Brasil'),(86,'Rua 86',NULL,NULL,'Centro','00000086','SP','Brasil'),(87,'Rua 87',NULL,NULL,'Centro','00000087','SP','Brasil'),(88,'Rua 88',NULL,NULL,'Centro','00000088','SP','Brasil'),(89,'Rua 89',NULL,NULL,'Centro','00000089','SP','Brasil'),(90,'Rua 90',NULL,NULL,'Centro','00000090','SP','Brasil'),(91,'Rua 91',NULL,NULL,'Centro','00000091','SP','Brasil'),(92,'Rua 92',NULL,NULL,'Centro','00000092','SP','Brasil'),(93,'Rua 93',NULL,NULL,'Centro','00000093','SP','Brasil'),(94,'Rua 94',NULL,NULL,'Centro','00000094','SP','Brasil'),(95,'Rua 95',NULL,NULL,'Centro','00000095','SP','Brasil'),(96,'Rua 96',NULL,NULL,'Centro','00000096','SP','Brasil'),(97,'Rua 97',NULL,NULL,'Centro','00000097','SP','Brasil'),(98,'Rua 98',NULL,NULL,'Centro','00000098','SP','Brasil'),(99,'Rua 99',NULL,NULL,'Centro','00000099','SP','Brasil'),(100,'Rua 100',NULL,NULL,'Centro','00000100','SP','Brasil'),(128,'Rua A','123','Apto 10','Centro','01001000','SP','Brasil'),(129,'Rua das Flores','123','Apto 45','Centro','12345678','SP','Brasil');
/*!40000 ALTER TABLE `Cliente` ENABLE KEYS */;
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
