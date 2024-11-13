CREATE TABLE JOUEUR(
   id_joueur VARCHAR(50),
   pseudo VARCHAR(50) NOT NULL,
   xp DECIMAL(15,0),
   PRIMARY KEY(id_joueur)
);

CREATE TABLE ARME(
   id_arme VARCHAR(50),
   type_arme VARCHAR(50),
   nom VARCHAR(50),
   description VARCHAR(100),
   prix DECIMAL(15,2),
   puissance INT,
   nb_coup DECIMAL(15,2),
   PRIMARY KEY(id_arme)
);

CREATE TABLE COMMANDE(
   id_cmd VARCHAR(50),
   date_cmd DATETIME,
   id_joueur VARCHAR(50) NOT NULL,
   PRIMARY KEY(id_cmd),
   FOREIGN KEY(id_joueur) REFERENCES JOUEUR(id_joueur)
);

CREATE TABLE POSSEDER_ARME(
   id_joueur VARCHAR(50),
   id_arme VARCHAR(50),
   nb_coup_restant DECIMAL(15,2),
   PRIMARY KEY(id_joueur, id_arme),
   FOREIGN KEY(id_joueur) REFERENCES JOUEUR(id_joueur),
   FOREIGN KEY(id_arme) REFERENCES ARME(id_arme)
);

CREATE TABLE CONTENU_COMMANDE(
   id_arme VARCHAR(50),
   id_cmd VARCHAR(50),
   qte_arme INT,
   PRIMARY KEY(id_arme, id_cmd),
   FOREIGN KEY(id_arme) REFERENCES ARME(id_arme),
   FOREIGN KEY(id_cmd) REFERENCES COMMANDE(id_cmd)
);
