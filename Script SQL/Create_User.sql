-- Création des rôles
CREATE ROLE 'Role_Administrateur';
CREATE ROLE 'Role_Joueur';
CREATE ROLE 'Role_Gestionnaire';


-- Attribution des privilèges Administrateur
GRANT ALL PRIVILEGES ON * TO 'Role_Administrateur';

-- Attribution des privilèges Joueur
GRANT SELECT ON ARME TO 'Role_Joueur';
GRANT INSERT ON COMMANDE TO 'Role_Joueur';
GRANT SELECT ON COMMANDE TO 'Role_Joueur';

-- Attribution des privilèges au Gestionnaire de la boutique
GRANT SELECT ON JOUEUR TO 'Role_Gestionnaire';
GRANT SELECT, UPDATE, DELETE ON ARME TO 'Role_Gestionnaire';
GRANT SELECT ON COMMANDE TO 'Role_Gestionnaire';

-- Création des utilisateurs et attribution des rôles
CREATE USER 'Administrateur'@'localhost' IDENTIFIED BY 'root';
GRANT 'Role_Administrateur' TO 'Administrateur'@'localhost';
SET DEFAULT ROLE 'Role_Administrateur' TO 'Administrateur';

CREATE USER 'Joueur'@'localhost' IDENTIFIED BY 'root';
GRANT 'Role_Joueur' TO 'Joueur'@'localhost';
SET DEFAULT ROLE 'Role_Joueur' TO 'Joueur';

CREATE USER 'Gestionnaire_boutique'@'localhost' IDENTIFIED BY 'root';
GRANT 'Role_Gestionnaire' TO 'Gestionnaire_boutique'@'localhost';
SET DEFAULT ROLE 'Role_Gestionnaire' TO 'Gestionnaire_boutique';

-- test des utilisateurs
SHOW GRANTS FOR 'Administrateur'@'localhost';
SHOW GRANTS FOR 'Joueur'@'localhost';
SHOW GRANTS FOR 'Gestionnaire_boutique'@'localhost';

