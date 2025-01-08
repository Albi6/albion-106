--Sélectionner les 5 joueurs avec le meilleur score, classés dans l'ordre décroissant :

SELECT joueur_id, pseudo, xp
FROM JOUEUR
ORDER BY xp DESC
LIMIT 5;


--Trouver le prix maximum, minimum et moyen des armes :

SELECT 
MAX(prix) AS PrixMaximum, 
MIN(prix) AS PrixMinimum, 
AVG(prix) AS PrixMoyen
FROM ARME;


--Nombre total de commandes par joueur, trié par ordre décroissant :

SELECT 
joueur_id AS IdJoueur, 
COUNT(cmd_id) AS NombreCommandes
FROM COMMANDE
GROUP BY joueur_id
ORDER BY NombreCommandes DESC;


--Trouver les joueurs ayant passé plus de 2 commandes :

SELECT 
joueur_id AS IdJoueur, 
COUNT(cmd_id) AS NombreCommandes
FROM COMMANDE
GROUP BY joueur_id
HAVING COUNT(cmd_id) > 2;



--Trouver le pseudo du joueur et le nom de l'arme pour chaque commande :

SELECT 
J.pseudo, A.nom AS NomArme
FROM CONTENIR C
JOIN ARME A ON C.arme_id = A.arme_id
JOIN COMMANDE CMD ON C.cmd_id = CMD.cmd_id
JOIN JOUEUR J ON CMD.joueur_id = J.joueur_id;


--Total dépensé par chaque joueur, ordonné par montant décroissant, limité aux 10 premiers joueurs :

SELECT 
CMD.joueur_id AS IdJoueur, 
SUM(A.prix * C.quantité) AS TotalDepense
FROM CONTENIR C
JOIN ARME A ON C.arme_id = A.arme_id
JOIN COMMANDE CMD ON C.cmd_id = CMD.cmd_id
GROUP BY CMD.joueur_id
ORDER BY TotalDepense DESC
LIMIT 10;


--Récupérer tous les joueurs et leurs commandes, même s'ils n'ont pas passé de commande :

SELECT 
J.joueur_id, 
J.pseudo, 
CMD.cmd_id, 
CMD.date_cmd
FROM JOUEUR J
LEFT JOIN COMMANDE CMD ON J.joueur_id = CMD.joueur_id;


--Récupérer toutes les commandes et afficher le pseudo du joueur ou NULL si le joueur n'existe pas :

SELECT 
CMD.cmd_id, 
CMD.date_cmd, 
J.pseudo
FROM COMMANDE CMD
LEFT JOIN JOUEUR J ON CMD.joueur_id = J.joueur_id;


--Nombre total d'armes achetées par chaque joueur, y compris ceux qui n'ont acheté aucune arme :

SELECT 
J.joueur_id, 
J.pseudo, 
COALESCE(SUM(C.quantité), 0) AS TotalArmes
FROM JOUEUR J
LEFT JOIN COMMANDE CMD ON J.joueur_id = CMD.joueur_id
LEFT JOIN CONTENIR C ON CMD.cmd_id = C.cmd_id
GROUP BY J.joueur_id, J.pseudo;

--résolu avec chat gpt - trop compliqué


--Trouver les joueurs ayant acheté plus de 3 types d'armes différentes :

SELECT 
CMD.joueur_id AS IdJoueur, 
COUNT(DISTINCT C.arme_id) AS TypesArmes
FROM CONTENIR C
JOIN COMMANDE CMD ON C.cmd_id = CMD.cmd_id
GROUP BY CMD.joueur_id
HAVING COUNT(DISTINCT C.arme_id) > 3;

--chaque joueur n'as qu'une seul armes et ne peut donc pas en poseder 3 types différent.