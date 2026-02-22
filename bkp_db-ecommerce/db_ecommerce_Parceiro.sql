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
-- Table structure for table `Parceiro`
--

DROP TABLE IF EXISTS `Parceiro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Parceiro` (
  `idParceiro` int NOT NULL AUTO_INCREMENT,
  `Rua` varchar(45) NOT NULL,
  `Numero` varchar(10) DEFAULT NULL,
  `Complemento` varchar(45) DEFAULT NULL,
  `Bairro` varchar(45) NOT NULL,
  `CEP` char(8) NOT NULL,
  `UF` char(2) NOT NULL,
  `Pais` varchar(45) NOT NULL,
  PRIMARY KEY (`idParceiro`),
  UNIQUE KEY `idParceiro` (`idParceiro`),
  CONSTRAINT `parceiro_chk_1` CHECK (((`CEP` >= _utf8mb4'00000000') and (`CEP` <= _utf8mb4'99999999'))),
  CONSTRAINT `parceiro_chk_2` CHECK ((`UF` in (_utf8mb4'AC',_utf8mb4'AL',_utf8mb4'AP',_utf8mb4'AM',_utf8mb4'BA',_utf8mb4'CE',_utf8mb4'DF',_utf8mb4'ES',_utf8mb4'GO',_utf8mb4'MA',_utf8mb4'MT',_utf8mb4'MS',_utf8mb4'MG',_utf8mb4'PA',_utf8mb4'PB',_utf8mb4'PR',_utf8mb4'PE',_utf8mb4'PI',_utf8mb4'RJ',_utf8mb4'RN',_utf8mb4'RS',_utf8mb4'RO',_utf8mb4'RR',_utf8mb4'SC',_utf8mb4'SP',_utf8mb4'SE',_utf8mb4'TO')))
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Parceiro`
--

LOCK TABLES `Parceiro` WRITE;
/*!40000 ALTER TABLE `Parceiro` DISABLE KEYS */;
INSERT INTO `Parceiro` VALUES (1,'Rua A',NULL,NULL,'Centro','12345678','SP','Brasil'),(2,'Rua B',NULL,NULL,'Centro','23456789','RJ','Brasil'),(3,'Rua C',NULL,NULL,'Centro','34567890','MG','Brasil');
/*!40000 ALTER TABLE `Parceiro` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-02-21 23:50:47
