-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : db:3306
-- Généré le : jeu. 09 jan. 2025 à 17:36
-- Version du serveur : 8.0.30
-- Version de PHP : 8.0.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `SpaceInvaders`
--
CREATE DATABASE IF NOT EXISTS `SpaceInvaders` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `SpaceInvaders`;

-- --------------------------------------------------------

--
-- Structure de la table `T_ARME`
--

CREATE TABLE `T_ARME` (
  `arme_id` varchar(50) NOT NULL,
  `type_arme` varchar(50) DEFAULT NULL,
  `nom` varchar(50) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `prix` decimal(15,2) DEFAULT NULL,
  `puissance` int DEFAULT NULL,
  `nb_coup` decimal(15,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `T_ARME`
--

INSERT INTO `T_ARME` (`arme_id`, `type_arme`, `nom`, `description`, `prix`, `puissance`, `nb_coup`) VALUES
('a001', 'Sword', 'Excalibur', 'Legendary sword', '1000.00', 90, '100.00'),
('a002', 'Bow', 'Longbow', 'Long-range bow', '500.00', 50, '200.00'),
('a003', 'Axe', 'Battle Axe', 'Powerful axe for melee', '750.00', 80, '90.00'),
('a004', 'Spear', 'Javelin', 'Throwing spear', '300.00', 45, '150.00'),
('a005', 'Dagger', 'Shadow Blade', 'Short-range weapon', '250.00', 40, '250.00'),
('a006', 'Crossbow', 'Repeater', 'Rapid fire crossbow', '600.00', 70, '180.00'),
('a007', 'Staff', 'Fire Staff', 'Magic weapon with fire spells', '900.00', 85, '100.00'),
('a008', 'Hammer', 'War Hammer', 'Heavy damage hammer', '850.00', 95, '80.00'),
('a009', 'Mace', 'Morning Star', 'Mace with high impact', '700.00', 75, '110.00'),
('a010', 'Bow', 'Compound Bow', 'Advanced bow for range', '550.00', 60, '200.00'),
('a011', 'Sword', 'Dragon Slayer', 'Sword forged to hunt dragons', '1200.00', 95, '110.00'),
('a012', 'Bow', 'Hawk Eye', 'Precision bow for sharp shooters', '600.00', 55, '210.00'),
('a013', 'Axe', 'Double-Edged Axe', 'Massive axe with two blades', '800.00', 85, '95.00'),
('a014', 'Spear', 'Phantom Lance', 'Lightweight and swift spear', '350.00', 50, '160.00'),
('a015', 'Dagger', 'Venom Fang', 'Dagger imbued with poison', '300.00', 45, '260.00'),
('a016', 'Crossbow', 'Sniper Crossbow', 'Long-range precision crossbow', '650.00', 75, '190.00'),
('a017', 'Staff', 'Earth Staff', 'Staff with earth-based spells', '920.00', 88, '105.00'),
('a018', 'Hammer', 'Thunder Hammer', 'Hammer imbued with lightning', '880.00', 100, '85.00'),
('a019', 'Mace', 'Skull Crusher', 'Devastating mace for combat', '720.00', 78, '115.00'),
('a020', 'Bow', 'Phoenix Bow', 'Bow with fire-tipped arrows', '570.00', 65, '220.00'),
('a021', 'Sword', 'Frost Blade', 'Sword with freezing powers', '970.00', 89, '125.00'),
('a022', 'Bow', 'Storm Bow', 'Bow with lightning arrows', '630.00', 60, '215.00'),
('a023', 'Axe', 'Viking Axe', 'Traditional battle axe', '820.00', 83, '92.00'),
('a024', 'Spear', 'Golden Spear', 'Spear with enhanced durability', '400.00', 52, '170.00'),
('a025', 'Dagger', 'Silent Whisper', 'Stealthy weapon for assassins', '270.00', 42, '240.00'),
('a026', 'Crossbow', 'Rapid Fire', 'Automatic crossbow for quick shots', '670.00', 72, '185.00'),
('a027', 'Staff', 'Wind Staff', 'Control winds with this staff', '940.00', 86, '110.00'),
('a028', 'Hammer', 'Mountain Breaker', 'Heavy hammer for destruction', '900.00', 98, '82.00'),
('a029', 'Mace', 'Iron Fist', 'Solid mace for blunt force', '710.00', 76, '112.00'),
('a030', 'Bow', 'Hunters Bow', 'Bow crafted for hunting', '540.00', 58, '205.00'),
('a031', 'Sword', 'Eclipse Blade', 'Sword with mysterious powers', '1000.00', 92, '120.00'),
('a032', 'Bow', 'Moonlit Bow', 'Bow with luminescent arrows', '580.00', 62, '212.00'),
('a033', 'Axe', 'Stone Cleaver', 'Axe designed for raw power', '770.00', 81, '90.00'),
('a034', 'Spear', 'Shadow Spear', 'Spear concealed in darkness', '420.00', 54, '175.00'),
('a035', 'Dagger', 'Crimson Fang', 'Blood-red dagger', '290.00', 43, '255.00'),
('a036', 'Crossbow', 'Night Prowler', 'Stealthy crossbow for silent attacks', '640.00', 68, '188.00'),
('a037', 'Staff', 'Ice Staff', 'Harness the power of ice', '910.00', 87, '108.00'),
('a038', 'Hammer', 'Sun Hammer', 'Hammer that radiates light', '870.00', 97, '83.00'),
('a039', 'Mace', 'Bone Crusher', 'Mace for maximum impact', '730.00', 79, '113.00'),
('a040', 'Bow', 'Archers Pride', 'Perfect for skilled archers', '560.00', 64, '210.00'),
('a041', 'Sword', 'Blade of Justice', 'Sword used by knights', '1100.00', 96, '115.00'),
('a042', 'Bow', 'Silver Bow', 'Elegant and precise bow', '610.00', 63, '208.00'),
('a043', 'Axe', 'Inferno Axe', 'Axe with fiery power', '840.00', 84, '91.00'),
('a044', 'Spear', 'Titans Spear', 'Massive spear for powerful strikes', '450.00', 57, '180.00'),
('a045', 'Dagger', 'Rogues Dagger', 'Weapon for quick strikes', '280.00', 41, '245.00'),
('a046', 'Crossbow', 'Piercing Bolt', 'Crossbow with enhanced bolts', '660.00', 73, '187.00'),
('a047', 'Staff', 'Lightning Staff', 'Unleash lightning with every strike', '930.00', 90, '109.00'),
('a048', 'Hammer', 'Volcanic Hammer', 'Hammer with molten fury', '890.00', 99, '80.00'),
('a049', 'Mace', 'Wardens Mace', 'Mace used by royal guards', '740.00', 77, '114.00'),
('a050', 'Bow', 'Falcons Bow', 'Fast and agile bow', '590.00', 61, '207.00');

-- --------------------------------------------------------

--
-- Structure de la table `T_COMMANDE`
--

CREATE TABLE `T_COMMANDE` (
  `cmd_id` varchar(50) NOT NULL,
  `date_cmd` datetime DEFAULT NULL,
  `joueur_fk` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `T_COMMANDE`
--

INSERT INTO `T_COMMANDE` (`cmd_id`, `date_cmd`, `joueur_fk`) VALUES
('c001', '2023-01-01 12:34:56', '1'),
('c002', '2023-02-02 13:45:57', '2'),
('c003', '2023-03-03 14:56:58', '3'),
('c004', '2023-04-04 15:07:59', '4'),
('c005', '2023-05-05 16:18:50', '5'),
('c006', '2023-06-06 17:29:51', '6'),
('c007', '2023-07-07 18:40:52', '7'),
('c008', '2023-08-08 19:51:53', '8'),
('c009', '2023-09-09 20:02:54', '9'),
('c010', '2023-10-10 21:13:55', '10'),
('c011', '2023-11-11 12:00:00', '11'),
('c012', '2023-11-12 13:10:01', '12'),
('c013', '2023-11-13 14:20:02', '13'),
('c014', '2023-11-14 15:30:03', '14'),
('c015', '2023-11-15 16:40:04', '15'),
('c016', '2023-11-16 17:50:05', '16'),
('c017', '2023-11-17 18:01:06', '17'),
('c018', '2023-11-18 19:11:07', '18'),
('c019', '2023-11-19 20:21:08', '19'),
('c020', '2023-11-20 21:31:09', '20'),
('c021', '2023-11-21 22:41:10', '21'),
('c022', '2023-11-22 23:51:11', '22'),
('c023', '2023-11-23 00:01:12', '23'),
('c024', '2023-11-24 01:11:13', '24'),
('c025', '2023-11-25 02:21:14', '25'),
('c026', '2023-11-26 03:31:15', '26'),
('c027', '2023-11-27 04:41:16', '27'),
('c028', '2023-11-28 05:51:17', '28'),
('c029', '2023-11-29 06:01:18', '29'),
('c030', '2023-11-30 07:11:19', '30'),
('c031', '2023-12-01 08:21:20', '31'),
('c032', '2023-12-02 09:31:21', '32'),
('c033', '2023-12-03 10:41:22', '33'),
('c034', '2023-12-04 11:51:23', '34'),
('c035', '2023-12-05 12:01:24', '35'),
('c036', '2023-12-06 13:11:25', '36'),
('c037', '2023-12-07 14:21:26', '37'),
('c038', '2023-12-08 15:31:27', '38'),
('c039', '2023-12-09 16:41:28', '39'),
('c040', '2023-12-10 17:51:29', '40'),
('c041', '2023-12-11 18:01:30', '41'),
('c042', '2023-12-12 19:11:31', '42'),
('c043', '2023-12-13 20:21:32', '43'),
('c044', '2023-12-14 21:31:33', '44'),
('c045', '2023-12-15 22:41:34', '45'),
('c046', '2023-12-16 23:51:35', '46'),
('c047', '2023-12-17 00:01:36', '47'),
('c048', '2023-12-18 01:11:37', '48'),
('c049', '2023-12-19 02:21:38', '49'),
('c050', '2023-12-31 22:59:59', '50'),
('c051', '2023-02-04 08:39:45', '1'),
('c052', '2023-02-04 08:39:45', '1');

-- --------------------------------------------------------

--
-- Structure de la table `T_CONTENIR`
--

CREATE TABLE `T_CONTENIR` (
  `arme_fk` varchar(50) NOT NULL,
  `cmd_fk` varchar(50) NOT NULL,
  `quantité` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `T_CONTENIR`
--

INSERT INTO `T_CONTENIR` (`arme_fk`, `cmd_fk`, `quantité`) VALUES
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
('a011', 'c011', 1),
('a012', 'c012', 2),
('a013', 'c013', 1),
('a014', 'c014', 3),
('a015', 'c015', 2),
('a016', 'c016', 4),
('a017', 'c017', 1),
('a018', 'c018', 2),
('a019', 'c019', 1),
('a020', 'c020', 3),
('a021', 'c021', 2),
('a022', 'c022', 1),
('a023', 'c023', 4),
('a024', 'c024', 1),
('a025', 'c025', 2),
('a026', 'c026', 3),
('a027', 'c027', 1),
('a028', 'c028', 2),
('a029', 'c029', 3),
('a030', 'c030', 1),
('a031', 'c031', 2),
('a032', 'c032', 3),
('a033', 'c033', 4),
('a033', 'c052', 4),
('a034', 'c034', 1),
('a034', 'c051', 4),
('a035', 'c035', 2),
('a036', 'c036', 3),
('a037', 'c037', 1),
('a038', 'c038', 2),
('a039', 'c039', 4),
('a040', 'c040', 1),
('a041', 'c041', 2),
('a042', 'c042', 3),
('a043', 'c043', 1),
('a044', 'c044', 4),
('a045', 'c045', 2),
('a046', 'c046', 1),
('a047', 'c047', 3),
('a048', 'c048', 2),
('a049', 'c049', 4),
('a050', 'c050', 4);

-- --------------------------------------------------------

--
-- Structure de la table `T_JOUEUR`
--

CREATE TABLE `T_JOUEUR` (
  `joueur_id` varchar(50) NOT NULL,
  `pseudo` varchar(50) NOT NULL,
  `xp` decimal(15,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `T_JOUEUR`
--

INSERT INTO `T_JOUEUR` (`joueur_id`, `pseudo`, `xp`) VALUES
('1', 'aborrington0', '4490'),
('10', 'lyeardley9', '1365'),
('100', 'andrewTate92i', '8593'),
('101', 'lspellward2r', '8593'),
('11', 'wbeebya', '8448'),
('12', 'kcarslawb', '5718'),
('13', 'eheinrichc', '3843'),
('14', 'baseld', '5975'),
('15', 'btiffneye', '4117'),
('16', 'jhourihanf', '1866'),
('17', 'mburfootg', '7205'),
('18', 'sscopynh', '7745'),
('19', 'jailmeri', '2970'),
('2', 'kchristophers1', '6972'),
('20', 'lmayellj', '6889'),
('21', 'lassadk', '2578'),
('22', 'adeinhardtl', '8427'),
('23', 'etraytonm', '4947'),
('24', 'escrivinn', '1811'),
('25', 'jbunkleo', '6716'),
('26', 'bdreganp', '7174'),
('27', 'epundyq', '2883'),
('28', 'eandrysr', '5268'),
('29', 'hsullers', '8631'),
('3', 'kcareswell2', '4004'),
('30', 'ymckibbint', '6623'),
('31', 'atinceyu', '5397'),
('32', 'hmccarterv', '3232'),
('33', 'fboldtw', '6748'),
('34', 'sgantzmanx', '1328'),
('35', 'lhaycrofty', '4579'),
('36', 'lfantinz', '3551'),
('37', 'athurbon10', '7496'),
('38', 'gsanbrook11', '2398'),
('39', 'mrupel12', '3790'),
('4', 'btrumble3', '3414'),
('40', 'ubodleigh13', '2004'),
('41', 'dveronique14', '6449'),
('42', 'ablinde15', '3720'),
('43', 'bspinetti16', '1630'),
('44', 'ahillborne17', '8030'),
('45', 'jbeaten18', '3669'),
('46', 'simpett19', '5098'),
('47', 'apowdrell1a', '8715'),
('48', 'drizzello1b', '3450'),
('49', 'smohring1c', '3148'),
('5', 'kboulds4', '4094'),
('50', 'bdemer1d', '2950'),
('51', 'fphelan1e', '2894'),
('52', 'mcroasdale1f', '5531'),
('53', 'mmarunchak1g', '2385'),
('54', 'kbarrington1h', '7701'),
('55', 'chuntington1i', '5615'),
('56', 'rarndt1j', '6459'),
('57', 'lklicher1k', '8796'),
('58', 'rdeehan1l', '2728'),
('59', 'ijepensen1m', '6792'),
('6', 'dlaste5', '5643'),
('60', 'gcookes1n', '1716'),
('61', 'egiddy1o', '2064'),
('62', 'tjudge1p', '5019'),
('63', 'rfoxon1q', '7582'),
('64', 'jsize1r', '3411'),
('65', 'kashurst1s', '2084'),
('66', 'gflockhart1t', '4925'),
('67', 'pcatley1u', '2546'),
('68', 'dhayto1v', '8819'),
('69', 'iiannello1w', '4625'),
('7', 'lstayt6', '5933'),
('70', 'ewalding1x', '2234'),
('71', 'glawson1y', '1085'),
('72', 'blemarchand1z', '6791'),
('73', 'dwaine20', '6300'),
('74', 'ptollerfield21', '5267'),
('75', 'lelstob22', '4857'),
('76', 'lbutland23', '4302'),
('77', 'fmilleton24', '2280'),
('78', 'vmcalpin25', '5431'),
('79', 'tjochen26', '1480'),
('8', 'egregs7', '2340'),
('80', 'kcandlin27', '2140'),
('81', 'wkildahl28', '8031'),
('82', 'dbroggio29', '2304'),
('83', 'sbareford2a', '4989'),
('84', 'ascalera2b', '6917'),
('85', 'afranceschelli2c', '6873'),
('86', 'llehemann2d', '7409'),
('87', 'lmickleburgh2e', '8800'),
('88', 'nalfonzo2f', '7536'),
('89', 'ecater2g', '6904'),
('9', 'gtoor8', '4194'),
('90', 'kwawer2h', '8960'),
('91', 'dbiddwell2i', '3884'),
('92', 'mhamprecht2j', '2962'),
('93', 'jspuner2k', '2203'),
('94', 'mcamis2l', '7100'),
('95', 'kjozsef2m', '1783'),
('96', 'jpeter2n', '3411'),
('97', 'lashwell2o', '2531'),
('98', 'ubunning2p', '7573'),
('99', 'kbossom2q', '5597');

-- --------------------------------------------------------

--
-- Structure de la table `T_POSSEDER`
--

CREATE TABLE `T_POSSEDER` (
  `joueur_fk` varchar(50) NOT NULL,
  `arme_fk` varchar(50) NOT NULL,
  `nb_coup_restant` decimal(15,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `T_POSSEDER`
--

INSERT INTO `T_POSSEDER` (`joueur_fk`, `arme_fk`, `nb_coup_restant`) VALUES
('1', 'a001', '95.00'),
('10', 'a010', '195.00'),
('11', 'a011', '125.00'),
('12', 'a012', '150.00'),
('13', 'a013', '90.00'),
('14', 'a014', '200.00'),
('15', 'a015', '175.00'),
('16', 'a016', '85.00'),
('17', 'a017', '100.00'),
('18', 'a018', '70.00'),
('19', 'a019', '60.00'),
('2', 'a002', '180.00'),
('20', 'a020', '195.00'),
('21', 'a021', '110.00'),
('22', 'a022', '180.00'),
('23', 'a023', '130.00'),
('24', 'a024', '105.00'),
('25', 'a025', '90.00'),
('26', 'a026', '115.00'),
('27', 'a027', '170.00'),
('28', 'a028', '140.00'),
('29', 'a029', '75.00'),
('3', 'a003', '85.00'),
('30', 'a030', '155.00'),
('31', 'a031', '190.00'),
('32', 'a032', '65.00'),
('33', 'a033', '120.00'),
('34', 'a034', '95.00'),
('35', 'a035', '135.00'),
('36', 'a036', '100.00'),
('37', 'a037', '155.00'),
('38', 'a038', '170.00'),
('39', 'a039', '80.00'),
('4', 'a004', '140.00'),
('40', 'a040', '145.00'),
('41', 'a041', '160.00'),
('42', 'a042', '115.00'),
('43', 'a043', '105.00'),
('44', 'a044', '175.00'),
('45', 'a045', '150.00'),
('46', 'a046', '130.00'),
('47', 'a047', '190.00'),
('48', 'a048', '85.00'),
('49', 'a049', '140.00'),
('5', 'a005', '235.00'),
('50', 'a050', '115.00'),
('6', 'a006', '160.00'),
('7', 'a007', '80.00'),
('8', 'a008', '75.00'),
('9', 'a009', '105.00');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `T_ARME`
--
ALTER TABLE `T_ARME`
  ADD PRIMARY KEY (`arme_id`);

--
-- Index pour la table `T_COMMANDE`
--
ALTER TABLE `T_COMMANDE`
  ADD PRIMARY KEY (`cmd_id`),
  ADD KEY `joueur_fk` (`joueur_fk`);

--
-- Index pour la table `T_CONTENIR`
--
ALTER TABLE `T_CONTENIR`
  ADD PRIMARY KEY (`arme_fk`,`cmd_fk`),
  ADD KEY `cmd_fk` (`cmd_fk`);

--
-- Index pour la table `T_JOUEUR`
--
ALTER TABLE `T_JOUEUR`
  ADD PRIMARY KEY (`joueur_id`);

--
-- Index pour la table `T_POSSEDER`
--
ALTER TABLE `T_POSSEDER`
  ADD PRIMARY KEY (`joueur_fk`,`arme_fk`),
  ADD KEY `arme_fk` (`arme_fk`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `T_COMMANDE`
--
ALTER TABLE `T_COMMANDE`
  ADD CONSTRAINT `T_COMMANDE_ibfk_1` FOREIGN KEY (`joueur_fk`) REFERENCES `T_JOUEUR` (`joueur_id`);

--
-- Contraintes pour la table `T_CONTENIR`
--
ALTER TABLE `T_CONTENIR`
  ADD CONSTRAINT `T_CONTENIR_ibfk_1` FOREIGN KEY (`arme_fk`) REFERENCES `T_ARME` (`arme_id`),
  ADD CONSTRAINT `T_CONTENIR_ibfk_2` FOREIGN KEY (`cmd_fk`) REFERENCES `T_COMMANDE` (`cmd_id`);

--
-- Contraintes pour la table `T_POSSEDER`
--
ALTER TABLE `T_POSSEDER`
  ADD CONSTRAINT `T_POSSEDER_ibfk_1` FOREIGN KEY (`joueur_fk`) REFERENCES `T_JOUEUR` (`joueur_id`),
  ADD CONSTRAINT `T_POSSEDER_ibfk_2` FOREIGN KEY (`arme_fk`) REFERENCES `T_ARME` (`arme_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
