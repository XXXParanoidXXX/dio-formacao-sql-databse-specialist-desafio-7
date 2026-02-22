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
-- Table structure for table `Fornecedor`
--

DROP TABLE IF EXISTS `Fornecedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Fornecedor` (
  `idFornecedor` int NOT NULL AUTO_INCREMENT,
  `Razao_Social` varchar(45) NOT NULL,
  `CNPJ` char(14) NOT NULL,
  `Data_Criacao` date NOT NULL,
  `Parceiro_idParceiro` int NOT NULL,
  PRIMARY KEY (`idFornecedor`),
  UNIQUE KEY `idFornecedor` (`idFornecedor`),
  UNIQUE KEY `CNPJ` (`CNPJ`),
  KEY `Parceiro_idParceiro` (`Parceiro_idParceiro`),
  CONSTRAINT `fornecedor_ibfk_1` FOREIGN KEY (`Parceiro_idParceiro`) REFERENCES `Parceiro` (`idParceiro`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fornecedor`
--

LOCK TABLES `Fornecedor` WRITE;
/*!40000 ALTER TABLE `Fornecedor` DISABLE KEYS */;
INSERT INTO `Fornecedor` VALUES (1,'Fornecedor A','11111111111111','2015-01-01',1),(2,'Fornecedor B','22222222222222','2016-01-01',2),(3,'Fornecedor C','33333333333333','2017-01-01',3);
/*!40000 ALTER TABLE `Fornecedor` ENABLE KEYS */;
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
