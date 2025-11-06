# Portefuiel_01

Ce dépôt contient les scripts et ressources liés au suivi de portefeuilles crypto.

## Structure

- `db/binance_p1_snapshot.sql` : script SQL pour créer la base `crypto_portfolios`,
  la table `coin_positions` et insérer le snapshot actuel du portefeuille `Binance_p1`.

## Utilisation

1. Exécuter le script SQL dans votre environnement MySQL :
   ```bash
   mysql -u <user> -p < db/binance_p1_snapshot.sql
   ```
2. Les données du portefeuille `Binance_p1` seront stockées dans la table `coin_positions`.
3. Adaptez les valeurs ou ajoutez d’autres snapshots selon vos besoins.

> Pensez à ajuster les paramètres MySQL (utilisateur, mot de passe, hôte) selon votre configuration.
