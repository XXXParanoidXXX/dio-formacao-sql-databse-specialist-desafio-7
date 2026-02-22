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
-- Table structure for table `Pedido_has_Produto`
--

DROP TABLE IF EXISTS `Pedido_has_Produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Pedido_has_Produto` (
  `Pedido_idpedido` int NOT NULL,
  `Produto_idProduto` int NOT NULL,
  `Qtd` int NOT NULL,
  `Valor_Unitario` decimal(10,2) NOT NULL,
  PRIMARY KEY (`Pedido_idpedido`,`Produto_idProduto`),
  KEY `Produto_idProduto` (`Produto_idProduto`),
  CONSTRAINT `pedido_has_produto_ibfk_1` FOREIGN KEY (`Pedido_idpedido`) REFERENCES `Pedido` (`idPedido`),
  CONSTRAINT `pedido_has_produto_ibfk_2` FOREIGN KEY (`Produto_idProduto`) REFERENCES `Produto` (`idProduto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pedido_has_Produto`
--

LOCK TABLES `Pedido_has_Produto` WRITE;
/*!40000 ALTER TABLE `Pedido_has_Produto` DISABLE KEYS */;
INSERT INTO `Pedido_has_Produto` VALUES (1,1,1,19.90),(2,2,1,29.90),(3,3,1,39.90),(4,4,1,49.90),(5,5,1,59.90),(6,6,1,69.90),(7,7,1,79.90),(8,8,1,89.90),(9,9,1,99.90),(10,10,1,109.90),(11,1,1,19.90),(12,2,1,29.90),(13,3,1,39.90),(14,4,1,49.90),(15,5,1,59.90),(16,6,1,69.90),(17,7,1,79.90),(18,8,1,89.90),(19,9,1,99.90),(20,10,1,109.90),(21,1,1,19.90),(22,2,1,29.90),(23,3,1,39.90),(24,4,1,49.90),(25,5,1,59.90),(26,6,1,69.90),(27,7,1,79.90),(28,8,1,89.90),(29,9,1,99.90),(30,10,1,109.90),(31,1,1,19.90),(32,2,1,29.90),(33,3,1,39.90),(34,4,1,49.90),(35,5,1,59.90),(36,6,1,69.90),(37,7,1,79.90),(38,8,1,89.90),(39,9,1,99.90),(40,10,1,109.90),(41,1,1,19.90),(42,2,1,29.90),(43,3,1,39.90),(44,4,1,49.90),(45,5,1,59.90),(46,6,1,69.90),(47,7,1,79.90),(48,8,1,89.90),(49,9,1,99.90),(50,10,1,109.90),(51,1,1,19.90),(52,2,1,29.90),(53,3,1,39.90),(54,4,1,49.90),(55,5,1,59.90),(56,6,1,69.90),(57,7,1,79.90),(58,8,1,89.90),(59,9,1,99.90),(60,10,1,109.90),(61,1,1,19.90),(62,2,1,29.90),(63,3,1,39.90),(64,4,1,49.90),(65,5,1,59.90),(66,6,1,69.90),(67,7,1,79.90),(68,8,1,89.90),(69,9,1,99.90),(70,10,1,109.90),(71,1,1,19.90),(72,2,1,29.90),(73,3,1,39.90),(74,4,1,49.90),(75,5,1,59.90),(76,6,1,69.90),(77,7,1,79.90),(78,8,1,89.90),(79,9,1,99.90),(80,10,1,109.90),(81,1,1,19.90),(82,2,1,29.90),(83,3,1,39.90),(84,4,1,49.90),(85,5,1,59.90),(86,6,1,69.90),(87,7,1,79.90),(88,8,1,89.90),(89,9,1,99.90),(90,10,1,109.90),(91,1,1,19.90),(92,2,1,29.90),(93,3,1,39.90),(94,4,1,49.90),(95,5,1,59.90),(96,6,1,69.90),(97,7,1,79.90),(98,8,1,89.90),(99,9,1,99.90),(100,10,1,109.90);
/*!40000 ALTER TABLE `Pedido_has_Produto` ENABLE KEYS */;
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
