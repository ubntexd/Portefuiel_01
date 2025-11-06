-- -----------------------------------------------------------------------------
--  Script : db/binance_p1_snapshot.sql
--  Objet  : Créer le schéma d’entreposage et enregistrer un snapshot
--           des actifs du portefeuille Binance_p1.
--  Usage  : mysql -u <user> -p < db/binance_p1_snapshot.sql
-- -----------------------------------------------------------------------------

CREATE DATABASE IF NOT EXISTS crypto_portfolios
  DEFAULT CHARACTER SET utf8mb4
  DEFAULT COLLATE utf8mb4_unicode_ci;

USE crypto_portfolios;

CREATE TABLE IF NOT EXISTS coin_positions (
  id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  trade_timestamp DATETIME NOT NULL,
  portfolio_name VARCHAR(100) NOT NULL,
  coin_symbol VARCHAR(20) NOT NULL,
  entry_price DECIMAL(18,8) NOT NULL,
  threshold_price DECIMAL(18,8),
  threshold_percent DECIMAL(9,6),
  price_variation DECIMAL(18,8),
  estimated_pnl DECIMAL(18,8),
  net_amount DECIMAL(18,8),
  trade_volume DECIMAL(18,8),
  measured_slippage DECIMAL(9,6),
  fees_paid DECIMAL(18,8),
  trigger_reason VARCHAR(255),
  notes TEXT,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  INDEX idx_trade_ts_portfolio (trade_timestamp, portfolio_name),
  INDEX idx_coin (coin_symbol)
);

-- Optionnel : décommenter pour nettoyer avant l’insertion du snapshot
-- TRUNCATE TABLE coin_positions;

INSERT INTO coin_positions (
  trade_timestamp,
  portfolio_name,
  coin_symbol,
  entry_price,
  threshold_price,
  threshold_percent,
  price_variation,
  estimated_pnl,
  net_amount,
  trade_volume,
  measured_slippage,
  fees_paid,
  trigger_reason,
  notes
) VALUES
  ('2025-11-06 18:30:00', 'Binance_p1', 'BTC',
   101406.09500000, NULL, NULL, 0.00000000, 0.00000000, 6606.06051040,
   0.06514461, 0.000000, 0.00000000, 'Snapshot import',
   'Valeurs importées depuis la distribution Hummingbot du 6 nov. 2025'),
  ('2025-11-06 18:30:00', 'Binance_p1', 'ETH',
   3313.25500000, NULL, NULL, 0.00000000, 0.00000000, 6392.75068203,
   1.92944723, 0.000000, 0.00000000, 'Snapshot import',
   'Valeurs importées depuis la distribution Hummingbot du 6 nov. 2025'),
  ('2025-11-06 18:30:00', 'Binance_p1', 'SOL',
   156.06500000, NULL, NULL, 0.00000000, 0.00000000, 3201.46507360,
   20.51366465, 0.000000, 0.00000000, 'Snapshot import',
   'Valeurs importées depuis la distribution Hummingbot du 6 nov. 2025'),
  ('2025-11-06 18:30:00', 'Binance_p1', 'PAXG',
   3982.36500000, NULL, NULL, 0.00000000, 0.00000000, 1006.81431122,
   0.25281819, 0.000000, 0.00000000, 'Snapshot import',
   'Valeurs importées depuis la distribution Hummingbot du 6 nov. 2025'),
  ('2025-11-06 18:30:00', 'Binance_p1', 'BNB',
   942.63500000, NULL, NULL, 0.00000000, 0.00000000, 196.77453780,
   0.20874945, 0.000000, 0.00000000, 'Snapshot import',
   'Valeurs importées depuis la distribution Hummingbot du 6 nov. 2025'),
  ('2025-11-06 18:30:00', 'Binance_p1', 'USDT',
   1.00000000, NULL, NULL, 0.00000000, 0.00000000, 188.65737072,
   188.65737072, 0.000000, 0.00000000, 'Snapshot import',
   'Valeurs importées depuis la distribution Hummingbot du 6 nov. 2025'),
  ('2025-11-06 18:30:00', 'Binance_p1', 'LINK',
   14.49500000, NULL, NULL, 0.00000000, 0.00000000, 38.37502677,
   2.64746649, 0.000000, 0.00000000, 'Snapshot import',
   'Valeurs importées depuis la distribution Hummingbot du 6 nov. 2025'),
  ('2025-11-06 18:30:00', 'Binance_p1', 'FDUSD',
   1.00000000, NULL, NULL, 0.00000000, 0.00000000, 1.51017096,
   1.51017096, 0.000000, 0.00000000, 'Snapshot import',
   'Valeurs importées depuis la distribution Hummingbot du 6 nov. 2025'),
  ('2025-11-06 18:30:00', 'Binance_p1', 'XRP',
   2.21975000, NULL, NULL, 0.00000000, 0.00000000, 0.38678325,
   0.17424631, 0.000000, 0.00000000, 'Snapshot import',
   'Valeurs importées depuis la distribution Hummingbot du 6 nov. 2025'),
  ('2025-11-06 18:30:00', 'Binance_p1', 'ADA',
   0.52345000, NULL, NULL, 0.00000000, 0.00000000, 0.38564490,
   0.73673685, 0.000000, 0.00000000, 'Snapshot import',
   'Valeurs importées depuis la distribution Hummingbot du 6 nov. 2025'),
  ('2025-11-06 18:30:00', 'Binance_p1', 'DOGE',
   0.15940500, NULL, NULL, 0.00000000, 0.00000000, 0.14472586,
   0.90791290, 0.000000, 0.00000000, 'Snapshot import',
   'Valeurs importées depuis la distribution Hummingbot du 6 nov. 2025'),
  ('2025-11-06 18:30:00', 'Binance_p1', 'TRX',
   0.28325000, NULL, NULL, 0.00000000, 0.00000000, 0.00000023,
   0.00000080, 0.000000, 0.00000000, 'Snapshot import',
   'Valeurs importées depuis la distribution Hummingbot du 6 nov. 2025');

