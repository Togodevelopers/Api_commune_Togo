# Contribuer à la base de données

:+1::tada: Tout d'abord, merci de prendre le temps de contribuer ! :tada::+1:

Ce qui suit est un ensemble de lignes directrices pour contribuer à Contribuer à la base de données de la Subdivision Administrative du Togo. Il s'agit principalement de directives et non de règles. Utilisez votre meilleur jugement, et n'hésitez pas à proposer des modifications à ce document via une pull request.

## Comment puis-je contribuer ?

### Prise en main et configuration
1. Forker le repo
2. Cloner le fork
3. Créer la base de données (togo_subdivisions)
4. Importer les scripts sql (en insérant les tables de bases en premier)
5. Faites des mises à jours via phpmyadmin
6. Exporter les données au format approprié 
7. Enregistrer les fichiers dans l'un des sous-repertoire de data
8. Faites un pull request

### Signaler des problèmes liés aux données
- Soulevez un problème pour les erreurs de données.
- Marquez ces problèmes avec une étiquette `bug`.

### Suggérer des améliorations
- Soulevez un problème pour suggérer des améliorations.
- Marquez ces problèmes avec l'étiquette `enhancement`.

### Corriger des données par vous-même
Si vous voulez corriger des données et faire une demande de publication (pull request)
- Pour corriger les données des villes - Vous devez mettre à jour `sql/villes.sql`.
- Pour corriger les données des préfectures - Vous devez mettre à jour `sql/prefectures.sql`.
- Pour corriger les données des communes, vous devez mettre à jour les fichiers `sql/communes.sql` ainsi de suite
