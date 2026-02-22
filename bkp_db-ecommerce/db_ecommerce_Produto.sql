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
-- Table structure for table `Produto`
--

DROP TABLE IF EXISTS `Produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Produto` (
  `idProduto` int NOT NULL AUTO_INCREMENT,
  `Descricao` varchar(45) NOT NULL,
  `Classificacao` enum('Bebe','Infantil','Adulto') NOT NULL,
  `Categoria` varchar(45) NOT NULL,
  `Valor` decimal(10,2) NOT NULL,
  `Plataforma_idPlataforma` int NOT NULL,
  `Fornecedor_idFornecedor` int NOT NULL,
  PRIMARY KEY (`idProduto`),
  UNIQUE KEY `idProduto` (`idProduto`),
  KEY `Plataforma_idPlataforma` (`Plataforma_idPlataforma`),
  KEY `Fornecedor_idFornecedor` (`Fornecedor_idFornecedor`),
  CONSTRAINT `produto_ibfk_1` FOREIGN KEY (`Plataforma_idPlataforma`) REFERENCES `Plataforma` (`idPlataforma`),
  CONSTRAINT `produto_ibfk_2` FOREIGN KEY (`Fornecedor_idFornecedor`) REFERENCES `Fornecedor` (`idFornecedor`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Produto`
--

LOCK TABLES `Produto` WRITE;
/*!40000 ALTER TABLE `Produto` DISABLE KEYS */;
INSERT INTO `Produto` VALUES (1,'Produto 1','Adulto','Geral',19.90,1,1),(2,'Produto 2','Adulto','Geral',29.90,1,1),(3,'Produto 3','Infantil','Geral',39.90,1,1),(4,'Produto 4','Infantil','Geral',49.90,1,2),(5,'Produto 5','Infantil','Geral',59.90,1,2),(6,'Produto 6','Bebe','Geral',69.90,1,2),(7,'Produto 7','Bebe','Geral',79.90,1,3),(8,'Produto 8','Adulto','Geral',89.90,1,3),(9,'Produto 9','Adulto','Geral',99.90,1,3),(10,'Produto 10','Infantil','Geral',109.90,1,3);
/*!40000 ALTER TABLE `Produto` ENABLE KEYS */;
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
