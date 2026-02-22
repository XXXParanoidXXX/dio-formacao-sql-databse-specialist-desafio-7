
-- *** Transação com consultas e modificações (SQL direto) ***
select @@autocommit;
set @@autocommit = 0;

USE db_ecommerce;

START TRANSACTION;

-- Consulta (leitura dentro da transação)
SELECT saldo
FROM Cliente
WHERE id_cliente = 1
FOR UPDATE;

-- Modificação de dados
UPDATE Cliente
SET saldo = saldo - 200
WHERE id_cliente = 1;

INSERT INTO Pedido (id_cliente, valor_total)
VALUES (1, 200);

-- Confirma a transação
COMMIT;

-- *** Transação com PROCEDURE + SAVEPOINT ***
DELIMITER $$

CREATE PROCEDURE realizar_pedido_com_savepoint (
    IN p_id_cliente INT,
    IN p_valor DECIMAL(10,2)
)
BEGIN
    DECLARE saldo_atual DECIMAL(10,2);

    START TRANSACTION;

    -- Consulta com bloqueio para garantir consistência
    SELECT saldo
    INTO saldo_atual
    FROM Cliente
    WHERE id_cliente = p_id_cliente
    FOR UPDATE;

    -- Criação do ponto de salvamento
    SAVEPOINT sp_pedido;

    -- Regra de negócio
    IF saldo_atual < p_valor THEN
        -- Rollback parcial até o savepoint
        ROLLBACK TO SAVEPOINT sp_pedido;

        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Saldo insuficiente para realizar o pedido';
    ELSE
        -- Débito do saldo
        UPDATE Cliente
        SET saldo = saldo - p_valor
        WHERE id_cliente = p_id_cliente;

        -- Registro do pedido
        INSERT INTO Pedido (id_cliente, valor_total)
        VALUES (p_id_cliente, p_valor);

        -- Confirma toda a transação
        COMMIT;
    END IF;
END$$

DELIMITER ;

CALL realizar_pedido_com_savepoint(1, 200);

/*
# ================================
# Backup e Recovery no MySQL (CLI)
# ================================

# (SQL – executado no mysql>)
USE db_ecommerce;

# ----------------
# BACKUP SIMPLES
# ----------------
mysqldump -u root -p db_ecommerce > bkp_db_ecommerce.sql

# ----------------
# RECOVERY
# ----------------
mysql -u root -p -e "CREATE DATABASE db_ecommerce_recovery;"

mysql -u root -p db_ecommerce_recovery < bkp_db_ecommerce.sql

# -------------------------------------------------
# BACKUP FULL (procedures, triggers e eventos)
# -------------------------------------------------
mysqldump -u root -p \
  --routines \
  --triggers \
  --events \
  db_ecommerce > bkp_db_ecommerce_full.sql

# ---------------------------------------
# BACKUP SOMENTE DADOS (sem CREATE TABLE)
# ---------------------------------------
mysqldump -u root -p \
  --no-create-info \
  db_ecommerce > bkp_db_ecommerce_noData.sql

# ------------------------------------
# BACKUP DE TODOS OS BANCOS DA INSTÂNCIA
# ------------------------------------
mysqldump -u root -p \
  --all-databases > bkp_all_databases.sql

# -----------------------------------------
# BACKUP DE BANCOS ESPECÍFICOS DA INSTÂNCIA
# -----------------------------------------
mysqldump -u root -p \
  --databases world sakila > bkp_selected_databases.sql

# --------------------------------
# BACKUP DE TABELA ESPECÍFICA
# --------------------------------
mysqldump -u root -p \
  db_ecommerce Cliente > bkp_db_ecommerce_Cliente.sql
*/





