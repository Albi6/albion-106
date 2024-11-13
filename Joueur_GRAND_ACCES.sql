CREATE USER 'joueur'@'localhost' IDENTIFIED BY 'root';

GRANT SELECT ON `SpicyInvader`.`ARME` TO 'joueur'@'localhost';

GRANT INSERT ON `SpicyInvader`.`COMMANDE` TO 'joueur'@'localhost';

GRANT SELECT ON `SpicyInvader`.`COMMANDE` TO 'joueur'@'localhost';

FLUSH PRIVILEGES;
