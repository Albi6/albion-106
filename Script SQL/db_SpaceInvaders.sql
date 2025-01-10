CREATE DATABASE SpaceInvaders;
USE SpaceInvaders;

CREATE TABLE T_JOUEUR(
   joueur_id VARCHAR(50),
   pseudo VARCHAR(50) NOT NULL,
   xp DECIMAL(15,0),
   PRIMARY KEY(joueur_id)
);

CREATE TABLE T_ARME(
   arme_id VARCHAR(50),
   type_arme VARCHAR(50),
   nom VARCHAR(50),
   description VARCHAR(100),
   prix DECIMAL(15,2),
   puissance INT,
   nb_coup DECIMAL(15,2),
   PRIMARY KEY(arme_id)
);

CREATE TABLE T_COMMANDE(
   cmd_id VARCHAR(50),
   date_cmd DATETIME,
   joueur_fk VARCHAR(50) NOT NULL,
   PRIMARY KEY(cmd_id),
   FOREIGN KEY(joueur_fk) REFERENCES T_JOUEUR(joueur_id)
);

CREATE TABLE T_POSSEDER(
   joueur_fk VARCHAR(50),
   arme_fk VARCHAR(50),
   nb_coup_restant DECIMAL(15,2),
   PRIMARY KEY(joueur_fk, arme_fk),
   FOREIGN KEY(joueur_fk) REFERENCES T_JOUEUR(joueur_id),
   FOREIGN KEY(arme_fk) REFERENCES T_ARME(arme_id)
);

CREATE TABLE T_CONTENIR(
   arme_fk VARCHAR(50),
   cmd_fk VARCHAR(50),
   quantité INT,
   PRIMARY KEY(arme_fk, cmd_fk),
   FOREIGN KEY(arme_fk) REFERENCES T_ARME(arme_id),
   FOREIGN KEY(cmd_fk) REFERENCES T_COMMANDE(cmd_id)
);
