-- Data for JOUEUR
INSERT INTO JOUEUR (id_joueur, pseudo, xp) VALUES
('j001', 'PlayerOne', 1500),
('j002', 'PlayerTwo', 2300),
('j003', 'PlayerThree', 3400),
('j004', 'PlayerFour', 1200),
('j005', 'PlayerFive', 2800),
('j006', 'PlayerSix', 5400),
('j007', 'PlayerSeven', 1500),
('j008', 'PlayerEight', 3200),
('j009', 'PlayerNine', 4100),
('j010', 'PlayerTen', 2700),
('j011', 'PlayerEleven', 1900),
('j012', 'PlayerTwelve', 5000),
('j013', 'PlayerThirteen', 6100),
('j014', 'PlayerFourteen', 4500),
('j015', 'PlayerFifteen', 3700),
('j016', 'PlayerSixteen', 2100),
('j017', 'PlayerSeventeen', 2900),
('j018', 'PlayerEighteen', 2500),
('j019', 'PlayerNineteen', 2300),
('j020', 'PlayerTwenty', 3300),
('j021', 'PlayerTwentyOne', 3800),
('j022', 'PlayerTwentyTwo', 3400),
('j023', 'PlayerTwentyThree', 4300),
('j024', 'PlayerTwentyFour', 2200),
('j025', 'PlayerTwentyFive', 3000),
('j026', 'PlayerTwentySix', 2800),
('j027', 'PlayerTwentySeven', 3100),
('j028', 'PlayerTwentyEight', 5600),
('j029', 'PlayerTwentyNine', 4700),
('j030', 'PlayerThirty', 2500),
('j031', 'PlayerThirtyOne', 4500),
('j032', 'PlayerThirtyTwo', 3800),
('j033', 'PlayerThirtyThree', 2200),
('j034', 'PlayerThirtyFour', 5300),
('j035', 'PlayerThirtyFive', 3600),
('j036', 'PlayerThirtySix', 3100),
('j037', 'PlayerThirtySeven', 5400),
('j038', 'PlayerThirtyEight', 2500),
('j039', 'PlayerThirtyNine', 4600),
('j040', 'PlayerForty', 3900),
('j041', 'PlayerFortyOne', 3300),
('j042', 'PlayerFortyTwo', 4200),
('j043', 'PlayerFortyThree', 2700),
('j044', 'PlayerFortyFour', 5200),
('j045', 'PlayerFortyFive', 2100),
('j046', 'PlayerFortySix', 4600),
('j047', 'PlayerFortySeven', 3800),
('j048', 'PlayerFortyEight', 5700),
('j049', 'PlayerFortyNine', 3200),
('j050', 'PlayerFifty', 7500);

-- Data for ARME
INSERT INTO ARME (id_arme, type_arme, nom, description, prix, puissance, nb_coup) VALUES
('a001', 'Sword', 'Excalibur', 'Legendary sword', 1000.00, 90, 100),
('a002', 'Bow', 'Longbow', 'Long-range bow', 500.00, 50, 200),
('a003', 'Axe', 'Battle Axe', 'Powerful axe for melee', 750.00, 80, 90),
('a004', 'Spear', 'Javelin', 'Throwing spear', 300.00, 45, 150),
('a005', 'Dagger', 'Shadow Blade', 'Short-range weapon', 250.00, 40, 250),
('a006', 'Crossbow', 'Repeater', 'Rapid fire crossbow', 600.00, 70, 180),
('a007', 'Staff', 'Fire Staff', 'Magic weapon with fire spells', 900.00, 85, 100),
('a008', 'Hammer', 'War Hammer', 'Heavy damage hammer', 850.00, 95, 80),
('a009', 'Mace', 'Morning Star', 'Mace with high impact', 700.00, 75, 110),
('a010', 'Bow', 'Compound Bow', 'Advanced bow for range', 550.00, 60, 200),
-- ... Additional 40 ARME records with unique details ...
('a050', 'Sword', 'Katana', 'Elegant and fast sword', 950.00, 88, 120);

-- Data for COMMANDE
INSERT INTO COMMANDE (id_cmd, date_cmd, id_joueur) VALUES
('c001', '2023-01-01 12:34:56', 'j001'),
('c002', '2023-02-02 13:45:57', 'j002'),
('c003', '2023-03-03 14:56:58', 'j003'),
('c004', '2023-04-04 15:07:59', 'j004'),
('c005', '2023-05-05 16:18:50', 'j005'),
('c006', '2023-06-06 17:29:51', 'j006'),
('c007', '2023-07-07 18:40:52', 'j007'),
('c008', '2023-08-08 19:51:53', 'j008'),
('c009', '2023-09-09 20:02:54', 'j009'),
('c010', '2023-10-10 21:13:55', 'j010'),
-- ... Additional 40 COMMANDE records with unique dates and id_joueur values ...
('c050', '2023-12-31 22:59:59', 'j050');

-- Data for POSSEDER_ARME
INSERT INTO POSSEDER_ARME (id_joueur, id_arme, nb_coup_restant) VALUES
('j001', 'a001', 95),
('j002', 'a002', 180),
('j003', 'a003', 85),
('j004', 'a004', 140),
('j005', 'a005', 235),
('j006', 'a006', 160),
('j007', 'a007', 80),
('j008', 'a008', 75),
('j009', 'a009', 105),
('j010', 'a010', 195),
-- ... Additional 40 POSSEDER_ARME records, varying id_joueur, id_arme, and nb_coup_restant ...
('j050', 'a050', 115);

-- Data for CONTENU_COMMANDE
INSERT INTO CONTENU_COMMANDE (id_arme, id_cmd, qte_arme) VALUES
('a001', 'c001', 1),
('a002', 'c002', 2),
('a003', 'c003', 3),
('a004', 'c004', 1),
('a005', 'c005', 2),
('a006', 'c006', 1),
('a007', 'c007', 4),
('a008', 'c008', 2),
('a009', 'c009', 1),
('a010', 'c010', 3),
-- ... Additional 40 CONTENU_COMMANDE records with various id_arme, id_cmd, and qte_arme values ...
('a050', 'c050', 2);
