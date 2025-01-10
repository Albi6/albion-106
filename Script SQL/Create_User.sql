-- Suppression des rôles existants (si nécessaires)
DROP ROLE IF EXISTS 'Role_Administrateur';
DROP ROLE IF EXISTS 'Role_Joueur';
DROP ROLE IF EXISTS 'Role_Gestionnaire';

-- Suppression des utilisateurs existants (si nécessaires)
DROP USER IF EXISTS 'Administrateur'@'localhost';
DROP USER IF EXISTS 'Joueur'@'localhost';
DROP USER IF EXISTS 'Gestionnaire'@'localhost';

-- Création des rôles
CREATE ROLE 'Role_Administrateur';
CREATE ROLE 'Role_Joueur';
CREATE ROLE 'Role_Gestionnaire';

-- Attribution des privilèges au rôle Administrateur
GRANT SELECT, INSERT, UPDATE, DELETE ON *.* TO 'Role_Administrateur' WITH GRANT OPTION;

-- Attribution des privilèges au rôle Joueur
GRANT SELECT ON T_CONTENIR TO 'Role_Joueur';
GRANT SELECT, INSERT ON T_COMMANDE TO 'Role_Joueur';
GRANT SELECT ON T_ARME TO 'Role_Joueur';

-- Attribution des privilèges au rôle Gestionnaire
GRANT SELECT ON T_JOUEUR TO 'Role_Gestionnaire';
GRANT SELECT, UPDATE, DELETE ON T_ARME TO 'Role_Gestionnaire';
GRANT SELECT ON T_COMMANDE TO 'Role_Gestionnaire';
GRANT SELECT, UPDATE ON T_CONTENIR TO 'Role_Gestionnaire';

-- Création des utilisateurs et attribution des rôles
CREATE USER 'Administrateur'@'localhost' IDENTIFIED BY 'root';
GRANT 'Role_Administrateur' TO 'Administrateur'@'localhost';
SET DEFAULT ROLE 'Role_Administrateur' TO 'Administrateur'@'localhost';

CREATE USER 'Joueur'@'localhost' IDENTIFIED BY 'root';
GRANT 'Role_Joueur' TO 'Joueur'@'localhost';
SET DEFAULT ROLE 'Role_Joueur' TO 'Joueur'@'localhost';

CREATE USER 'Gestionnaire'@'localhost' IDENTIFIED BY 'root';
GRANT 'Role_Gestionnaire' TO 'Gestionnaire'@'localhost';
SET DEFAULT ROLE 'Role_Gestionnaire' TO 'Gestionnaire'@'localhost';

-- Test des utilisateurs
SHOW GRANTS FOR 'Administrateur'@'localhost';
SHOW GRANTS FOR 'Joueur'@'localhost';
SHOW GRANTS FOR 'Gestionnaire'@'localhost';