-- Snapshot du 6 novembre 2025 à 19:05 UTC
INSERT INTO coin_positions (
  trade_timestamp,
  portfolio_name,
  coin_symbol,
  entry_price,
  threshold_price,
  threshold_percent,
  price_variation,
  estimated_pnl,
  net_amount,
  trade_volume,
  measured_slippage,
  fees_paid,
  trigger_reason,
  notes
) VALUES
  ('2025-11-06 19:05:00', 'Binance_p1', 'BTC',
   101772.03500000, NULL, NULL, 0.00000000, 0.00000000, 6629.89952900,
   0.06514461, 0.000000, 0.00000000, 'Snapshot import',
   'Distribution Hummingbot du 6 nov. 2025 à 19:05 UTC'),
  ('2025-11-06 19:05:00', 'Binance_p1', 'ETH',
   3336.07500000, NULL, NULL, 0.00000000, 0.00000000, 6436.78066800,
   1.92944723, 0.000000, 0.00000000, 'Snapshot import',
   'Distribution Hummingbot du 6 nov. 2025 à 19:05 UTC'),
  ('2025-11-06 19:05:00', 'Binance_p1', 'SOL',
   157.30500000, NULL, NULL, 0.00000000, 0.00000000, 3226.90201800,
   20.51366465, 0.000000, 0.00000000, 'Snapshot import',
   'Distribution Hummingbot du 6 nov. 2025 à 19:05 UTC'),
  ('2025-11-06 19:05:00', 'Binance_p1', 'PAXG',
   3989.26500100, NULL, NULL, 0.00000000, 0.00000000, 1008.55875700,
   0.25281819, 0.000000, 0.00000000, 'Snapshot import',
   'Distribution Hummingbot du 6 nov. 2025 à 19:05 UTC'),
  ('2025-11-06 19:05:00', 'Binance_p1', 'BNB',
   951.72499900, NULL, NULL, 0.00000000, 0.00000000, 198.67207000,
   0.20874945, 0.000000, 0.00000000, 'Snapshot import',
   'Distribution Hummingbot du 6 nov. 2025 à 19:05 UTC'),
  ('2025-11-06 19:05:00', 'Binance_p1', 'USDT',
   1.00000000, NULL, NULL, 0.00000000, 0.00000000, 188.65737100,
   188.65737072, 0.000000, 0.00000000, 'Snapshot import',
   'Distribution Hummingbot du 6 nov. 2025 à 19:05 UTC'),
  ('2025-11-06 19:05:00', 'Binance_p1', 'LINK',
   14.65500000, NULL, NULL, 0.00000000, 0.00000000, 38.79862100,
   2.64746649, 0.000000, 0.00000000, 'Snapshot import',
   'Distribution Hummingbot du 6 nov. 2025 à 19:05 UTC'),
  ('2025-11-06 19:05:00', 'Binance_p1', 'FDUSD',
   1.00000000, NULL, NULL, 0.00000000, 0.00000000, 1.51017100,
   1.51017096, 0.000000, 0.00000000, 'Snapshot import',
   'Distribution Hummingbot du 6 nov. 2025 à 19:05 UTC'),
  ('2025-11-06 19:05:00', 'Binance_p1', 'ADA',
   0.52805000, NULL, NULL, 0.00000000, 0.00000000, 0.38903400,
   0.73673685, 0.000000, 0.00000000, 'Snapshot import',
   'Distribution Hummingbot du 6 nov. 2025 à 19:05 UTC'),
  ('2025-11-06 19:05:00', 'Binance_p1', 'XRP',
   2.22645200, NULL, NULL, 0.00000000, 0.00000000, 0.38795100,
   0.17424631, 0.000000, 0.00000000, 'Snapshot import',
   'Distribution Hummingbot du 6 nov. 2025 à 19:05 UTC'),
  ('2025-11-06 19:05:00', 'Binance_p1', 'DOGE',
   0.16095500, NULL, NULL, 0.00000000, 0.00000000, 0.14613300,
   0.90791290, 0.000000, 0.00000000, 'Snapshot import',
   'Distribution Hummingbot du 6 nov. 2025 à 19:05 UTC'),
  ('2025-11-06 19:05:00', 'Binance_p1', 'TRX',
   0.00000000, NULL, NULL, 0.00000000, 0.00000000, 0.00000000,
   0.00000080, 0.000000, 0.00000000, 'Snapshot import',
   'Distribution Hummingbot du 6 nov. 2025 à 19:05 UTC');

-- -----------------------------------------------------------------------------
-- Fin du script
-- -----------------------------------------------------------------------------

