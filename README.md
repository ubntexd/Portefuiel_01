# Portefuiel_01

Ce dépôt contient les scripts et ressources liés au suivi de portefeuilles crypto.

## Structure

- `db/binance_p1_snapshot.sql` : script SQL pour créer la base `crypto_portfolios`,
  la table `coin_positions` et insérer les snapshots successifs du portefeuille `Binance_p1`
  (captures du 6 novembre 2025 à 18:30 et 19:05 UTC).
- `db/kucoin_trade_limit_intervention.sql` : création de la base `kucoin_trade_limit_intervention`
  et insertion des opérations KuCoin “Limite de l'intervalle” (souscriptions/règlements du 31 oct.
  au 3 nov. 2025).

## Utilisation

1. Exécuter le script SQL dans votre environnement MySQL :
   ```bash
   mysql -u <user> -p < db/binance_p1_snapshot.sql
   ```
2. Les données du portefeuille `Binance_p1` seront stockées dans la table `coin_positions`.
   Deux snapshots sont fournis par défaut : 18:30 UTC et 19:05 UTC.
3. Adaptez les valeurs ou ajoutez d’autres snapshots selon vos besoins.

Pour les opérations KuCoin :

```bash
mysql -u <user> -p < db/kucoin_trade_limit_intervention.sql
```

Ce script crée la table `range_bound_operations` avec l’historique fourni (produit “Limite de l'intervalle”).

> Pensez à ajuster les paramètres MySQL (utilisateur, mot de passe, hôte) selon votre configuration.
