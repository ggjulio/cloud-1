### version anglaise
- [x] Your site can restart automatically if the server is rebooted.
- [x] In case of reboot all the data of the site are persisted (images, user accounts, articles, ...).
- [ ] It is possible to deploy your site on several servers in parallel. (creer deux vm vagrant mais flemme si c'est pas demande dans la correction)
- [x] The script must be able to function in an automated way with for only assumption an ubuntu 20.04 LTS like OS of the target instance running an SSH daemon and with Python installed.
- [x] Your applications will run in separate containers that can communicate with each other (1 process = 1 container)
- [x] Public access to your server must be limited and secure (for example, it is not possible to connect directly to your database from the internet).
- [x] The services will be the different components of a WordPress to install by yourself. For example Phpmyadmin, MySQL, ...
- [x] You must therefore have a dedicated Dockerfile for each service
- [x] You will need to ensure that your SQL database works with WordPress and PHPMyAdmin.
- [x] Your server should be able, when possible, to use TLS.
- [x] You will need to make sure that, depending on the URL requested, your server redirects to the correct site.
---
## version francaise
- [x] Votre site puisse redemarrer automatiquement en cas de redémarrage du serveur.
- [x] En cas de redémarrage l’ensemble des données du site persistent (images, comptes utilisateur, articles, ...)
- [ ] Il est possible de déployer votre site sur plusieurs serveurs en parallèle. (creer deux vm vagrant mais flemme si c'est pas demande dans la correction)
- [x] Le script doit pouvoir fonctionner de manière automatisée avec pour seul hypothèse une ubuntu 20.04 LTS comme OS de l’instance cible executant un démon SSH et avec Python installé.
- [x] Vos applications vont s’executer dans des conteneurs distincts et pouvant communiquer entre eux (Un processus = Un conteneur)
- [x] Les accès publics de votre serveur doivent être limités et sécurisés (il n’est par exemple pas possible de se connecter directement sur votre base de données depuis internet).
- [x] Votre serveur devra être capable de faire tourner plusieurs services en même temps.
- [x] Les services seront les différents composants d’un Wordpress à installer par vous même. Par exemple Phpmyadmin, MySQL, ...
- [x] Vous devez avoir un Dockerfile dédié pour chaque service
- [x] Vous devrez vous assurer que votre base de donnée SQL fonctionne avec le wordpress et phpmyadmin.
- [x] Votre serveur devra pouvoir, quand c’est possible, utiliser le protocole TLS.
- [x] Vous devrez vous assurer que, selon l’url demandée, votre server redirige vers le bon site.
###### Au sujet de votre code d’installation :

- [x] Mettre des secrets (par exemple un mot de passe de base de données) en dur dans votre code divisera votre note par 42.
- [x] Assurez vous que votre code est bien idempotent (vous pouvez executer votre code plusieurs fois et obtenir le même résultat).
- [ ] Rendez votre code configurable autant que possible. Il devrait par exemple possible de configurer où vos fichiers de votre site web vont s’installer. Le correcteur pourra changer cette localisation et s’assurer que votre site continue de fonctionner.
- [x] Découpez les taches d’installation pour rendre l’installation plus modulaire. Il doit être possible par exemple d’installer juste la base de données. Ou bien juste le serveur web. L’intérêt de rendre le code modulaire c’est qu’il devient plus facile d’installer des composants différents sur des machines différentes.
- [ ] Rajoutez des noms compréhensibles aux différentes étapes de votre installation. Il doit être possible pour le correcteur de comprendre l’objectif de chaque étape de l’installation en lisant son nom.
