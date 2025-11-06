# Portefuiel_01

Ce dépôt contient les scripts et ressources liés au suivi de portefeuilles crypto.

## Structure

- `db/binance_p1_snapshot.sql` : script SQL pour créer la base `crypto_portfolios`,
  la table `coin_positions` et insérer les snapshots successifs du portefeuille `Binance_p1`
  (captures du 6 novembre 2025 à 18:30 et 19:05 UTC).

## Utilisation

1. Exécuter le script SQL dans votre environnement MySQL :
   ```bash
   mysql -u <user> -p < db/binance_p1_snapshot.sql
   ```
2. Les données du portefeuille `Binance_p1` seront stockées dans la table `coin_positions`.
   Deux snapshots sont fournis par défaut : 18:30 UTC et 19:05 UTC.
3. Adaptez les valeurs ou ajoutez d’autres snapshots selon vos besoins.

> Pensez à ajuster les paramètres MySQL (utilisateur, mot de passe, hôte) selon votre configuration.
