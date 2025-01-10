-- Sélectionner les 5 joueurs avec le meilleur score, classés dans l'ordre décroissant :
SELECT joueur_id, pseudo, xp
FROM T_JOUEUR
ORDER BY xp DESC
LIMIT 5;

-- Trouver le prix maximum, minimum et moyen des armes :
SELECT 
    MAX(prix) AS PrixMaximum, 
    MIN(prix) AS PrixMinimum, 
    AVG(prix) AS PrixMoyen
FROM T_ARME;

-- Nombre total de commandes par joueur, trié par ordre décroissant :
SELECT 
    joueur_fk AS IdJoueur, 
    COUNT(cmd_id) AS NombreCommandes
FROM T_COMMANDE
GROUP BY joueur_fk
ORDER BY NombreCommandes DESC;

-- Trouver les joueurs ayant passé plus de 2 commandes :
SELECT 
    joueur_fk AS IdJoueur, 
    COUNT(cmd_id) AS NombreCommandes
FROM T_COMMANDE
GROUP BY joueur_fk
HAVING COUNT(cmd_id) > 2;

-- Trouver le pseudo du joueur et le nom de l'arme pour chaque commande :
SELECT 
    J.pseudo, 
    A.nom AS NomArme
FROM T_CONTENIR C
JOIN T_ARME A ON C.arme_fk = A.arme_id
JOIN T_COMMANDE CMD ON C.cmd_fk = CMD.cmd_id
JOIN T_JOUEUR J ON CMD.joueur_fk = J.joueur_id;

-- Total dépensé par chaque joueur, ordonné par montant décroissant, limité aux 10 premiers joueurs :
SELECT 
    CMD.joueur_fk AS IdJoueur, 
    SUM(A.prix * C.quantité) AS TotalDepense
FROM T_CONTENIR C
JOIN T_ARME A ON C.arme_fk = A.arme_id
JOIN T_COMMANDE CMD ON C.cmd_fk = CMD.cmd_id
GROUP BY CMD.joueur_fk
ORDER BY TotalDepense DESC
LIMIT 10;

-- Récupérer tous les joueurs et leurs commandes, même s'ils n'ont pas passé de commande :
SELECT 
    J.joueur_id, 
    J.pseudo, 
    CMD.cmd_id, 
    CMD.date_cmd
FROM T_JOUEUR J
LEFT JOIN T_COMMANDE CMD ON J.joueur_id = CMD.joueur_fk;

-- Récupérer toutes les commandes et afficher le pseudo du joueur ou NULL si le joueur n'existe pas :
SELECT 
    CMD.cmd_id, 
    CMD.date_cmd, 
    J.pseudo
FROM T_COMMANDE CMD
LEFT JOIN T_JOUEUR J ON CMD.joueur_fk = J.joueur_id;

-- Nombre total d'armes achetées par chaque joueur, y compris ceux qui n'ont acheté aucune arme :
SELECT 
    J.joueur_id, 
    J.pseudo, 
    COALESCE(SUM(C.quantité), 0) AS TotalArmes
FROM T_JOUEUR J
LEFT JOIN T_COMMANDE CMD ON J.joueur_id = CMD.joueur_fk
LEFT JOIN T_CONTENIR C ON CMD.cmd_id = C.cmd_fk
GROUP BY J.joueur_id, J.pseudo;

-- Trouver les joueurs ayant acheté plus de 3 types d'armes différentes :
SELECT 
    CMD.joueur_fk AS IdJoueur, 
    COUNT(DISTINCT C.arme_fk) AS TypesArmes
FROM T_CONTENIR C
JOIN T_COMMANDE CMD ON C.cmd_fk = CMD.cmd_id
GROUP BY CMD.joueur_fk
HAVING COUNT(DISTINCT C.arme_fk) > 3;
