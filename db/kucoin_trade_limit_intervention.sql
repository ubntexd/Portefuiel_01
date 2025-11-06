-- -----------------------------------------------------------------------------
--  Script : db/kucoin_trade_limit_intervention.sql
--  Objet  : Créer la base de données et enregistrer les opérations
--           "Limite de l'intervalle" de KuCoin (compte kkkzzz1).
--  Usage  : mysql -u <user> -p < db/kucoin_trade_limit_intervention.sql
-- -----------------------------------------------------------------------------

CREATE DATABASE IF NOT EXISTS kucoin_trade_limit_intervention
  DEFAULT CHARACTER SET utf8mb4
  DEFAULT COLLATE utf8mb4_unicode_ci;

USE kucoin_trade_limit_intervention;

CREATE TABLE IF NOT EXISTS range_bound_operations (
  id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  operation_timestamp DATETIME NOT NULL,
  coin_symbol VARCHAR(20) NOT NULL,
  product_name VARCHAR(100) NOT NULL,
  operation_type VARCHAR(50) NOT NULL,
  amount DECIMAL(18,8) NOT NULL,
  remark VARCHAR(100) NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  INDEX idx_timestamp (operation_timestamp),
  INDEX idx_coin (coin_symbol)
);

INSERT INTO range_bound_operations (
  operation_timestamp,
  coin_symbol,
  product_name,
  operation_type,
  amount,
  remark
) VALUES
  ('2025-11-03 03:20:00', 'USDT', 'Limite de l''intervalle', 'Règlement', 980.00000000, 'RANGE BOUND-ETH-1102'),
  ('2025-11-03 00:20:00', 'USDT', 'Limite de l''intervalle', 'Règlement', 378.13300000, 'RANGE BOUND-ETH-1102'),
  ('2025-11-02 15:20:00', 'ETH', 'Limite de l''intervalle', 'Règlement', 0.36435356, 'RANGE BOUND-ETH-1102'),
  ('2025-11-02 15:20:00', 'ETH', 'Limite de l''intervalle', 'Règlement', 0.29700000, 'RANGE BOUND-ETH-1102'),
  ('2025-11-02 14:20:00', 'USDT', 'Limite de l''intervalle', 'Règlement', 980.00000000, 'RANGE BOUND-BTC-1102'),
  ('2025-11-02 12:53:14', 'USDT', 'Limite de l''intervalle', 'Souscription', 385.85000000, 'RANGE BOUND-ETH-1102'),
  ('2025-11-02 12:26:06', 'USDT', 'Limite de l''intervalle', 'Souscription', 1000.00000000, 'RANGE BOUND-ETH-1102'),
  ('2025-11-02 12:22:31', 'USDT', 'Limite de l''intervalle', 'Souscription', 1000.00000000, 'RANGE BOUND-BTC-1102'),
  ('2025-11-02 11:20:00', 'USDT', 'Limite de l''intervalle', 'Règlement', 1960.00000000, 'RANGE BOUND-BTC-1102'),
  ('2025-11-02 09:31:56', 'USDT', 'Limite de l''intervalle', 'Souscription', 2000.00000000, 'RANGE BOUND-BTC-1102'),
  ('2025-11-02 06:38:59', 'ETH', 'Limite de l''intervalle', 'Souscription', 0.30000000, 'RANGE BOUND-ETH-1102'),
  ('2025-11-02 06:14:53', 'ETH', 'Limite de l''intervalle', 'Souscription', 0.36803389, 'RANGE BOUND-ETH-1102'),
  ('2025-11-01 16:20:00', 'ETH', 'Limite de l''intervalle', 'Règlement', 0.66803389, 'RANGE BOUND-ETH-1101'),
  ('2025-11-01 07:41:24', 'ETH', 'Limite de l''intervalle', 'Souscription', 0.68166723, 'RANGE BOUND-ETH-1101'),
  ('2025-10-31 20:20:00', 'ETH', 'Limite de l''intervalle', 'Règlement', 0.38166723, 'RANGE BOUND-ETH-1031'),
  ('2025-10-31 15:17:45', 'ETH', 'Limite de l''intervalle', 'Souscription', 0.38552245, 'RANGE BOUND-ETH-1031');

-- -----------------------------------------------------------------------------
-- Fin du script
-- -----------------------------------------------------------------------------

