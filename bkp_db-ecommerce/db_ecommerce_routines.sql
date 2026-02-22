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
-- Dumping events for database 'db_ecommerce'
--

--
-- Dumping routines for database 'db_ecommerce'
--
/*!50003 DROP PROCEDURE IF EXISTS `gerenciar_produto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `gerenciar_produto`(
    IN pOperacao VARCHAR(10),
    IN pIdProduto INT,
    IN pDescricao VARCHAR(45),
    IN pClassificacao VARCHAR(10),
    IN pCategoria VARCHAR(45),
    IN pValor DECIMAL(10,2)
)
BEGIN

    DECLARE vUser VARCHAR(100);
    DECLARE vPodeInsert TINYINT;
    DECLARE vPodeUpdate TINYINT;
    DECLARE vPodeDelete TINYINT;

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Erro na operação';
    END;

    SET vUser = SUBSTRING_INDEX(USER(), '@', 1);

    -- valida se usuário tem registro
    IF NOT EXISTS (
        SELECT 1 FROM Permissao_Usuario WHERE Usuario = vUser
    ) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Usuário sem registro de permissão';
    END IF;

    SELECT Pode_Insert, Pode_Update, Pode_Delete
    INTO vPodeInsert, vPodeUpdate, vPodeDelete
    FROM Permissao_Usuario
    WHERE Usuario = vUser;

    -- valida ENUM manualmente
    IF pOperacao IN ('INSERT','UPDATE') THEN
        IF pClassificacao NOT IN ('Bebe','Infantil','Adulto') THEN
            SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Classificação inválida';
        END IF;
    END IF;

    START TRANSACTION;

    IF pOperacao = 'INSERT' THEN

        IF vPodeInsert = 1 THEN

            INSERT INTO Produto
            (Descricao, Valor, Classificacao, Categoria, Plataforma_idPlataforma, Fornecedor_idFornecedor)
            VALUES
            (pDescricao, pValor, pClassificacao, pCategoria, 1, 1);

        ELSE
            SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Usuário sem permissão para INSERT';
        END IF;

    ELSEIF pOperacao = 'UPDATE' THEN

        IF vPodeUpdate = 1 THEN

            UPDATE Produto
            SET Descricao = pDescricao,
                Valor = pValor,
                Classificacao = pClassificacao,
                Categoria = pCategoria
            WHERE idProduto = pIdProduto;

            IF ROW_COUNT() = 0 THEN
                SIGNAL SQLSTATE '45000'
                SET MESSAGE_TEXT = 'Produto não encontrado';
            END IF;

        ELSE
            SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Usuário sem permissão para UPDATE';
        END IF;

    ELSEIF pOperacao = 'DELETE' THEN

        IF vPodeDelete = 1 THEN

            DELETE FROM Produto
            WHERE idProduto = pIdProduto;

            IF ROW_COUNT() = 0 THEN
                SIGNAL SQLSTATE '45000'
                SET MESSAGE_TEXT = 'Produto não encontrado';
            END IF;

        ELSE
            SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Usuário sem permissão para DELETE';
        END IF;

    ELSE
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Operação inválida';
    END IF;

    COMMIT;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_cliente_crud` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_cliente_crud`(
    IN p_acao INT,
    IN p_idCliente INT,
    IN p_Rua VARCHAR(45),
    IN p_Numero VARCHAR(10),
    IN p_Complemento VARCHAR(45),
    IN p_Bairro VARCHAR(45),
    IN p_CEP CHAR(8),
    IN p_UF CHAR(2),
    IN p_Pais VARCHAR(45)
)
BEGIN
    IF p_acao = 1 THEN
        -- SELECT
        SELECT * 
        FROM Cliente
        WHERE idCliente = p_idCliente;

    ELSEIF p_acao = 2 THEN
        -- INSERT
        INSERT INTO Cliente
        (Rua, Numero, Complemento, Bairro, CEP, UF, Pais)
        VALUES
        (p_Rua, p_Numero, p_Complemento, p_Bairro, p_CEP, p_UF, p_Pais);

    ELSEIF p_acao = 3 THEN
        -- UPDATE
        UPDATE Cliente
        SET
            Rua = p_Rua,
            Numero = p_Numero,
            Complemento = p_Complemento,
            Bairro = p_Bairro,
            CEP = p_CEP,
            UF = p_UF,
            Pais = p_Pais
        WHERE idCliente = p_idCliente;

    ELSEIF p_acao = 4 THEN
        -- DELETE
        DELETE FROM Cliente
        WHERE idCliente = p_idCliente;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-02-21 23:50:49
