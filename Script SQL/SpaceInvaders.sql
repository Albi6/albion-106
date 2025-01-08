CREATE DATABASE SpicyInvaders;
USE SpicyInvaders;

CREATE TABLE JOUEUR(
   joueur_id VARCHAR(50),
   pseudo VARCHAR(50) NOT NULL,
   xp DECIMAL(15,0),
   PRIMARY KEY(joueur_id)
);

CREATE TABLE ARME(
   arme_id VARCHAR(50),
   type_arme VARCHAR(50),
   nom VARCHAR(50),
   description VARCHAR(100),
   prix DECIMAL(15,2),
   puissance INT,
   nb_coup DECIMAL(15,2),
   PRIMARY KEY(arme_id)
);

CREATE TABLE COMMANDE(
   cmd_id VARCHAR(50),
   date_cmd DATETIME,
   joueur_id VARCHAR(50) NOT NULL,
   PRIMARY KEY(cmd_id),
   FOREIGN KEY(joueur_id) REFERENCES JOUEUR(joueur_id)
);

CREATE TABLE POSSEDER(
   joueur_id VARCHAR(50),
   arme_id VARCHAR(50),
   nb_coup_restant DECIMAL(15,2),
   PRIMARY KEY(joueur_id, arme_id),
   FOREIGN KEY(joueur_id) REFERENCES JOUEUR(joueur_id),
   FOREIGN KEY(arme_id) REFERENCES ARME(arme_id)
);

CREATE TABLE CONTENIR(
   arme_id VARCHAR(50),
   cmd_id VARCHAR(50),
   quantité INT,
   PRIMARY KEY(arme_id, cmd_id),
   FOREIGN KEY(arme_id) REFERENCES ARME(arme_id),
   FOREIGN KEY(cmd_id) REFERENCES COMMANDE(cmd_id)
);
