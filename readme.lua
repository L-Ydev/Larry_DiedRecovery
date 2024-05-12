Ce script personnalisé pour vos serveurs FiveM a pour objectif de résoudre le problème de la perte d'argent et d'objets lors de la mort des joueurs. Voici un aperçu de son fonctionnement :

Côté Serveur :

Lorsqu'un joueur meurt (playerDied), le serveur récupère l'identifiant unique du joueur.
En utilisant cet identifiant, le serveur interroge notre base de données pour récupérer les informations de l'utilisateur, telles que l'argent et les objets qu'il possède.
Si des données sont trouvées, elles sont envoyées au client pour être restaurées.

Côté Client  :

Lorsque les données de l'utilisateur sont reçues (restorePlayerData), le client les traite.
Les données peuvent être utilisées pour restaurer l'argent et les objets du joueur, et éventuellement mettre à jour l'interface utilisateur pour refléter ces changements.
Ce script est une solution efficace pour garantir que nos joueurs ne perdent pas leur progression lorsqu'ils meurent, en restaurant automatiquement leur argent et leurs objets à partir de notre base de données.