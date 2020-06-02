-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : jeu. 14 mai 2020 à 10:33
-- Version du serveur :  5.5.65-MariaDB
-- Version de PHP : 7.3.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `extranet_v1`
--

-- --------------------------------------------------------

--
-- Structure de la table `sms_campaigns`
--

CREATE TABLE `sms_campaigns` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `sms_package_id` int(11) DEFAULT NULL,
  `subject` varchar(250) NOT NULL,
  `from` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `listes` text,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `started_at` datetime DEFAULT NULL,
  `closed_at` datetime DEFAULT NULL,
  `processed` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `sms_campaigns`
--

INSERT INTO `sms_campaigns` (`id`, `user_id`, `client_id`, `sms_package_id`, `subject`, `from`, `message`, `listes`, `status`, `created_at`, `started_at`, `closed_at`, `processed`) VALUES
(1, 18, 63, 1, 'SMAC dÃ©mo ATA', 'SMAC', 'Ceci est un test', '[\"1\"]', 3, '2019-10-07 16:13:12', '2019-10-07 18:12:00', '2019-10-07 18:33:01', NULL),
(2, 18, 63, 1, 'Test aude centre', 'AudeCentre', 'Petit test !!!!!!!!!!!! ', '[\"21\"]', 3, '2019-10-08 07:50:26', '2019-10-08 09:46:00', '2019-10-08 09:57:01', NULL),
(3, 18, 63, 1, 'RELANCE CS 09 10 2019', 'SMAC', 'SYNDICAT MIXTE AUDE CENTRE\r\nRappel : Le prochain ComitÃ© Syndical du Syndicat Mixte Aude Centre aura lieu ce Mercredi 09 Octobre 2019 Ã  18h30 Ã  Puicheric (salle de l\'enclos)\r\nPour des raisons d\'organisation, nous vous remercions de bien vouloir nous indiquer votre prÃ©sence (ou absence) par retour de SMS. \r\nVous remerciant par avance, bien cordialement. Le SecrÃ©tariat \r\n', '[\"23\"]', 3, '2019-10-08 09:36:07', '2019-10-08 11:19:00', '2019-10-08 11:51:01', NULL),
(4, 18, 63, 1, 'RELANCE SUPPLEANTS CS 09 10 2019 ', 'SMAC', 'SYNDICAT MIXTE AUDE CENTRE\r\nBonjour, \r\nLe prochain comitÃ© syndical du Syndicat Mixte Aude Centre aura lieu ce MERCREDI 09 OCTOBRE 2019 Ã  18h30 Ã  PUICHERIC (salle de l\'enclos). Le dÃ©lÃ©guÃ© titulaire s\'Ã©tant excusÃ© de ne pouvoir y assister, pourriez-vous nous informer en retour de ce sms s\'il vous est possible de le remplacer ? \r\nVous remerciant par avance, \r\nBien cordialement, \r\nLe SecrÃ©tariat', '[\"24\"]', 3, '2019-10-08 10:10:59', '2019-10-08 12:06:00', '2019-10-08 12:18:01', NULL),
(5, 18, 63, 1, 'RELANCE M PETIT', 'SMAC', 'SYNDICAT MIXTE AUDE CENTRE Rappel : Le prochain ComitÃ© Syndical du Syndicat Mixte Aude Centre aura lieu ce Mercredi 09 Octobre 2019 Ã  18h30 Ã  Puicheric (salle de l\'enclos) Pour des raisons d\'organisation, nous vous remercions de bien vouloir nous indiquer votre prÃ©sence (ou absence) par retour de SMS. Vous remerciant par avance, Bien Cordialement. Le SecrÃ©tariat', '[\"25\"]', 3, '2019-10-08 10:16:11', '2019-10-08 12:14:00', '2019-10-08 12:21:01', NULL),
(7, 18, 63, 1, 'Relance pour le ComitÃ© Syndical du Syndicat Aude Centre du 17 dÃ©cembre 2019 Ã  18h30 - LA LIVINIERE', 'AudeCentre', 'Madame, Monsieur,\r\nPour ceux qui n\'ont pas encore rÃ©pondu, merci de bien vouloir confirmer ou pas votre prÃ©sence au ComitÃ© Syndical du 19/12/2019 Ã  La LiviniÃ¨re par retour de mail ou sms.\r\nComptant sur votre comprÃ©hension.\r\nBien cordialement.\r\nLe SecrÃ©tariat.\r\n', '[\"2\",\"4\",\"6\",\"8\",\"10\",\"12\"]', 3, '2019-12-12 11:25:05', '2019-12-13 11:00:00', '2019-12-16 14:33:01', NULL),
(8, 18, 63, 1, 'Relance pour le ComitÃ© Syndical du Syndicat Aude Centre du 17 dÃ©cembre 2019 Ã  18h30 - LA LIVINIERE', 'AudeCentre', 'Madame, Monsieur, ANNULE ET REMPLACE le prÃ©cÃ©dent mail. Pour ceux qui n\'ont pas encore rÃ©pondu, merci de bien vouloir confirmer ou pas votre prÃ©sence au ComitÃ© Syndical du 17/12/2019 Ã  La LiviniÃ¨re par retour de mail ou sms. Comptant sur votre comprÃ©hension. Bien cordialement. Avec nos excuses. Le SecrÃ©tariat.', '[\"2\",\"4\",\"6\",\"8\",\"10\",\"12\"]', 3, '2019-12-16 13:24:43', '2019-12-16 14:24:00', '2019-12-16 15:21:01', NULL),
(9, 18, 63, 1, 'Relance ComitÃ© Syndical de ce soir.', 'SMAC', 'Madame, Monsieur, \r\n\r\nPour ceux qui n\'ont pas encore rÃ©pondu, merci de bien vouloir confirmer ou pas votre prÃ©sence au ComitÃ© Syndical de ce jour Ã  La LiviniÃ¨re par retour de mail ou sms. Comptant sur votre comprÃ©hension. Bien cordialement.  Le SecrÃ©tariat.', '[\"26\"]', 3, '2019-12-17 09:36:15', '2019-12-17 10:35:00', '2019-12-17 12:06:01', NULL),
(10, 18, 63, 1, 'Relance ComitÃ© Syndical du  mardi 18 fÃ©vrier 2020 Ã  SIRAN 18h30', 'AudeCentre', 'Bonjour.\r\nCe petit message de relance pour vous rappeler de bien vouloir nous confirmer votre prÃ©sence ou absence au ComitÃ© Syndical du Syndicat Mixte Aude Centre de demain : mardi 18 fÃ©vrier 2020 Ã  Siran Ã  18h30. Bien cordialement. Le SecrÃ©tariat.', '[\"2\",\"4\",\"6\",\"8\",\"10\",\"12\"]', 3, '2020-02-17 09:59:56', '2020-02-17 10:55:00', '2020-02-17 12:15:01', NULL),
(11, 18, 63, 1, 'Relance ComitÃ© Syndical du mercredi 4 mars 18h30 PÃ©pieux', 'AudeCentre', 'Bonjour. Pour les Ã©lus qui n\'auraient pas encore rÃ©pondu, merci de bien vouloir nous indiquer si vous serez prÃ©sent ou absent au ComitÃ© Syndical de PEPIEUX le 4 MARS 2020 Ã  18h30. Un apÃ©ritif dinatoire sera servi Ã  l\'issue de ce ComitÃ© Syndical. Bien cordialement. Le SecrÃ©tariat.', '[\"2\",\"4\",\"6\",\"8\",\"10\",\"12\"]', 3, '2020-03-02 13:14:34', '2020-03-02 14:06:00', '2020-03-02 14:36:01', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `sms_campaigns_recipients`
--

CREATE TABLE `sms_campaigns_recipients` (
  `id` int(11) NOT NULL,
  `sms_campaign_id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `tel` varchar(20) NOT NULL,
  `status` int(11) NOT NULL,
  `sended_at` datetime DEFAULT NULL,
  `api_return` text NOT NULL,
  `api_attempt` int(11) NOT NULL DEFAULT '0',
  `cost` decimal(5,5) DEFAULT NULL,
  `sms_count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `sms_campaigns_recipients`
--

INSERT INTO `sms_campaigns_recipients` (`id`, `sms_campaign_id`, `name`, `tel`, `status`, `sended_at`, `api_return`, `api_attempt`, `cost`, `sms_count`) VALUES
(1, 1, 'Ataraxie Julien', '+33652378142', 3, '2019-10-07 18:32:16', '{\"@attributes\":{\"batchid\":\"7c46f296-4ed9-18d8-0c14-118222e23401\"},\"messageheader\":{\"@attributes\":{\"id\":\"2c1c9960-73ac-193c-0ad3-118222e22701\"}}}', 4, '0.00000', 1),
(2, 2, 'AnaÃ¯s', '+33610656805', 3, '2019-10-08 09:55:01', '{\"@attributes\":{\"batchid\":\"526182e1-7736-154f-0fb3-1183c9492f81\"},\"messageheader\":{\"@attributes\":{\"id\":\"0df9ec61-f08c-1c39-08b0-1183c9492881\"}}}', 1, '0.00000', 1),
(3, 2, 'SÃ©verine ', '+33627853880', 3, '2019-10-08 09:55:01', '{\"@attributes\":{\"batchid\":\"822e40e7-d0e3-18f8-0a94-1183c949b281\"},\"messageheader\":{\"@attributes\":{\"id\":\"e812fed1-d43d-1930-098a-1183c949aa81\"}}}', 1, '0.00000', 1),
(4, 2, 'Marie-Ange', '+33667972456', 3, '2019-10-08 09:55:02', '{\"@attributes\":{\"batchid\":\"31ed3f4b-fea1-120e-0a4b-1183c94a4681\"},\"messageheader\":{\"@attributes\":{\"id\":\"ebc86d8b-47a7-1898-0a2a-1183c94a3c81\"}}}', 1, '0.00000', 1),
(62, 3, 'didierlaure.mairie@gmail.com', '+33603105762', 3, '2019-10-08 11:40:01', '{\"@attributes\":{\"batchid\":\"2bd12180-52fb-1c2b-0f55-1183f95a3d01\"},\"messageheader\":{\"@attributes\":{\"id\":\"8ba759d3-7540-15c1-0d7e-1183f95a3301\"}}}', 1, '0.00000', 1),
(63, 3, 'schivardi.gerard@orange.fr', '+33640154053', 3, '2019-10-08 11:40:01', '{\"@attributes\":{\"batchid\":\"7d2c5912-d88e-1617-0b0f-1183f95a8b01\"},\"messageheader\":{\"@attributes\":{\"id\":\"85a997ef-7b2d-1a32-09db-1183f95a8481\"}}}', 1, '0.00000', 1),
(64, 3, 'bernard-les-vignes@orange.fr', '+33632925787', 3, '2019-10-08 11:40:02', '{\"@attributes\":{\"batchid\":\"9472526e-641c-12e7-08d9-1183f95aed01\"},\"messageheader\":{\"@attributes\":{\"id\":\"79995e93-c195-1333-0366-1183f95add01\"}}}', 1, '0.00000', 1),
(65, 3, 'hubert.bou@wanadoo.fr', '+33673391641', 3, '2019-10-08 11:40:02', '{\"@attributes\":{\"batchid\":\"f95a2888-40d7-12e8-0a6e-1183f95b7a01\"},\"messageheader\":{\"@attributes\":{\"id\":\"0931351d-b1ab-115e-0667-1183f95b6c01\"}}}', 1, '0.00000', 1),
(66, 3, 'michel.jammes0171@orange.fr', '+33633846378', 3, '2019-10-08 11:40:02', '{\"@attributes\":{\"batchid\":\"6d01537a-821a-1f53-0787-1183f95bef81\"},\"messageheader\":{\"@attributes\":{\"id\":\"e34d6912-2fe2-1a30-0d19-1183f95be401\"}}}', 1, '0.00000', 1),
(67, 3, 'mairie-de-citou@wanadoo.fr', '+33685273012', 3, '2019-10-08 11:40:03', '{\"@attributes\":{\"batchid\":\"da2add6e-d542-1aad-04d0-1183f95b7801\"},\"messageheader\":{\"@attributes\":{\"id\":\"3ed106c3-236b-1330-05d4-1183f95b6181\"}}}', 1, '0.00000', 1),
(68, 3, 'limousis@wanadoo.fr', '+33684844034', 3, '2019-10-08 11:40:03', '{\"@attributes\":{\"batchid\":\"ef91e122-02f3-1927-090e-1183f95c0181\"},\"messageheader\":{\"@attributes\":{\"id\":\"e279fb40-2368-1179-00ac-1183f95bf701\"}}}', 1, '0.00000', 1),
(69, 3, 'pradellesenval@wanadoo.fr', '+33689391954', 3, '2019-10-08 11:40:03', '{\"@attributes\":{\"batchid\":\"855d110b-ab8d-16f0-0bc5-1183f95d7301\"},\"messageheader\":{\"@attributes\":{\"id\":\"98d14add-3648-187d-00fc-1183f95d6501\"}}}', 1, '0.00000', 1),
(70, 3, 'sige.jean@orange.fr', '+33670221747', 3, '2019-10-08 11:40:03', '{\"@attributes\":{\"batchid\":\"cd26be02-65f0-1080-0128-1183f95e3601\"},\"messageheader\":{\"@attributes\":{\"id\":\"8d1af9e3-436e-1299-0ed7-1183f95e2d01\"}}}', 1, '0.00000', 1),
(71, 3, 'jo-gonzales@orange.fr', '+33674866962', 3, '2019-10-08 11:40:03', '{\"@attributes\":{\"batchid\":\"e73f7d62-80a3-1cb3-0cea-1183f95e8c01\"},\"messageheader\":{\"@attributes\":{\"id\":\"024956e5-d399-1179-07ed-1183f95e7f01\"}}}', 1, '0.00000', 1),
(72, 3, 'jean.turchetto@orange.fr', '+33685912744', 3, '2019-10-08 11:40:04', '{\"@attributes\":{\"batchid\":\"24d3a589-1c31-158a-0fca-1183f95ed201\"},\"messageheader\":{\"@attributes\":{\"id\":\"b55971c1-e29a-1b0f-0cc7-1183f95ecb81\"}}}', 1, '0.00000', 1),
(73, 3, 'philippe.clergue@wanadoo.fr', '+33627173853', 3, '2019-10-08 11:40:04', '{\"@attributes\":{\"batchid\":\"d04dcdb3-6cdf-1f3c-0a93-1183f95ef381\"},\"messageheader\":{\"@attributes\":{\"id\":\"18e4243e-141f-1197-091b-1183f95eed01\"}}}', 1, '0.00000', 1),
(74, 3, 'arnaudalbarel@gmail.com', '+33683880972', 3, '2019-10-08 11:40:04', '{\"@attributes\":{\"batchid\":\"ae255e7f-3b3f-1f38-02a0-1183f95f9701\"},\"messageheader\":{\"@attributes\":{\"id\":\"5e0dfed3-2f76-1a0c-0807-1183f95f8f01\"}}}', 1, '0.00000', 1),
(75, 3, 'yolpiton@orange.fr', '+33661526132', 3, '2019-10-08 11:40:04', '{\"@attributes\":{\"batchid\":\"e2a180bc-7482-10a9-0d32-1183f95fdb01\"},\"messageheader\":{\"@attributes\":{\"id\":\"9fc747de-0675-124d-0af7-1183f95fd401\"}}}', 1, '0.00000', 1),
(76, 3, 'galibertjeanlouis@gmail.com', '+33662738477', 3, '2019-10-08 11:40:04', '{\"@attributes\":{\"batchid\":\"e7708987-fdcd-1575-0635-1183f9605301\"},\"messageheader\":{\"@attributes\":{\"id\":\"b2bf742d-e37a-1937-0a22-1183f9604801\"}}}', 1, '0.00000', 1),
(77, 3, 'jf.juste@free.fr', '+33673035388', 3, '2019-10-08 11:40:05', '{\"@attributes\":{\"batchid\":\"5a43e7e8-825e-125d-065c-1183f9609a81\"},\"messageheader\":{\"@attributes\":{\"id\":\"95407fe4-59e6-1f45-05e6-1183f9608e81\"}}}', 1, '0.00000', 1),
(78, 3, 'ph-phalip@orange.fr', '+33640896363', 3, '2019-10-08 11:40:05', '{\"@attributes\":{\"batchid\":\"e2bd15d7-01fa-1888-09de-1183f9612b81\"},\"messageheader\":{\"@attributes\":{\"id\":\"7dcd4ad1-ccc3-11de-07ef-1183f9611d01\"}}}', 1, '0.00000', 1),
(79, 3, 'ottocoassin@gmail.com', '+33609568240', 3, '2019-10-08 11:40:05', '{\"@attributes\":{\"batchid\":\"40b8a0ae-c509-1e30-0fb0-1183f961cc01\"},\"messageheader\":{\"@attributes\":{\"id\":\"aaf758cc-1ba6-1500-063b-1183f961c381\"}}}', 1, '0.00000', 1),
(80, 3, 'jp.pelix@wanadoo.fr', '+33679990720', 3, '2019-10-08 11:40:05', '{\"@attributes\":{\"batchid\":\"db710888-1516-1ec7-00a2-1183f9614d81\"},\"messageheader\":{\"@attributes\":{\"id\":\"f6033bb5-f44e-1ce8-04c9-1183f9614401\"}}}', 1, '0.00000', 1),
(81, 3, 'flo.cathary@hotmail.fr', '+33681454540', 3, '2019-10-08 11:40:06', '{\"@attributes\":{\"batchid\":\"b002dcd6-3ba3-1513-02c8-1183f962bb81\"},\"messageheader\":{\"@attributes\":{\"id\":\"9768a11c-b354-166f-0b06-1183f962b581\"}}}', 1, '0.00000', 1),
(82, 3, 'monier.denis@free.fr', '+33663329383', 3, '2019-10-08 11:40:06', '{\"@attributes\":{\"batchid\":\"435359e3-88c3-1341-05e6-1183f9631a01\"},\"messageheader\":{\"@attributes\":{\"id\":\"ba79f66a-e241-1fd1-0d07-1183f9631481\"}}}', 1, '0.00000', 1),
(83, 3, 'paul.malric@club-internet.fr', '+33688156063', 3, '2019-10-08 11:40:06', '{\"@attributes\":{\"batchid\":\"e7c4214e-e841-1da6-0186-1183f9636281\"},\"messageheader\":{\"@attributes\":{\"id\":\"ceffde61-92f0-1d6f-0ede-1183f9635b81\"}}}', 1, '0.00000', 1),
(84, 3, 'chrislaineloze@yahoo.fr', '+33624308606', 3, '2019-10-08 11:40:06', '{\"@attributes\":{\"batchid\":\"53b00080-aede-19f6-0515-1183f963bd81\"},\"messageheader\":{\"@attributes\":{\"id\":\"bcbc4959-a2b2-1659-0960-1183f963aa81\"}}}', 1, '0.00000', 1),
(85, 3, 'gaec.lesescoussols@orange.fr', '+33683716431', 3, '2019-10-08 11:40:06', '{\"@attributes\":{\"batchid\":\"81434d6c-c14b-1ffc-0f23-1183f9630b81\"},\"messageheader\":{\"@attributes\":{\"id\":\"d610c65d-0eb8-1a02-03df-1183f9630581\"}}}', 1, '0.00000', 1),
(86, 3, 'huc.marie-therese@orange.fr', '+33633794845', 3, '2019-10-08 11:40:07', '{\"@attributes\":{\"batchid\":\"8be0f70f-2e35-1f0c-04f1-1183f9646e01\"},\"messageheader\":{\"@attributes\":{\"id\":\"4c409417-9cc2-146a-0b85-1183f9646201\"}}}', 1, '0.00000', 1),
(87, 3, 'claude.bonnet16@wanadoo.fr', '+33675190986', 3, '2019-10-08 11:45:01', '{\"@attributes\":{\"batchid\":\"ad32a047-03f2-10b9-0393-1183fba3a901\"},\"messageheader\":{\"@attributes\":{\"id\":\"13fea375-ad95-18bf-07b9-1183fba3a101\"}}}', 1, '0.00000', 1),
(88, 3, 'germar.fernandez@orange.fr', '+33626748346', 3, '2019-10-08 11:45:01', '{\"@attributes\":{\"batchid\":\"cb5769ab-5ca5-16fa-0170-1183fba3f281\"},\"messageheader\":{\"@attributes\":{\"id\":\"a63cd8ed-b437-1880-05c3-1183fba3ea01\"}}}', 1, '0.00000', 1),
(89, 3, 'stephane.barthas@gmail.com', '+33677921967', 3, '2019-10-08 11:45:01', '{\"@attributes\":{\"batchid\":\"ac4ee7ff-46d7-1d98-0740-1183fba4a301\"},\"messageheader\":{\"@attributes\":{\"id\":\"c8b92e46-ed4b-180c-0cf5-1183fba49b81\"}}}', 1, '0.00000', 1),
(90, 3, 'jeanclaude.christiane@wanadoo.fr', '+33676303285', 3, '2019-10-08 11:45:02', '{\"@attributes\":{\"batchid\":\"c325a7d1-5abf-1918-0c66-1183fba4ed01\"},\"messageheader\":{\"@attributes\":{\"id\":\"2dc94b9c-f96d-1b5e-0472-1183fba4e781\"}}}', 1, '0.00000', 1),
(91, 3, 'crosregis@orange.fr', '+33662883864', 3, '2019-10-08 11:45:02', '{\"@attributes\":{\"batchid\":\"3bf0e24b-18f7-14eb-035e-1183fba50601\"},\"messageheader\":{\"@attributes\":{\"id\":\"8c331cce-741e-1475-0a17-1183fba4f981\"}}}', 1, '0.00000', 1),
(92, 3, 'guychiffre@free.fr', '+33627594156', 3, '2019-10-08 11:45:02', '{\"@attributes\":{\"batchid\":\"7d4bd0a4-61b9-1b9b-07d7-1183fba59101\"},\"messageheader\":{\"@attributes\":{\"id\":\"91d4c259-62da-1210-0b05-1183fba58c01\"}}}', 1, '0.00000', 1),
(93, 3, 'jeromemarechalferrant@sfr.fr', '+33622986996', 3, '2019-10-08 11:45:02', '{\"@attributes\":{\"batchid\":\"69441e60-2260-1355-0b49-1183fba48981\"},\"messageheader\":{\"@attributes\":{\"id\":\"3c75d758-0618-1559-02af-1183fba48301\"}}}', 1, '0.00000', 1),
(94, 3, 'guycaly@sfr.fr', '+33673503271', 3, '2019-10-08 11:45:02', '{\"@attributes\":{\"batchid\":\"db7efd19-25b7-1e9a-00ed-1183fba65781\"},\"messageheader\":{\"@attributes\":{\"id\":\"d8a9e40c-16e8-108c-0546-1183fba64d81\"}}}', 1, '0.00000', 1),
(95, 3, 'denis-lecoz@orange.fr', '+33610518022', 3, '2019-10-08 11:45:03', '{\"@attributes\":{\"batchid\":\"1a92ae01-d21c-17fc-0a28-1183fba6b801\"},\"messageheader\":{\"@attributes\":{\"id\":\"90888ec5-9fd6-1fc5-0262-1183fba6aa81\"}}}', 1, '0.00000', 1),
(96, 3, 'mairiedevillespassans@wanadoo.fr', '+33681385939', 3, '2019-10-08 11:45:03', '{\"@attributes\":{\"batchid\":\"9d6c2db6-e601-15e5-04f6-1183fba73481\"},\"messageheader\":{\"@attributes\":{\"id\":\"e3ee1e6f-1d6c-17e2-09e7-1183fba72d81\"}}}', 1, '0.00000', 1),
(97, 3, 'mairie.argens.garcia@orange.fr', '+33663006284', 3, '2019-10-08 11:45:03', '{\"@attributes\":{\"batchid\":\"f6cd056a-bd39-13c9-004e-1183fba7d781\"},\"messageheader\":{\"@attributes\":{\"id\":\"df8f4f02-b2cc-17a4-0f0d-1183fba7cc01\"}}}', 1, '0.00000', 1),
(98, 3, 'ar.alrang@wanadoo.fr', '+33615337040', 3, '2019-10-08 11:45:03', '{\"@attributes\":{\"batchid\":\"094f9774-0fb4-1fa8-0d88-1183fba86281\"},\"messageheader\":{\"@attributes\":{\"id\":\"81347730-7f8b-1ee8-003c-1183fba85001\"}}}', 1, '0.00000', 1),
(99, 3, 'emile.delpy@orange.fr', '+33633123581', 3, '2019-10-08 11:45:04', '{\"@attributes\":{\"batchid\":\"34fc4722-427f-15f4-083e-1183fba88501\"},\"messageheader\":{\"@attributes\":{\"id\":\"0e7edd52-6f8f-1e4a-0012-1183fba87881\"}}}', 1, '0.00000', 1),
(100, 3, 'mairie.agel@wanadoo.fr', '+33673258093', 3, '2019-10-08 11:45:04', '{\"@attributes\":{\"batchid\":\"01534f03-6d91-1ee8-0e4b-1183fba7b601\"},\"messageheader\":{\"@attributes\":{\"id\":\"78d162ce-2d83-1045-026b-1183fba7ae01\"}}}', 1, '0.00000', 1),
(101, 3, 'commune.aiguesvives-herault@orange.fr', '+33607990452', 3, '2019-10-08 11:45:04', '{\"@attributes\":{\"batchid\":\"ec4c8d9e-ee92-161b-0035-1183fba81e81\"},\"messageheader\":{\"@attributes\":{\"id\":\"30d54b55-5e16-1bf0-0403-1183fba81501\"}}}', 1, '0.00000', 1),
(102, 3, 'mairiedelaliviniere@wanadoo.fr', '+33687402721', 3, '2019-10-08 11:45:04', '{\"@attributes\":{\"batchid\":\"280c253c-5ca4-1267-0305-1183fba98a01\"},\"messageheader\":{\"@attributes\":{\"id\":\"c4c3a510-3484-1049-0110-1183fba97901\"}}}', 1, '0.00000', 1),
(103, 3, 'mairie-de-pardailhan@wanadoo.fr', '+33643191931', 3, '2019-10-08 11:45:04', '{\"@attributes\":{\"batchid\":\"d355c904-e635-11ce-0317-1183fba9eb01\"},\"messageheader\":{\"@attributes\":{\"id\":\"a2b5be69-4b1c-1197-04fe-1183fba9e301\"}}}', 1, '0.00000', 1),
(104, 3, 'mairie-sjm@orange.fr', '+33630567220', 3, '2019-10-08 11:45:05', '{\"@attributes\":{\"batchid\":\"60bfc222-4822-1c4a-0252-1183fbaab101\"},\"messageheader\":{\"@attributes\":{\"id\":\"b0a000f1-162d-143f-0a18-1183fbaaa701\"}}}', 1, '0.00000', 1),
(105, 3, 'mairiedevelieux@laposte.net', '+33611798281', 3, '2019-10-08 11:45:05', '{\"@attributes\":{\"batchid\":\"27119c90-5b28-12bf-0986-1183fbaac981\"},\"messageheader\":{\"@attributes\":{\"id\":\"51d38679-042b-1f31-0886-1183fbaac281\"}}}', 1, '0.00000', 1),
(106, 3, 'fraisse.yves602@orange.fr', '+33677180248', 3, '2019-10-08 11:45:05', '{\"@attributes\":{\"batchid\":\"e82a3b26-4f19-1116-09fa-1183fbab3601\"},\"messageheader\":{\"@attributes\":{\"id\":\"de33040c-283f-1924-0ebd-1183fbab3081\"}}}', 1, '0.00000', 1),
(107, 3, 'jpierre.tourret1949@gmail.com', '+33688791923', 3, '2019-10-08 11:45:05', '{\"@attributes\":{\"batchid\":\"0281f008-1a69-1d22-0c52-1183fbaa7981\"},\"messageheader\":{\"@attributes\":{\"id\":\"518647d8-c642-16fc-038f-1183fbaa7201\"}}}', 1, '0.00000', 1),
(108, 3, 'harmoniegonzalez@gmail.com', '+33614666566', 3, '2019-10-08 11:45:05', '{\"@attributes\":{\"batchid\":\"2054745b-3a42-195e-0e02-1183fbac1a81\"},\"messageheader\":{\"@attributes\":{\"id\":\"c6d6598f-1451-17a4-0e63-1183fbac1181\"}}}', 1, '0.00000', 1),
(109, 3, 'jeanpierrepastre45@orange.fr', '+33677149339', 3, '2019-10-08 11:45:05', '{\"@attributes\":{\"batchid\":\"08e87b0a-bf15-19bf-0dd4-1183fbac6e01\"},\"messageheader\":{\"@attributes\":{\"id\":\"86ef4470-27e2-1deb-0a85-1183fbac6901\"}}}', 1, '0.00000', 1),
(110, 3, 'piva.daniel.enzo@gmail.com', '+33608896941', 3, '2019-10-08 11:45:06', '{\"@attributes\":{\"batchid\":\"5b4f52bd-c695-16d3-0dfd-1183fbac8e01\"},\"messageheader\":{\"@attributes\":{\"id\":\"779f8d3b-0c4c-12ad-0d57-1183fbac8601\"}}}', 1, '0.00000', 1),
(111, 3, 'micheltailhades@orange.fr', '+33607148964', 3, '2019-10-08 11:45:06', '{\"@attributes\":{\"batchid\":\"59aa4ea3-907b-1db9-0768-1183fbad3881\"},\"messageheader\":{\"@attributes\":{\"id\":\"026358b3-a896-11da-08c5-1183fbad3381\"}}}', 1, '0.00000', 1),
(112, 3, 'ams1.olonzac@wanadoo.fr', '+33631377443', 3, '2019-10-08 11:50:01', '{\"@attributes\":{\"batchid\":\"fb224d8d-b0b9-12b0-0e02-1183fdeea081\"},\"messageheader\":{\"@attributes\":{\"id\":\"605dc43a-3a58-1214-0ad1-1183fdee9601\"}}}', 1, '0.00000', 1),
(113, 3, 'alainmouly34@gmail.com', '+33680023154', 3, '2019-10-08 11:50:02', '{\"@attributes\":{\"batchid\":\"1c4bf170-8c0c-187d-055a-1183fdeebb81\"},\"messageheader\":{\"@attributes\":{\"id\":\"114fdd5b-ebb4-176f-0836-1183fdeeb481\"}}}', 1, '0.00000', 1),
(114, 3, 'sebastien.olivares@hotmail.fr', '+33622324432', 3, '2019-10-08 11:50:02', '{\"@attributes\":{\"batchid\":\"ba850a44-0aca-1359-0d44-1183fdef9881\"},\"messageheader\":{\"@attributes\":{\"id\":\"fc87f412-2760-1060-09a1-1183fdef9181\"}}}', 1, '0.00000', 1),
(115, 3, 'AnaÃ¯s', '+33610656805', 3, '2019-10-08 11:50:03', '{\"@attributes\":{\"batchid\":\"c9a2996e-50f3-19ff-0171-1183fdf1f581\"},\"messageheader\":{\"@attributes\":{\"id\":\"08b0b181-0a91-1a72-07dd-1183fdf1ef01\"}}}', 1, '0.00000', 1),
(116, 3, 'PITIE JEAN LUC', '+33609992094', 3, '2019-10-08 11:50:03', '{\"@attributes\":{\"batchid\":\"a0c594a5-81d6-1612-05bd-1183fdf12301\"},\"messageheader\":{\"@attributes\":{\"id\":\"330e51e1-49e2-1993-0307-1183fdf11c81\"}}}', 1, '0.00000', 1),
(117, 3, 'DYE Alexandre', '+33768283171', 3, '2019-10-08 11:50:04', '{\"@attributes\":{\"batchid\":\"ecd3d84c-a56f-14bc-0c2d-1183fdf29501\"},\"messageheader\":{\"@attributes\":{\"id\":\"3ec373a5-3864-1d98-0bd0-1183fdf28d81\"}}}', 1, '0.00000', 1),
(118, 3, 'TARDIEU GERARD', '+33645178756', 3, '2019-10-08 11:50:04', '{\"@attributes\":{\"batchid\":\"718c30d4-562a-1d03-0aa5-1183fdf2ff01\"},\"messageheader\":{\"@attributes\":{\"id\":\"bfb3280b-322b-1ce1-0318-1183fdf2f781\"}}}', 1, '0.00000', 1),
(119, 4, 'jocelyne.pages11@gmail.com', '+33686168127', 3, '2019-10-08 12:15:01', '{\"@attributes\":{\"batchid\":\"fe5ad9d9-3d21-1443-0513-118409601201\"},\"messageheader\":{\"@attributes\":{\"id\":\"7b2830dc-77a8-1abb-0ff1-118409600881\"}}}', 1, '0.00000', 1),
(120, 4, 'james.graham@wanadoo.fr', '+33619020959', 3, '2019-10-08 12:15:02', '{\"@attributes\":{\"batchid\":\"4100b217-0cc8-1996-0120-118409606e01\"},\"messageheader\":{\"@attributes\":{\"id\":\"834c074b-c551-1f0e-09d0-118409606081\"}}}', 1, '0.00000', 1),
(121, 4, 'peltierjulien@orange.fr', '+33613505668', 3, '2019-10-08 12:15:02', '{\"@attributes\":{\"batchid\":\"336fa31b-dc0d-1ecc-0841-11840961b501\"},\"messageheader\":{\"@attributes\":{\"id\":\"128003b6-f21f-1923-0fe7-11840961ad81\"}}}', 1, '0.00000', 1),
(122, 4, 'juleswhitaker@yahoo.co.uk', '+33673170273', 3, '2019-10-08 12:15:02', '{\"@attributes\":{\"batchid\":\"8cb9689b-b8e8-1cae-0b57-11840961fc01\"},\"messageheader\":{\"@attributes\":{\"id\":\"e609f8b9-6722-1381-0166-11840961f681\"}}}', 1, '0.00000', 1),
(123, 5, 'PETIT JEAN CHRISTOPHE', '+33612776480', 3, '2019-10-08 12:20:02', '{\"@attributes\":{\"batchid\":\"d9ab5f4e-b2b8-1b79-0f9e-11840ba8fb81\"},\"messageheader\":{\"@attributes\":{\"id\":\"4820e32f-6d23-117e-09b1-11840ba8f601\"}}}', 1, '0.00000', 1),
(222, 7, 'didierlaure.mairie@gmail.com', '+33603105762', 3, '2019-12-16 14:25:03', '{\"@attributes\":{\"batchid\":\"2ec547e6-5803-191e-06f6-12360bc3f901\"},\"messageheader\":{\"@attributes\":{\"id\":\"87a1589b-3463-10c6-0893-12360bc3ed01\"}}}', 1, '0.00000', 1),
(223, 7, 'alain.fabre11120@gmail.com', '+33784563678', 3, '2019-12-16 14:25:04', '{\"@attributes\":{\"batchid\":\"6ec26059-2465-174a-0967-12360bc31101\"},\"messageheader\":{\"@attributes\":{\"id\":\"c5eb0e91-57dd-1d1c-051a-12360bc30101\"}}}', 1, '0.00000', 1),
(224, 7, 'schivardi.gerard@orange.fr', '+33640154053', 3, '2019-12-16 14:25:04', '{\"@attributes\":{\"batchid\":\"8a8e832d-dc65-10dc-0490-12360bc40081\"},\"messageheader\":{\"@attributes\":{\"id\":\"027fbdfb-690c-16a9-0722-12360bc3f881\"}}}', 1, '0.00000', 1),
(225, 7, 'bernard-les-vignes@orange.fr', '+33632925787', 3, '2019-12-16 14:25:04', '{\"@attributes\":{\"batchid\":\"5d1c53f3-7dac-1cdc-0347-12360bc47f01\"},\"messageheader\":{\"@attributes\":{\"id\":\"a87f2c70-0ee0-171b-008f-12360bc47901\"}}}', 1, '0.00000', 1),
(226, 7, 'g.dauzat@yahoo.fr', '+33685725347', 3, '2019-12-16 14:25:04', '{\"@attributes\":{\"batchid\":\"5addbbf5-54a4-1585-02fe-12360bc4db01\"},\"messageheader\":{\"@attributes\":{\"id\":\"eb64c9ba-1285-124f-02f4-12360bc4d201\"}}}', 1, '0.00000', 1),
(227, 7, 'hubert.bou@wanadoo.fr', '+33673391641', 3, '2019-12-16 14:25:04', '{\"@attributes\":{\"batchid\":\"7237fc3a-71fb-1abb-014b-12360bc5ce81\"},\"messageheader\":{\"@attributes\":{\"id\":\"eea5dce8-ebb1-1855-04ba-12360bc5c581\"}}}', 1, '0.00000', 1),
(228, 7, 'michel.jammes0171@orange.fr', '+33633846378', 3, '2019-12-16 14:25:04', '{\"@attributes\":{\"batchid\":\"7851252a-7029-1c00-0c4d-12360bc56c81\"},\"messageheader\":{\"@attributes\":{\"id\":\"96531722-9447-1bae-0318-12360bc56601\"}}}', 1, '0.00000', 1),
(229, 7, 'gabriel.laso@wanadoo.fr', '+33688798098', 3, '2019-12-16 14:25:05', '{\"@attributes\":{\"batchid\":\"65f0c153-f08d-13f4-00b6-12360bc53201\"},\"messageheader\":{\"@attributes\":{\"id\":\"1a99f851-769c-17d0-07d3-12360bc52b81\"}}}', 1, '0.00000', 1),
(230, 7, 'E-mail invalide 3', '+33645178756', 3, '2019-12-16 14:25:05', '{\"@attributes\":{\"batchid\":\"0118ba02-36d0-18a9-09e4-12360bc61e01\"},\"messageheader\":{\"@attributes\":{\"id\":\"c45fa3c4-fa61-112e-0a07-12360bc61701\"}}}', 1, '0.00000', 1),
(232, 7, 'mairie-de-citou@wanadoo.fr', '+33685273012', 3, '2019-12-16 14:25:05', '{\"@attributes\":{\"batchid\":\"9648ffe4-3693-1312-0a27-12360bc5d481\"},\"messageheader\":{\"@attributes\":{\"id\":\"06bdaaf3-ea7b-191e-03d8-12360bc5ce81\"}}}', 1, '0.00000', 1),
(233, 7, 'mairie-aiguesvives@wanadoo.fr', '+33683283842', 3, '2019-12-16 14:25:05', '{\"@attributes\":{\"batchid\":\"5d751a55-9fd6-1451-012b-12360bc6d001\"},\"messageheader\":{\"@attributes\":{\"id\":\"edd259b5-0fa9-13fb-09ca-12360bc6c781\"}}}', 1, '0.00000', 1),
(234, 7, 'limousis@wanadoo.fr', '+33684844034', 3, '2019-12-16 14:25:05', '{\"@attributes\":{\"batchid\":\"4ebb7b05-2538-1d13-0df7-12360bc73f01\"},\"messageheader\":{\"@attributes\":{\"id\":\"9c090116-6607-1146-07a7-12360bc73781\"}}}', 1, '0.00000', 1),
(235, 7, 'mairie-de-berriac@wanadoo.fr', '+33674439753', 3, '2019-12-16 14:25:05', '{\"@attributes\":{\"batchid\":\"60a8a17e-342e-1825-0651-12360bc6e781\"},\"messageheader\":{\"@attributes\":{\"id\":\"60e0fa3c-d7db-1600-0f76-12360bc6e181\"}}}', 1, '0.00000', 1),
(236, 7, 'pradellesenval@wanadoo.fr', '+33689391954', 3, '2019-12-16 14:25:06', '{\"@attributes\":{\"batchid\":\"c8e18174-48fa-1931-0a0e-12360bc7de81\"},\"messageheader\":{\"@attributes\":{\"id\":\"7d853bc7-20ce-165b-085a-12360bc7d781\"}}}', 1, '0.00000', 1),
(237, 7, 'm.e.loubet@wanadoo.fr', '+33672505490', 3, '2019-12-16 14:30:01', '{\"@attributes\":{\"batchid\":\"11ddc37b-8daf-1321-03d0-12360e092b01\"},\"messageheader\":{\"@attributes\":{\"id\":\"e1f314e7-7659-1c81-038f-12360e092081\"}}}', 1, '0.00000', 1),
(238, 7, 'sige.jean@orange.fr', '+33670221747', 3, '2019-12-16 14:30:01', '{\"@attributes\":{\"batchid\":\"fcabdbcc-06b2-10c6-0536-12360e099081\"},\"messageheader\":{\"@attributes\":{\"id\":\"d0ae83d2-335e-1756-012c-12360e098001\"}}}', 1, '0.00000', 1),
(239, 7, 'estival.a@laposte.net', '+33607114372', 3, '2019-12-16 14:30:02', '{\"@attributes\":{\"batchid\":\"d3650d2d-88ec-12b6-052d-12360e0a1881\"},\"messageheader\":{\"@attributes\":{\"id\":\"c5742d20-43de-1b40-073b-12360e0a0d01\"}}}', 1, '0.00000', 1),
(240, 7, 'jacques.fabre11800@gmail.com', '+33786143638', 3, '2019-12-16 14:30:02', '{\"@attributes\":{\"batchid\":\"a1ee0d8c-3f15-1680-043d-12360e0b5481\"},\"messageheader\":{\"@attributes\":{\"id\":\"dd22fde8-9bb3-126c-0319-12360e0b4401\"}}}', 1, '0.00000', 1),
(241, 7, 'jo-gonzales@orange.fr', '+33674866962', 3, '2019-12-16 14:30:03', '{\"@attributes\":{\"batchid\":\"e588edca-77b2-1e39-08f8-12360e0c7301\"},\"messageheader\":{\"@attributes\":{\"id\":\"6a5b31d7-7a47-109c-01b1-12360e0c5c01\"}}}', 1, '0.00000', 1),
(242, 7, 'jean.turchetto@orange.fr', '+33685912744', 3, '2019-12-16 14:30:04', '{\"@attributes\":{\"batchid\":\"c7f59d50-5da2-1c04-090d-12360e0d5c81\"},\"messageheader\":{\"@attributes\":{\"id\":\"d51bbe0c-c06f-1245-0b46-12360e0d4a81\"}}}', 1, '0.00000', 1),
(243, 7, 'philippe.clergue@wanadoo.fr', '+33627173853', 3, '2019-12-16 14:30:04', '{\"@attributes\":{\"batchid\":\"f311a27e-7c0a-1307-05f1-12360e0e8d81\"},\"messageheader\":{\"@attributes\":{\"id\":\"27f8bc99-ce65-1aba-0900-12360e0e7801\"}}}', 1, '0.00000', 1),
(244, 7, 'josettesabata@gmail.com', '+33679792229', 3, '2019-12-16 14:30:05', '{\"@attributes\":{\"batchid\":\"c7ec7d3c-9b76-1fc2-0b79-12360e0f4a01\"},\"messageheader\":{\"@attributes\":{\"id\":\"b33cf31b-b189-1fd8-0e18-12360e0f3e81\"}}}', 1, '0.00000', 1),
(245, 7, 'arnaudalbarel@gmail.com', '+33683880972', 3, '2019-12-16 14:30:05', '{\"@attributes\":{\"batchid\":\"fbb865fc-0edd-1775-05e1-12360e101201\"},\"messageheader\":{\"@attributes\":{\"id\":\"03b28dbe-7453-1634-07b2-12360e100801\"}}}', 1, '0.00000', 1),
(246, 7, 'yolpiton@orange.fr', '+33661526132', 3, '2019-12-16 14:30:05', '{\"@attributes\":{\"batchid\":\"00060b75-100c-1fca-09fe-12360e107001\"},\"messageheader\":{\"@attributes\":{\"id\":\"b4943db4-8c59-18c9-0d71-12360e105f01\"}}}', 1, '0.00000', 1),
(247, 7, 'adiveze.denis@gmail.com', '+33677101624', 3, '2019-12-16 14:30:06', '{\"@attributes\":{\"batchid\":\"555a411b-e4f5-16bc-0f55-12360e120b81\"},\"messageheader\":{\"@attributes\":{\"id\":\"5b105584-c95f-1807-0283-12360e11ff01\"}}}', 1, '0.00000', 1),
(248, 7, 'galibertjeanlouis@gmail.com', '+33662738477', 3, '2019-12-16 14:30:06', '{\"@attributes\":{\"batchid\":\"0380cd8d-b354-19fc-0a64-12360e12b781\"},\"messageheader\":{\"@attributes\":{\"id\":\"cfee32dd-3c6a-15d2-04aa-12360e12b101\"}}}', 1, '0.00000', 1),
(249, 7, 'jf.juste@free.fr', '+33673035388', 3, '2019-12-16 14:30:06', '{\"@attributes\":{\"batchid\":\"45805ff8-eb56-167b-07f1-12360e11be01\"},\"messageheader\":{\"@attributes\":{\"id\":\"ec17154b-3238-13c2-0cea-12360e11b181\"}}}', 1, '0.00000', 1),
(250, 7, 'ph-phalip@orange.fr', '+33640896363', 3, '2019-12-16 14:30:06', '{\"@attributes\":{\"batchid\":\"da3d79b1-331b-1c1f-074e-12360e12c501\"},\"messageheader\":{\"@attributes\":{\"id\":\"1ea02cc0-c5db-1b40-0556-12360e12bc81\"}}}', 1, '0.00000', 1),
(251, 7, 'mairie.fontiesdaude@wanadoo.fr', '+33671014870', 3, '2019-12-16 14:30:06', '{\"@attributes\":{\"batchid\":\"2a9c5f68-c10d-1a05-0f22-12360e131d01\"},\"messageheader\":{\"@attributes\":{\"id\":\"f144ea3e-7efd-173f-01fb-12360e130d81\"}}}', 1, '0.00000', 1),
(252, 7, 'magro.audecentre@orange.fr', '+33687937035', 3, '2019-12-16 14:30:06', '{\"@attributes\":{\"batchid\":\"dd0c5f63-adaa-1aa6-0367-12360e136281\"},\"messageheader\":{\"@attributes\":{\"id\":\"d70492ba-86a2-1c74-0e13-12360e135901\"}}}', 1, '0.00000', 1),
(253, 7, 'max.amouroux@orange.fr', '+33617080402', 3, '2019-12-16 14:30:07', '{\"@attributes\":{\"batchid\":\"17756789-983a-162e-0804-12360e13b481\"},\"messageheader\":{\"@attributes\":{\"id\":\"17b11da9-75f9-18c6-0f73-12360e13a501\"}}}', 1, '0.00000', 1),
(254, 7, 'bernadettesire@gmail.com', '+33658851776', 3, '2019-12-16 14:30:07', '{\"@attributes\":{\"batchid\":\"e20befce-51fa-1bd1-0342-12360e142501\"},\"messageheader\":{\"@attributes\":{\"id\":\"6255c4a6-e482-15e7-04c0-12360e141601\"}}}', 1, '0.00000', 1),
(255, 7, 'ottocoassin@gmail.com', '+33609568240', 3, '2019-12-16 14:30:07', '{\"@attributes\":{\"batchid\":\"1c4c1a7f-9e8f-173a-0f40-12360e141501\"},\"messageheader\":{\"@attributes\":{\"id\":\"3faeea3b-f4b1-145b-04f4-12360e140a01\"}}}', 1, '0.00000', 1),
(256, 7, 'michel.branchereau@gmail.com', '+33674246177', 3, '2019-12-16 14:15:03', '{\"@attributes\":{\"batchid\":\"8492e00c-6dec-1d97-0885-1236072f7c01\"},\"messageheader\":{\"@attributes\":{\"id\":\"b162fd44-0781-1d16-00bc-1236072f7501\"}}}', 1, '0.00000', 1),
(257, 7, 'jp.pelix@wanadoo.fr', '+33679990720', 3, '2019-12-16 14:15:03', '{\"@attributes\":{\"batchid\":\"5dd0f3db-615c-1d9f-0ae7-1236072e9801\"},\"messageheader\":{\"@attributes\":{\"id\":\"8ba084ef-98ec-1c72-0400-1236072e9081\"}}}', 1, '0.00000', 1),
(258, 7, 'flo.cathary@hotmail.fr', '+33681454540', 3, '2019-12-16 14:15:03', '{\"@attributes\":{\"batchid\":\"43df4b12-5d8d-1af0-0036-1236072f8781\"},\"messageheader\":{\"@attributes\":{\"id\":\"ac6251f9-cb00-128f-069d-1236072f7d81\"}}}', 1, '0.00000', 1),
(259, 7, 'paul.ramoneda@mairie-palaja.fr', '+33685065381', 3, '2019-12-16 14:15:04', '{\"@attributes\":{\"batchid\":\"ff35bd26-5512-19a3-0685-1236072ffe01\"},\"messageheader\":{\"@attributes\":{\"id\":\"aa6270f2-b804-17fb-012b-1236072ff701\"}}}', 1, '0.00000', 1),
(260, 7, 'monier.denis@free.fr', '+33663329383', 3, '2019-12-16 14:15:04', '{\"@attributes\":{\"batchid\":\"f761c41e-4c61-10e6-0938-123607305401\"},\"messageheader\":{\"@attributes\":{\"id\":\"e4522cf2-527b-1164-07b3-123607304d01\"}}}', 1, '0.00000', 1),
(261, 7, 'philippe.maynadie1@orange.fr', '+33611415196', 3, '2019-12-16 14:15:04', '{\"@attributes\":{\"batchid\":\"e3fd3828-224e-1f59-01a9-12360730cc01\"},\"messageheader\":{\"@attributes\":{\"id\":\"f854970c-2e9b-1d34-0099-12360730b281\"}}}', 1, '0.00000', 1),
(262, 7, 'srd11@sfr.fr', '+33680037532', 3, '2019-12-16 14:15:04', '{\"@attributes\":{\"batchid\":\"b02947c3-9395-18f6-03c9-123607311f01\"},\"messageheader\":{\"@attributes\":{\"id\":\"a178ca2a-fb86-1757-0aef-123607311901\"}}}', 1, '0.00000', 1),
(263, 7, 'g.n.peyrot@orange.fr', '+33624925406', 3, '2019-12-16 14:15:04', '{\"@attributes\":{\"batchid\":\"6d3e6e17-6f33-19ef-00ef-12360730c781\"},\"messageheader\":{\"@attributes\":{\"id\":\"a1f95751-9d12-1513-0f31-12360730b581\"}}}', 1, '0.00000', 1),
(264, 7, 'aline.vaujany@orange.fr', '+33689486469', 3, '2019-12-16 14:15:04', '{\"@attributes\":{\"batchid\":\"d2b0e4c0-a453-16bb-0298-123607311081\"},\"messageheader\":{\"@attributes\":{\"id\":\"67966ece-5b56-11f2-04e5-123607310a81\"}}}', 1, '0.00000', 1),
(265, 7, 'jean-claude.pujol8@orange.fr', '+33676851553', 3, '2019-12-16 14:15:05', '{\"@attributes\":{\"batchid\":\"95dedba6-fc78-1a38-023b-123607320881\"},\"messageheader\":{\"@attributes\":{\"id\":\"dfb41904-a719-175e-029a-12360731fc01\"}}}', 1, '0.00000', 1),
(266, 7, 'r.jouve@orange.fr', '+33658488370', 3, '2019-12-16 14:15:05', '{\"@attributes\":{\"batchid\":\"4fbf8b0c-5607-1037-0caa-123607324f01\"},\"messageheader\":{\"@attributes\":{\"id\":\"4cae2d01-b294-1927-00d2-123607324881\"}}}', 1, '0.00000', 1),
(267, 7, 'raphael.piedra@neuf.fr', '+33670006750', 3, '2019-12-16 14:15:05', '{\"@attributes\":{\"batchid\":\"4ee79f5b-ccb4-15f9-07f8-123607320581\"},\"messageheader\":{\"@attributes\":{\"id\":\"80397620-b0da-13f1-0eda-123607320001\"}}}', 1, '0.00000', 1),
(268, 7, 'paul.malric@club-internet.fr', '+33688156063', 3, '2019-12-16 14:15:05', '{\"@attributes\":{\"batchid\":\"7b354916-5a83-1354-081a-12360732f101\"},\"messageheader\":{\"@attributes\":{\"id\":\"41525e6b-00ad-10d7-0681-12360732ea81\"}}}', 1, '0.00000', 1),
(269, 7, 'chrislaineloze@yahoo.fr', '+33624308606', 3, '2019-12-16 14:15:05', '{\"@attributes\":{\"batchid\":\"58492941-4295-194a-0a8d-12360733f281\"},\"messageheader\":{\"@attributes\":{\"id\":\"2f240dc3-6d25-1086-0cb4-12360733e501\"}}}', 1, '0.00000', 1),
(270, 7, 'marc.rofes@hotmail.fr', '+33682630375', 3, '2019-12-16 14:15:06', '{\"@attributes\":{\"batchid\":\"5b266823-1601-1acc-0602-123607331501\"},\"messageheader\":{\"@attributes\":{\"id\":\"22c6201e-f241-1379-00c2-123607330d01\"}}}', 1, '0.00000', 1),
(271, 7, 'eveline.sanchez@orange.fr', '+33614721346', 3, '2019-12-16 14:15:06', '{\"@attributes\":{\"batchid\":\"175a4c03-0ec1-1b53-0e02-12360733fe01\"},\"messageheader\":{\"@attributes\":{\"id\":\"208fd3b2-85da-17c4-0469-12360733f481\"}}}', 1, '0.00000', 1),
(272, 7, 'amvillegly@wanadoo.fr', '+33681870948', 3, '2019-12-16 14:15:06', '{\"@attributes\":{\"batchid\":\"87ea4516-92f9-16bd-06c7-12360733ec81\"},\"messageheader\":{\"@attributes\":{\"id\":\"d71a42f4-255d-1ef0-0076-12360733e281\"}}}', 1, '0.00000', 1),
(273, 7, 'pierre.ceneda@gmail.com', '+33624485194', 3, '2019-12-16 14:15:06', '{\"@attributes\":{\"batchid\":\"f9cac6c2-65b6-138a-008e-12360734e501\"},\"messageheader\":{\"@attributes\":{\"id\":\"a1e3d750-b9e1-1287-0980-12360734d981\"}}}', 1, '0.00000', 1),
(274, 7, 'alain.vaissieres0887@orange.fr', '+33676323043', 3, '2019-12-16 14:15:06', '{\"@attributes\":{\"batchid\":\"d17aca31-a7a4-1d20-0ec0-123607354481\"},\"messageheader\":{\"@attributes\":{\"id\":\"02aad299-d6b2-188b-0f20-123607353001\"}}}', 1, '0.00000', 1),
(275, 7, 'néant mail du 30 janvier', '+33609992094', 3, '2019-12-16 14:15:06', '{\"@attributes\":{\"batchid\":\"bd97e281-9f33-15bb-08fb-123607358181\"},\"messageheader\":{\"@attributes\":{\"id\":\"3c52afbf-5fd0-12e8-0e03-123607357a01\"}}}', 1, '0.00000', 1),
(276, 7, 'maireadjointrieuxminervois@orange.fr', '+33630411769', 3, '2019-12-16 14:15:07', '{\"@attributes\":{\"batchid\":\"b101016c-e6bd-14ea-0ba7-123607355601\"},\"messageheader\":{\"@attributes\":{\"id\":\"cfcae781-75b0-1dc5-03d7-123607354681\"}}}', 1, '0.00000', 1),
(278, 7, 'commune-de-les-ilhes@orange.fr', '0468770822', 3, '2019-12-16 14:15:07', '{\"@attributes\":{\"batchid\":\"38b4a44a-4314-116d-0906-123607364e81\"},\"messageheader\":{\"@attributes\":{\"id\":\"3a91e4c1-915a-12d5-0b79-123607364781\"}}}', 1, '0.00000', 1),
(279, 7, 'gaec.lesescoussols@orange.fr', '+33683716431', 3, '2019-12-16 14:15:07', '{\"@attributes\":{\"batchid\":\"b5c72221-f057-1f5c-045b-123607369901\"},\"messageheader\":{\"@attributes\":{\"id\":\"e1070c25-c7fa-1c05-06ff-123607369001\"}}}', 1, '0.00000', 1),
(280, 7, 'huc.marie-therese@orange.fr', '+33633794845', 3, '2019-12-16 14:15:07', '{\"@attributes\":{\"batchid\":\"b667cba4-0710-17a4-0a59-12360736f581\"},\"messageheader\":{\"@attributes\":{\"id\":\"6ebb8870-3dfd-12ce-024e-12360736f001\"}}}', 1, '0.00000', 1),
(281, 7, 'claude.bonnet16@wanadoo.fr', '+33675190986', 3, '2019-12-16 14:15:07', '{\"@attributes\":{\"batchid\":\"4510c6bf-de1b-1e35-00ca-123607369a81\"},\"messageheader\":{\"@attributes\":{\"id\":\"c33db84e-1082-1ece-0b62-123607369181\"}}}', 1, '0.00000', 1),
(282, 7, 'batlle4950@live.fr', '+33621475573', 3, '2019-12-16 14:20:02', '{\"@attributes\":{\"batchid\":\"666026fc-7872-1805-0909-123609768901\"},\"messageheader\":{\"@attributes\":{\"id\":\"a09a45c5-cfa8-10da-0143-123609768101\"}}}', 1, '0.00000', 1),
(283, 7, 'germar.fernandez@orange.fr', '+33626748346', 3, '2019-12-16 14:20:02', '{\"@attributes\":{\"batchid\":\"b7ecf82f-2dd9-1a7e-09ad-12360976d501\"},\"messageheader\":{\"@attributes\":{\"id\":\"f02ae678-2628-1cf6-0451-12360976cf01\"}}}', 1, '0.00000', 1),
(284, 7, 'laetitia.icher@orange.fr', '+33614188341', 3, '2019-12-16 14:20:02', '{\"@attributes\":{\"batchid\":\"736e11a7-ca44-1f5f-0a8a-123609773c01\"},\"messageheader\":{\"@attributes\":{\"id\":\"ea01318c-b9ec-1066-0f9f-123609773481\"}}}', 1, '0.00000', 1),
(285, 7, 'bels.francis@wanadoo.fr', '+33680410327', 3, '2019-12-16 14:20:02', '{\"@attributes\":{\"batchid\":\"8921caf7-d418-1d98-05d5-12360976ea81\"},\"messageheader\":{\"@attributes\":{\"id\":\"3122f642-d5b3-1c21-0338-12360976e201\"}}}', 1, '0.00000', 1),
(286, 7, 'stephane.barthas@gmail.com', '+33677921967', 3, '2019-12-16 14:20:03', '{\"@attributes\":{\"batchid\":\"fb4be4f6-96cd-1aee-0749-123609773201\"},\"messageheader\":{\"@attributes\":{\"id\":\"1332cdee-6322-137a-07e6-123609772d01\"}}}', 1, '0.00000', 1),
(287, 7, 'jeanclaude.christiane@wanadoo.fr', '+33676303285', 3, '2019-12-16 14:20:03', '{\"@attributes\":{\"batchid\":\"6983ae65-b7a4-13a1-0ba6-123609782b81\"},\"messageheader\":{\"@attributes\":{\"id\":\"d53adf13-b1c1-1566-0c6b-123609782501\"}}}', 1, '0.00000', 1),
(288, 7, 'crosregis@orange.fr', '+33662883864', 3, '2019-12-16 14:20:03', '{\"@attributes\":{\"batchid\":\"4fab669a-95e7-176c-02a7-123609788201\"},\"messageheader\":{\"@attributes\":{\"id\":\"71e9a777-b5db-1a8a-067b-123609787b01\"}}}', 1, '0.00000', 1),
(289, 7, 'guychiffre@free.fr', '+33627594156', 3, '2019-12-16 14:20:03', '{\"@attributes\":{\"batchid\":\"ad930a7e-4d2a-1bef-0d9d-12360978cb81\"},\"messageheader\":{\"@attributes\":{\"id\":\"a04416f1-0497-1ac0-0a79-12360978c501\"}}}', 1, '0.00000', 1),
(290, 7, 'jeromemarechalferrant@sfr.fr', '+33622986996', 3, '2019-12-16 14:20:03', '{\"@attributes\":{\"batchid\":\"a198cd3d-05b2-1dac-0978-12360979e681\"},\"messageheader\":{\"@attributes\":{\"id\":\"aa2d72f4-da12-1466-04fb-12360979dd81\"}}}', 1, '0.00000', 1),
(291, 7, 'guycaly@sfr.fr', '+33673503271', 3, '2019-12-16 14:20:03', '{\"@attributes\":{\"batchid\":\"cff25c74-4101-1be2-0f50-123609791e01\"},\"messageheader\":{\"@attributes\":{\"id\":\"8bd1aa9a-afe0-1ff7-0609-123609791201\"}}}', 1, '0.00000', 1),
(292, 7, 'jacques.augustin@wanadoo.fr', '+33608523474', 3, '2019-12-16 14:20:04', '{\"@attributes\":{\"batchid\":\"f353306e-6244-1a04-035a-1236097a0681\"},\"messageheader\":{\"@attributes\":{\"id\":\"b995b875-8ab6-1745-0e46-12360979f981\"}}}', 1, '0.00000', 1),
(293, 7, 'pttjc@aol.com', '+33612776480', 3, '2019-12-16 14:20:04', '{\"@attributes\":{\"batchid\":\"b1561ff7-b716-1b45-0b1d-1236097a6c81\"},\"messageheader\":{\"@attributes\":{\"id\":\"4451a7a7-d1ad-1085-0b42-1236097a6501\"}}}', 1, '0.00000', 1),
(295, 7, 'mairie.roubia@wanadoo.fr', '+33687019253', 3, '2019-12-16 14:20:04', '{\"@attributes\":{\"batchid\":\"5c56bbad-39a1-1c0f-0bcf-1236097ab001\"},\"messageheader\":{\"@attributes\":{\"id\":\"2faafa9c-5176-1e6d-0ee8-1236097aa681\"}}}', 1, '0.00000', 1),
(296, 7, 'mairie.argens.garcia@orange.fr', '+33663006284', 3, '2019-12-16 14:20:04', '{\"@attributes\":{\"batchid\":\"378f254c-6f84-1c3b-077a-1236097b1881\"},\"messageheader\":{\"@attributes\":{\"id\":\"e8a189c1-f2d5-1f84-057c-1236097b0881\"}}}', 1, '0.00000', 1),
(297, 7, 'ar.alrang@wanadoo.fr', '+33615337040', 3, '2019-12-16 14:20:04', '{\"@attributes\":{\"batchid\":\"46595ffb-8223-1e47-0bcd-1236097b9a81\"},\"messageheader\":{\"@attributes\":{\"id\":\"1854aa46-0975-1f8e-0a5d-1236097b9501\"}}}', 1, '0.00000', 1),
(298, 7, 'emile.delpy@orange.fr', '+33633123581', 3, '2019-12-16 14:20:05', '{\"@attributes\":{\"batchid\":\"283b9b04-2e1f-1980-09ef-1236097bd501\"},\"messageheader\":{\"@attributes\":{\"id\":\"6af49849-aaa1-1ae5-0a29-1236097bd001\"}}}', 1, '0.00000', 1),
(299, 7, 'mairie.agel@wanadoo.fr', '+33673258093', 3, '2019-12-16 14:20:05', '{\"@attributes\":{\"batchid\":\"05f066a3-7287-1227-030e-1236097ccf81\"},\"messageheader\":{\"@attributes\":{\"id\":\"f6f03286-084f-1eed-052b-1236097cc401\"}}}', 1, '0.00000', 1),
(300, 7, 'commune.aiguesvives-herault@orange.fr', '+33607990452', 3, '2019-12-16 14:20:05', '{\"@attributes\":{\"batchid\":\"7fea1f00-9c01-1ba4-0788-1236097cc981\"},\"messageheader\":{\"@attributes\":{\"id\":\"2192d7eb-26ea-18c0-0170-1236097cc381\"}}}', 1, '0.00000', 1),
(301, 7, 'mairie.boisset@gmail.com', '+33607727231', 3, '2019-12-16 14:20:05', '{\"@attributes\":{\"batchid\":\"7f247881-1051-1824-0555-1236097d2001\"},\"messageheader\":{\"@attributes\":{\"id\":\"662d873d-3d7f-19a5-09ec-1236097d1901\"}}}', 1, '0.00000', 1),
(302, 7, 'mairiedecesseras@wanadoo.fr', '+33664091939', 3, '2019-12-16 14:20:06', '{\"@attributes\":{\"batchid\":\"74fbeae1-1be9-15f8-0c8e-1236097e3001\"},\"messageheader\":{\"@attributes\":{\"id\":\"b9e4befa-e7b3-1a04-031e-1236097e1d01\"}}}', 1, '0.00000', 1),
(303, 7, 'mairiedelaliviniere@wanadoo.fr', '+33687402721', 3, '2019-12-16 14:20:06', '{\"@attributes\":{\"batchid\":\"6405adea-28a1-10d2-0c25-1236097e1801\"},\"messageheader\":{\"@attributes\":{\"id\":\"92e3a08d-c669-1878-09bf-1236097e1201\"}}}', 1, '0.00000', 1),
(304, 7, 'mairie.oupia@wanadoo.fr', '+33640308581', 3, '2019-12-16 14:20:06', '{\"@attributes\":{\"batchid\":\"7edcc231-1eb6-1bf4-0866-1236097f0a01\"},\"messageheader\":{\"@attributes\":{\"id\":\"50bed26f-bc4a-10ef-0aec-1236097f0381\"}}}', 1, '0.00000', 1),
(305, 7, 'mairie-de-pardailhan@wanadoo.fr', '+33643191931', 3, '2019-12-16 14:20:06', '{\"@attributes\":{\"batchid\":\"3b9d0307-9f90-1745-0005-1236097ec801\"},\"messageheader\":{\"@attributes\":{\"id\":\"c0c30237-a07d-12f4-0e10-1236097ec181\"}}}', 1, '0.00000', 1),
(306, 7, 'mairie-sjm@orange.fr', '+33630567220', 3, '2019-12-16 14:20:06', '{\"@attributes\":{\"batchid\":\"104a891e-4bd8-1019-06e3-1236097e6c01\"},\"messageheader\":{\"@attributes\":{\"id\":\"6a0d28aa-2297-12ba-0978-1236097e6601\"}}}', 1, '0.00000', 1),
(307, 7, 'mairiedevelieux@laposte.net', '+33611798281', 3, '2019-12-16 14:20:06', '{\"@attributes\":{\"batchid\":\"f7ddd9c8-e889-1ab0-0e2a-123609802701\"},\"messageheader\":{\"@attributes\":{\"id\":\"fbb19b2c-f00c-1c72-0dc6-123609801981\"}}}', 1, '0.00000', 1),
(308, 7, 'fraisse.yves602@orange.fr', '+33677180248', 3, '2019-12-16 14:25:01', '{\"@attributes\":{\"batchid\":\"1bc34e68-5bde-199f-01e8-12360bbe8a81\"},\"messageheader\":{\"@attributes\":{\"id\":\"6a47e6cc-f8b0-1f0d-0da7-12360bbe7e01\"}}}', 1, '0.00000', 1),
(309, 7, 'E-mail invalide 4', '+33768283171', 3, '2019-12-16 14:25:01', '{\"@attributes\":{\"batchid\":\"cc91b2e2-908a-1eae-07ac-12360bbf0581\"},\"messageheader\":{\"@attributes\":{\"id\":\"6b043c1d-6551-1c1d-0db0-12360bbef881\"}}}', 1, '0.00000', 1),
(310, 7, 'jpierre.tourret1949@gmail.com', '+33688791923', 3, '2019-12-16 14:25:01', '{\"@attributes\":{\"batchid\":\"00e90885-e7f9-1d3f-0c8c-12360bbfac81\"},\"messageheader\":{\"@attributes\":{\"id\":\"7c540762-2637-1cc9-0b0c-12360bbf9e81\"}}}', 1, '0.00000', 1),
(311, 7, 'harmoniegonzalez@gmail.com', '+33614666566', 3, '2019-12-16 14:25:02', '{\"@attributes\":{\"batchid\":\"447642a4-973f-1323-0316-12360bbf9201\"},\"messageheader\":{\"@attributes\":{\"id\":\"3f54076f-c908-1a9f-0c98-12360bbf8c01\"}}}', 1, '0.00000', 1),
(312, 7, 'jeanpierrepastre45@orange.fr', '+33677149339', 3, '2019-12-16 14:25:02', '{\"@attributes\":{\"batchid\":\"5b8977c6-cd7a-1b16-0655-12360bc12f81\"},\"messageheader\":{\"@attributes\":{\"id\":\"f4e62eec-7968-193f-0ef5-12360bc12801\"}}}', 1, '0.00000', 1),
(313, 7, 'piva.daniel.enzo@gmail.com', '+33608896941', 3, '2019-12-16 14:25:02', '{\"@attributes\":{\"batchid\":\"ef2607bf-05b4-18a5-0e4d-12360bc03781\"},\"messageheader\":{\"@attributes\":{\"id\":\"15f653d6-c552-14cd-0d4c-12360bc02f01\"}}}', 1, '0.00000', 1),
(314, 7, 'micheltailhades@orange.fr', '+33607148964', 3, '2019-12-16 14:25:02', '{\"@attributes\":{\"batchid\":\"bae58821-cfde-142b-03e1-12360bc08e01\"},\"messageheader\":{\"@attributes\":{\"id\":\"61fc2143-a831-108d-0090-12360bc08581\"}}}', 1, '0.00000', 1),
(315, 7, 'renemiralles34@gmail.com', '+33688173047', 3, '2019-12-16 14:25:02', '{\"@attributes\":{\"batchid\":\"a58aa856-ec41-1f45-028a-12360bc18481\"},\"messageheader\":{\"@attributes\":{\"id\":\"dc85137c-e4bd-12ee-04bb-12360bc17f01\"}}}', 1, '0.00000', 1),
(316, 7, 'ams1.olonzac@wanadoo.fr', '+33631377443', 3, '2019-12-16 14:25:03', '{\"@attributes\":{\"batchid\":\"35135687-abb3-13df-0468-12360bc1e001\"},\"messageheader\":{\"@attributes\":{\"id\":\"3be1b6f0-c594-14ed-0067-12360bc1d501\"}}}', 1, '0.00000', 1),
(317, 7, 'alainmouly34@gmail.com', '+33680023154', 3, '2019-12-16 14:25:03', '{\"@attributes\":{\"batchid\":\"5365a60b-5aa6-17d1-0677-12360bc1a301\"},\"messageheader\":{\"@attributes\":{\"id\":\"7d599560-d940-1c52-0ef9-12360bc19401\"}}}', 1, '0.00000', 1),
(318, 7, 'sebastien.olivares@hotmail.fr', '+33622324432', 3, '2019-12-16 14:25:03', '{\"@attributes\":{\"batchid\":\"bafc56f6-601a-1768-091a-12360bc2d601\"},\"messageheader\":{\"@attributes\":{\"id\":\"e40acebe-6c8e-140e-07a8-12360bc2d001\"}}}', 1, '0.00000', 1),
(386, 8, 'didierlaure.mairie@gmail.com', '+33603105762', 3, '2019-12-16 15:00:02', '{\"@attributes\":{\"batchid\":\"229e7f53-b55d-162c-0b62-12361bc63501\"},\"messageheader\":{\"@attributes\":{\"id\":\"7d064ab1-466b-1208-0bd0-12361bc61881\"}}}', 1, '0.00000', 1),
(387, 8, 'alain.fabre11120@gmail.com', '+33784563678', 3, '2019-12-16 15:00:02', '{\"@attributes\":{\"batchid\":\"5b6b71c4-e668-17a6-04ca-12361bc54e01\"},\"messageheader\":{\"@attributes\":{\"id\":\"5022d9a6-4d7d-12e2-0d91-12361bc54201\"}}}', 1, '0.00000', 1),
(388, 8, 'schivardi.gerard@orange.fr', '+33640154053', 3, '2019-12-16 15:00:02', '{\"@attributes\":{\"batchid\":\"3ef93450-e18c-1208-044d-12361bc68201\"},\"messageheader\":{\"@attributes\":{\"id\":\"696e0041-b768-1914-0bc4-12361bc67701\"}}}', 1, '0.00000', 1),
(389, 8, 'bernard-les-vignes@orange.fr', '+33632925787', 3, '2019-12-16 15:00:02', '{\"@attributes\":{\"batchid\":\"a27d8988-a68f-1355-0fde-12361bc6cc81\"},\"messageheader\":{\"@attributes\":{\"id\":\"aae3ba72-cd0f-1cc4-0b01-12361bc6bd01\"}}}', 1, '0.00000', 1),
(390, 8, 'g.dauzat@yahoo.fr', '+33685725347', 3, '2019-12-16 15:00:03', '{\"@attributes\":{\"batchid\":\"b50f7a94-8c59-1aac-0251-12361bc7be01\"},\"messageheader\":{\"@attributes\":{\"id\":\"2d3eac6d-b880-1e12-0e40-12361bc7b601\"}}}', 1, '0.00000', 1),
(391, 8, 'hubert.bou@wanadoo.fr', '+33673391641', 3, '2019-12-16 15:00:03', '{\"@attributes\":{\"batchid\":\"c08d8fa5-cdd3-1287-0021-12361bc74c81\"},\"messageheader\":{\"@attributes\":{\"id\":\"bf0d2268-89d6-1f15-0f1d-12361bc74381\"}}}', 1, '0.00000', 1),
(392, 8, 'michel.jammes0171@orange.fr', '+33633846378', 3, '2019-12-16 15:00:04', '{\"@attributes\":{\"batchid\":\"d1a5c38c-9e33-19e1-0e1b-12361bc8ef01\"},\"messageheader\":{\"@attributes\":{\"id\":\"5a82bead-e707-174c-01e6-12361bc8e381\"}}}', 1, '0.00000', 1),
(393, 8, 'gabriel.laso@wanadoo.fr', '+33688798098', 3, '2019-12-16 15:00:04', '{\"@attributes\":{\"batchid\":\"081e810f-44c5-121a-0a5a-12361bc9e781\"},\"messageheader\":{\"@attributes\":{\"id\":\"4970e26a-a976-19d8-0576-12361bc9e081\"}}}', 1, '0.00000', 1),
(394, 8, 'E-mail invalide 3', '+33645178756', 3, '2019-12-16 15:00:04', '{\"@attributes\":{\"batchid\":\"b68bcefe-47a4-1c38-08fd-12361bc98101\"},\"messageheader\":{\"@attributes\":{\"id\":\"cb7717e8-1c76-13d6-092e-12361bc96f81\"}}}', 1, '0.00000', 1),
(396, 8, 'mairie-de-citou@wanadoo.fr', '+33685273012', 3, '2019-12-16 15:00:04', '{\"@attributes\":{\"batchid\":\"999c1fca-87eb-1cc3-01ac-12361bca9a01\"},\"messageheader\":{\"@attributes\":{\"id\":\"effda494-9131-1692-00c2-12361bca9401\"}}}', 1, '0.00000', 1),
(397, 8, 'mairie-aiguesvives@wanadoo.fr', '+33683283842', 3, '2019-12-16 15:00:05', '{\"@attributes\":{\"batchid\":\"c38b3bd6-64be-117f-067e-12361bcbc001\"},\"messageheader\":{\"@attributes\":{\"id\":\"f7e56c86-b390-1b97-0faa-12361bcbb181\"}}}', 1, '0.00000', 1),
(398, 8, 'limousis@wanadoo.fr', '+33684844034', 3, '2019-12-16 15:00:05', '{\"@attributes\":{\"batchid\":\"372717d5-25c9-1a37-0215-12361bccbc01\"},\"messageheader\":{\"@attributes\":{\"id\":\"6209dd6c-1437-13b3-0608-12361bccb581\"}}}', 1, '0.00000', 1),
(399, 8, 'mairie-de-berriac@wanadoo.fr', '+33674439753', 3, '2019-12-16 15:00:05', '{\"@attributes\":{\"batchid\":\"b1031acd-1b4d-1dae-09c6-12361bcd1501\"},\"messageheader\":{\"@attributes\":{\"id\":\"c1cbd0a1-ccfd-13a7-07e0-12361bcd0e81\"}}}', 1, '0.00000', 1),
(400, 8, 'pradellesenval@wanadoo.fr', '+33689391954', 3, '2019-12-16 15:00:06', '{\"@attributes\":{\"batchid\":\"d90bbe08-9c7b-1226-012e-12361bcd6c01\"},\"messageheader\":{\"@attributes\":{\"id\":\"184e9ce7-9c13-1bd5-0f8e-12361bcd6501\"}}}', 1, '0.00000', 1),
(401, 8, 'm.e.loubet@wanadoo.fr', '+33672505490', 3, '2019-12-16 15:00:06', '{\"@attributes\":{\"batchid\":\"4306a553-396a-14e8-0b28-12361bcd1881\"},\"messageheader\":{\"@attributes\":{\"id\":\"952cca32-55e4-1c54-08c5-12361bcd0c81\"}}}', 1, '0.00000', 1),
(402, 8, 'sige.jean@orange.fr', '+33670221747', 3, '2019-12-16 15:00:06', '{\"@attributes\":{\"batchid\":\"a9e25b9c-ad90-1e13-01e3-12361bcf1e81\"},\"messageheader\":{\"@attributes\":{\"id\":\"6416b395-f19e-17f9-02a0-12361bcf1001\"}}}', 1, '0.00000', 1),
(403, 8, 'estival.a@laposte.net', '+33607114372', 3, '2019-12-16 15:00:06', '{\"@attributes\":{\"batchid\":\"d4a27e02-89cf-18d7-0224-12361bced201\"},\"messageheader\":{\"@attributes\":{\"id\":\"c3b772aa-e7be-1a2e-00c2-12361bcecb01\"}}}', 1, '0.00000', 1),
(404, 8, 'jacques.fabre11800@gmail.com', '+33786143638', 3, '2019-12-16 15:00:06', '{\"@attributes\":{\"batchid\":\"ece292b5-ae1d-132e-06ba-12361bcf2981\"},\"messageheader\":{\"@attributes\":{\"id\":\"38c0153a-fe07-16c6-0251-12361bcf2281\"}}}', 1, '0.00000', 1),
(405, 8, 'jo-gonzales@orange.fr', '+33674866962', 3, '2019-12-16 15:05:01', '{\"@attributes\":{\"batchid\":\"758fe2e1-ea12-1731-0415-12361e0d9a81\"},\"messageheader\":{\"@attributes\":{\"id\":\"a1c56577-aecc-1111-0555-12361e0d9501\"}}}', 1, '0.00000', 1),
(406, 8, 'jean.turchetto@orange.fr', '+33685912744', 3, '2019-12-16 15:05:01', '{\"@attributes\":{\"batchid\":\"002bb7cf-fa62-1f3e-079b-12361e0eea01\"},\"messageheader\":{\"@attributes\":{\"id\":\"1bac2af7-77c9-10ba-027d-12361e0ede81\"}}}', 1, '0.00000', 1),
(407, 8, 'philippe.clergue@wanadoo.fr', '+33627173853', 3, '2019-12-16 15:05:02', '{\"@attributes\":{\"batchid\":\"e7180b8a-be6f-1d15-0694-12361e0f7081\"},\"messageheader\":{\"@attributes\":{\"id\":\"f0bf39d9-a18d-1639-03e1-12361e0f5a81\"}}}', 1, '0.00000', 1),
(408, 8, 'josettesabata@gmail.com', '+33679792229', 3, '2019-12-16 15:05:02', '{\"@attributes\":{\"batchid\":\"bda8b17d-9063-1bee-0412-12361e0f1681\"},\"messageheader\":{\"@attributes\":{\"id\":\"de18b616-00c0-158b-0ecb-12361e0f0201\"}}}', 1, '0.00000', 1),
(409, 8, 'arnaudalbarel@gmail.com', '+33683880972', 3, '2019-12-16 15:05:02', '{\"@attributes\":{\"batchid\":\"35a5e81b-32df-1552-0166-12361e111301\"},\"messageheader\":{\"@attributes\":{\"id\":\"784c1d13-dfc3-11a7-000c-12361e110481\"}}}', 1, '0.00000', 1),
(410, 8, 'yolpiton@orange.fr', '+33661526132', 3, '2019-12-16 15:05:02', '{\"@attributes\":{\"batchid\":\"3e9d1f8d-2235-1fe4-0265-12361e11a301\"},\"messageheader\":{\"@attributes\":{\"id\":\"3af47994-5f21-1cf7-02a0-12361e119401\"}}}', 1, '0.00000', 1),
(411, 8, 'adiveze.denis@gmail.com', '+33677101624', 3, '2019-12-16 15:05:03', '{\"@attributes\":{\"batchid\":\"7025ec6e-dc53-17f6-0ace-12361e11bb01\"},\"messageheader\":{\"@attributes\":{\"id\":\"82d6c3c5-39a0-1075-0c9e-12361e11b001\"}}}', 1, '0.00000', 1),
(412, 8, 'galibertjeanlouis@gmail.com', '+33662738477', 3, '2019-12-16 15:05:03', '{\"@attributes\":{\"batchid\":\"23840708-11e7-10e0-0c3d-12361e12cb01\"},\"messageheader\":{\"@attributes\":{\"id\":\"89a05cb0-c12d-1871-0ad4-12361e12bd01\"}}}', 1, '0.00000', 1),
(413, 8, 'jf.juste@free.fr', '+33673035388', 3, '2019-12-16 15:05:04', '{\"@attributes\":{\"batchid\":\"3b52e0ca-5703-1d47-0329-12361e139401\"},\"messageheader\":{\"@attributes\":{\"id\":\"a2ab1103-290f-1454-0a95-12361e138e01\"}}}', 1, '0.00000', 1),
(414, 8, 'ph-phalip@orange.fr', '+33640896363', 3, '2019-12-16 15:05:04', '{\"@attributes\":{\"batchid\":\"691f4253-707e-1244-0e9e-12361e131381\"},\"messageheader\":{\"@attributes\":{\"id\":\"079a470b-1ca0-1fcf-0933-12361e130e81\"}}}', 1, '0.00000', 1),
(415, 8, 'mairie.fontiesdaude@wanadoo.fr', '+33671014870', 3, '2019-12-16 15:05:04', '{\"@attributes\":{\"batchid\":\"e1840ce7-7b7a-1fb0-0fa1-12361e143681\"},\"messageheader\":{\"@attributes\":{\"id\":\"c71248c7-310d-1060-07dc-12361e143081\"}}}', 1, '0.00000', 1),
(416, 8, 'magro.audecentre@orange.fr', '+33687937035', 3, '2019-12-16 15:05:05', '{\"@attributes\":{\"batchid\":\"f4549431-cbc8-1ea8-0201-12361e14af81\"},\"messageheader\":{\"@attributes\":{\"id\":\"84fb5f65-1130-1bbd-0ce0-12361e14a481\"}}}', 1, '0.00000', 1),
(417, 8, 'max.amouroux@orange.fr', '+33617080402', 3, '2019-12-16 15:05:05', '{\"@attributes\":{\"batchid\":\"93170aa2-513b-18c8-0a4e-12361e165601\"},\"messageheader\":{\"@attributes\":{\"id\":\"848fc088-d8db-10aa-05b3-12361e164d01\"}}}', 1, '0.00000', 1),
(418, 8, 'bernadettesire@gmail.com', '+33658851776', 3, '2019-12-16 15:05:05', '{\"@attributes\":{\"batchid\":\"530f534b-97f3-1c33-04ce-12361e152681\"},\"messageheader\":{\"@attributes\":{\"id\":\"85a9eaf8-2007-1ffe-0bee-12361e152081\"}}}', 1, '0.00000', 1),
(419, 8, 'ottocoassin@gmail.com', '+33609568240', 3, '2019-12-16 15:05:05', '{\"@attributes\":{\"batchid\":\"2fbf6042-2b14-1609-0178-12361e15a381\"},\"messageheader\":{\"@attributes\":{\"id\":\"442f4389-871c-1ae1-0f8b-12361e159501\"}}}', 1, '0.00000', 1),
(420, 8, 'michel.branchereau@gmail.com', '+33674246177', 3, '2019-12-16 15:05:05', '{\"@attributes\":{\"batchid\":\"1c63f71e-fcd7-112d-00f8-12361e16b701\"},\"messageheader\":{\"@attributes\":{\"id\":\"cb6811c7-3a5f-1e2d-047d-12361e16ae81\"}}}', 1, '0.00000', 1);
INSERT INTO `sms_campaigns_recipients` (`id`, `sms_campaign_id`, `name`, `tel`, `status`, `sended_at`, `api_return`, `api_attempt`, `cost`, `sms_count`) VALUES
(421, 8, 'jp.pelix@wanadoo.fr', '+33679990720', 3, '2019-12-16 15:05:06', '{\"@attributes\":{\"batchid\":\"0567402a-1118-1655-0da7-12361e175a81\"},\"messageheader\":{\"@attributes\":{\"id\":\"efd43ae6-628e-15d0-04f5-12361e175281\"}}}', 1, '0.00000', 1),
(422, 8, 'flo.cathary@hotmail.fr', '+33681454540', 3, '2019-12-16 15:05:06', '{\"@attributes\":{\"batchid\":\"ea50e257-c63a-1283-0ba7-12361e17b881\"},\"messageheader\":{\"@attributes\":{\"id\":\"d07e168b-39ed-1d9e-00a7-12361e17a601\"}}}', 1, '0.00000', 1),
(423, 8, 'paul.ramoneda@mairie-palaja.fr', '+33685065381', 3, '2019-12-16 15:05:06', '{\"@attributes\":{\"batchid\":\"81b162d7-f927-17e3-040f-12361e193881\"},\"messageheader\":{\"@attributes\":{\"id\":\"26495aa3-d176-1281-0335-12361e191d01\"}}}', 1, '0.00000', 1),
(424, 8, 'monier.denis@free.fr', '+33663329383', 3, '2019-12-16 15:05:07', '{\"@attributes\":{\"batchid\":\"d32df9cc-5484-1e84-06ba-12361e199901\"},\"messageheader\":{\"@attributes\":{\"id\":\"193f0515-14fc-10d9-064a-12361e198e01\"}}}', 1, '0.00000', 1),
(425, 8, 'philippe.maynadie1@orange.fr', '+33611415196', 3, '2019-12-16 15:05:07', '{\"@attributes\":{\"batchid\":\"05692d75-d9ec-1d78-0af5-12361e19f381\"},\"messageheader\":{\"@attributes\":{\"id\":\"344ad7ab-62ca-1c4e-0154-12361e19ec01\"}}}', 1, '0.00000', 1),
(426, 8, 'srd11@sfr.fr', '+33680037532', 3, '2019-12-16 15:05:08', '{\"@attributes\":{\"batchid\":\"13540221-9d69-1819-0b79-12361e1b2581\"},\"messageheader\":{\"@attributes\":{\"id\":\"db2a86ee-fca4-10d5-0c54-12361e1b1801\"}}}', 1, '0.00000', 1),
(427, 8, 'g.n.peyrot@orange.fr', '+33624925406', 3, '2019-12-16 15:05:08', '{\"@attributes\":{\"batchid\":\"aa0fde23-ed70-1f88-0922-12361e1ae581\"},\"messageheader\":{\"@attributes\":{\"id\":\"a01f835f-9b49-1993-0a33-12361e1ada81\"}}}', 1, '0.00000', 1),
(428, 8, 'aline.vaujany@orange.fr', '+33689486469', 3, '2019-12-16 15:05:08', '{\"@attributes\":{\"batchid\":\"9966dfae-809a-15fd-0625-12361e1c1781\"},\"messageheader\":{\"@attributes\":{\"id\":\"a9873a91-a7fe-104a-0d5c-12361e1c0b01\"}}}', 1, '0.00000', 1),
(429, 8, 'jean-claude.pujol8@orange.fr', '+33676851553', 3, '2019-12-16 15:05:08', '{\"@attributes\":{\"batchid\":\"8caa6c63-5a0f-1a0e-0c00-12361e1d7501\"},\"messageheader\":{\"@attributes\":{\"id\":\"92c17519-170b-1fa5-00d2-12361e1d6a81\"}}}', 1, '0.00000', 1),
(430, 8, 'r.jouve@orange.fr', '+33658488370', 3, '2019-12-16 15:10:01', '{\"@attributes\":{\"batchid\":\"a8fd2a42-7da7-15bb-0150-123620592c01\"},\"messageheader\":{\"@attributes\":{\"id\":\"e2eaabd1-bb76-1eef-046e-123620592101\"}}}', 1, '0.00000', 1),
(431, 8, 'raphael.piedra@neuf.fr', '+33670006750', 3, '2019-12-16 15:10:01', '{\"@attributes\":{\"batchid\":\"aa107cf2-8f53-15fc-0c61-123620593a81\"},\"messageheader\":{\"@attributes\":{\"id\":\"3938b895-061f-165d-0b44-123620593201\"}}}', 1, '0.00000', 1),
(432, 8, 'paul.malric@club-internet.fr', '+33688156063', 3, '2019-12-16 15:10:02', '{\"@attributes\":{\"batchid\":\"52831733-7775-198c-0778-123620598581\"},\"messageheader\":{\"@attributes\":{\"id\":\"29b48ed6-e994-1841-0d28-123620597e01\"}}}', 1, '0.00000', 1),
(433, 8, 'chrislaineloze@yahoo.fr', '+33624308606', 3, '2019-12-16 15:10:02', '{\"@attributes\":{\"batchid\":\"27bdfce4-1988-1bb7-0cfe-12362059d781\"},\"messageheader\":{\"@attributes\":{\"id\":\"1dff6022-d50f-10fc-09c5-12362059d201\"}}}', 1, '0.00000', 1),
(434, 8, 'marc.rofes@hotmail.fr', '+33682630375', 3, '2019-12-16 15:10:02', '{\"@attributes\":{\"batchid\":\"2b6d698f-77fb-1777-0fe2-1236205a2d81\"},\"messageheader\":{\"@attributes\":{\"id\":\"8a07df7f-c720-1ce5-0c5f-1236205a2681\"}}}', 1, '0.00000', 1),
(435, 8, 'eveline.sanchez@orange.fr', '+33614721346', 3, '2019-12-16 15:10:02', '{\"@attributes\":{\"batchid\":\"61eb3f2d-fac0-11b3-0074-1236205a7601\"},\"messageheader\":{\"@attributes\":{\"id\":\"8adf1db3-a982-10a9-0ebb-1236205a6f01\"}}}', 1, '0.00000', 1),
(436, 8, 'amvillegly@wanadoo.fr', '+33681870948', 3, '2019-12-16 15:10:03', '{\"@attributes\":{\"batchid\":\"20d531e2-ba6a-1969-0df2-1236205be581\"},\"messageheader\":{\"@attributes\":{\"id\":\"6666014f-cc69-1ae0-0f3b-1236205bdc81\"}}}', 1, '0.00000', 1),
(437, 8, 'pierre.ceneda@gmail.com', '+33624485194', 3, '2019-12-16 15:10:03', '{\"@attributes\":{\"batchid\":\"013ab372-956f-1a50-05c7-1236205ccc81\"},\"messageheader\":{\"@attributes\":{\"id\":\"d2f4686d-9e69-19ce-0b04-1236205cc481\"}}}', 1, '0.00000', 1),
(438, 8, 'alain.vaissieres0887@orange.fr', '+33676323043', 3, '2019-12-16 15:10:03', '{\"@attributes\":{\"batchid\":\"a912871f-926a-1531-0efa-1236205bd901\"},\"messageheader\":{\"@attributes\":{\"id\":\"53a6e4ea-3e75-1968-0513-1236205bcb81\"}}}', 1, '0.00000', 1),
(439, 8, 'néant mail du 30 janvier', '+33609992094', 3, '2019-12-16 15:10:04', '{\"@attributes\":{\"batchid\":\"ac5ea8bb-3b95-175d-09e3-1236205e0181\"},\"messageheader\":{\"@attributes\":{\"id\":\"501052e0-58f0-100b-00c6-1236205df681\"}}}', 1, '0.00000', 1),
(440, 8, 'maireadjointrieuxminervois@orange.fr', '+33630411769', 3, '2019-12-16 15:10:04', '{\"@attributes\":{\"batchid\":\"0607272b-bb31-1c71-0bfe-1236205dca01\"},\"messageheader\":{\"@attributes\":{\"id\":\"9b07b792-de2e-1cfc-0707-1236205dbf81\"}}}', 1, '0.00000', 1),
(442, 8, 'commune-de-les-ilhes@orange.fr', '0468770822', 3, '2019-12-16 15:10:04', '{\"@attributes\":{\"batchid\":\"0934175e-2c56-17d1-00cb-1236205ef101\"},\"messageheader\":{\"@attributes\":{\"id\":\"fddc1e2b-b0b3-1190-067a-1236205eea81\"}}}', 1, '0.00000', 1),
(443, 8, 'gaec.lesescoussols@orange.fr', '+33683716431', 3, '2019-12-16 15:10:04', '{\"@attributes\":{\"batchid\":\"2771cd8f-7ae2-1c2f-0084-1236205db981\"},\"messageheader\":{\"@attributes\":{\"id\":\"f568bf10-7a94-10fd-0207-1236205db401\"}}}', 1, '0.00000', 1),
(444, 8, 'huc.marie-therese@orange.fr', '+33633794845', 3, '2019-12-16 15:10:04', '{\"@attributes\":{\"batchid\":\"7163dc57-372f-1a3c-06cf-1236205f9701\"},\"messageheader\":{\"@attributes\":{\"id\":\"cf221649-2e5c-1a5d-0119-1236205f8e01\"}}}', 1, '0.00000', 1),
(445, 8, 'claude.bonnet16@wanadoo.fr', '+33675190986', 3, '2019-12-16 15:10:05', '{\"@attributes\":{\"batchid\":\"8992ce59-6793-1cfc-0496-1236205f3381\"},\"messageheader\":{\"@attributes\":{\"id\":\"3abc3322-c70e-1556-0e12-1236205f2c81\"}}}', 1, '0.00000', 1),
(446, 8, 'batlle4950@live.fr', '+33621475573', 3, '2019-12-16 15:10:05', '{\"@attributes\":{\"batchid\":\"2aff2d32-fc33-1d29-0b87-1236205f8981\"},\"messageheader\":{\"@attributes\":{\"id\":\"3ab42a68-0c40-1016-00f3-1236205f7881\"}}}', 1, '0.00000', 1),
(447, 8, 'germar.fernandez@orange.fr', '+33626748346', 3, '2019-12-16 15:10:05', '{\"@attributes\":{\"batchid\":\"9a5fba8c-58b5-19ae-0f9c-1236205fe801\"},\"messageheader\":{\"@attributes\":{\"id\":\"c97c878b-b68a-1b68-0b56-1236205fe001\"}}}', 1, '0.00000', 1),
(448, 8, 'laetitia.icher@orange.fr', '+33614188341', 3, '2019-12-16 15:10:05', '{\"@attributes\":{\"batchid\":\"27b0b906-53c2-16c6-00e6-123620605481\"},\"messageheader\":{\"@attributes\":{\"id\":\"6b5684b2-c1b6-18f7-00e0-123620604d01\"}}}', 1, '0.00000', 1),
(449, 8, 'bels.francis@wanadoo.fr', '+33680410327', 3, '2019-12-16 15:10:05', '{\"@attributes\":{\"batchid\":\"a1037f51-e2ec-17d6-09d9-12362060d081\"},\"messageheader\":{\"@attributes\":{\"id\":\"e227a7e9-2a97-1bad-0020-12362060c481\"}}}', 1, '0.00000', 1),
(450, 8, 'stephane.barthas@gmail.com', '+33677921967', 3, '2019-12-16 15:10:06', '{\"@attributes\":{\"batchid\":\"1be450e7-93ba-1fe8-0246-123620605801\"},\"messageheader\":{\"@attributes\":{\"id\":\"c65698e6-8fdf-1bcf-016d-123620604c81\"}}}', 1, '0.00000', 1),
(451, 8, 'jeanclaude.christiane@wanadoo.fr', '+33676303285', 3, '2019-12-16 15:10:06', '{\"@attributes\":{\"batchid\":\"5e82f09c-0193-1078-00d9-123620617f01\"},\"messageheader\":{\"@attributes\":{\"id\":\"ff35049f-c3fc-1cf8-0275-123620617801\"}}}', 1, '0.00000', 1),
(452, 8, 'crosregis@orange.fr', '+33662883864', 3, '2019-12-16 15:10:06', '{\"@attributes\":{\"batchid\":\"c8f46d2a-049b-1007-0f48-123620628481\"},\"messageheader\":{\"@attributes\":{\"id\":\"1518d3f9-493e-161a-0321-123620627e01\"}}}', 1, '0.00000', 1),
(453, 8, 'guychiffre@free.fr', '+33627594156', 3, '2019-12-16 15:10:06', '{\"@attributes\":{\"batchid\":\"34ed8b90-64dc-1a5a-03db-123620621281\"},\"messageheader\":{\"@attributes\":{\"id\":\"bec242f6-2652-1ff8-0bf2-123620620c01\"}}}', 1, '0.00000', 1),
(454, 8, 'jeromemarechalferrant@sfr.fr', '+33622986996', 3, '2019-12-16 15:10:06', '{\"@attributes\":{\"batchid\":\"36c7df74-8cfc-156a-0b31-12362061d581\"},\"messageheader\":{\"@attributes\":{\"id\":\"db8cdf68-3d66-170e-053f-12362061cf01\"}}}', 1, '0.00000', 1),
(455, 8, 'guycaly@sfr.fr', '+33673503271', 3, '2019-12-16 15:10:06', '{\"@attributes\":{\"batchid\":\"2480a6a3-cb2a-1b1e-073f-12362062d081\"},\"messageheader\":{\"@attributes\":{\"id\":\"87301b35-8c59-1ad4-0c9e-12362062c981\"}}}', 1, '0.00000', 1),
(456, 8, 'jacques.augustin@wanadoo.fr', '+33608523474', 3, '2019-12-16 15:15:01', '{\"@attributes\":{\"batchid\":\"15c68365-58f6-17da-0539-123622a30801\"},\"messageheader\":{\"@attributes\":{\"id\":\"5d57574c-dc73-1cc4-0ef6-123622a2fd01\"}}}', 1, '0.00000', 1),
(457, 8, 'pttjc@aol.com', '+33612776480', 3, '2019-12-16 15:15:01', '{\"@attributes\":{\"batchid\":\"c7270632-4bb7-133c-037e-123622a29e01\"},\"messageheader\":{\"@attributes\":{\"id\":\"e14ae9b6-d5b1-1f8d-0d2c-123622a29581\"}}}', 1, '0.00000', 1),
(459, 8, 'mairie.roubia@wanadoo.fr', '+33687019253', 3, '2019-12-16 15:15:04', '{\"@attributes\":{\"batchid\":\"a1237874-f287-1a16-01c6-123622a3d901\"},\"messageheader\":{\"@attributes\":{\"id\":\"ef8f00fd-3c3f-1133-0a05-123622a3d201\"}}}', 1, '0.00000', 1),
(460, 8, 'mairie.argens.garcia@orange.fr', '+33663006284', 3, '2019-12-16 15:15:04', '{\"@attributes\":{\"batchid\":\"f9aad565-9c91-1e17-045a-123622a77101\"},\"messageheader\":{\"@attributes\":{\"id\":\"77626405-5097-14a2-0a56-123622a76601\"}}}', 1, '0.00000', 1),
(461, 8, 'ar.alrang@wanadoo.fr', '+33615337040', 3, '2019-12-16 15:15:04', '{\"@attributes\":{\"batchid\":\"029cd564-a988-14c9-0917-123622a91581\"},\"messageheader\":{\"@attributes\":{\"id\":\"42ad221f-b75f-1591-095b-123622a90c01\"}}}', 1, '0.00000', 1),
(462, 8, 'emile.delpy@orange.fr', '+33633123581', 3, '2019-12-16 15:15:04', '{\"@attributes\":{\"batchid\":\"e89c106e-c436-1062-0fee-123622a8bd01\"},\"messageheader\":{\"@attributes\":{\"id\":\"3f3f4ae4-9ec3-1862-0fcc-123622a8b801\"}}}', 1, '0.00000', 1),
(463, 8, 'mairie.agel@wanadoo.fr', '+33673258093', 3, '2019-12-16 15:15:05', '{\"@attributes\":{\"batchid\":\"805512d3-b3c9-1439-056b-123622a90e01\"},\"messageheader\":{\"@attributes\":{\"id\":\"0aec8a92-a0d3-1879-041e-123622a90301\"}}}', 1, '0.00000', 1),
(464, 8, 'commune.aiguesvives-herault@orange.fr', '+33607990452', 3, '2019-12-16 15:15:05', '{\"@attributes\":{\"batchid\":\"52092639-e798-18ad-0e9b-123622aa4981\"},\"messageheader\":{\"@attributes\":{\"id\":\"5be0170e-73cf-17b2-0938-123622aa4101\"}}}', 1, '0.00000', 1),
(465, 8, 'mairie.boisset@gmail.com', '+33607727231', 3, '2019-12-16 15:15:05', '{\"@attributes\":{\"batchid\":\"540de4a6-217c-1a01-01d6-123622a91901\"},\"messageheader\":{\"@attributes\":{\"id\":\"5d6c85e1-3027-19e6-0555-123622a91101\"}}}', 1, '0.00000', 1),
(466, 8, 'mairiedecesseras@wanadoo.fr', '+33664091939', 3, '2019-12-16 15:15:05', '{\"@attributes\":{\"batchid\":\"aac271de-ab72-1e90-04ca-123622ab0c01\"},\"messageheader\":{\"@attributes\":{\"id\":\"d04c0bfb-e939-1bde-0c59-123622ab0501\"}}}', 1, '0.00000', 1),
(467, 8, 'mairiedelaliviniere@wanadoo.fr', '+33687402721', 3, '2019-12-16 15:15:05', '{\"@attributes\":{\"batchid\":\"51174e9f-706c-1231-0592-123622a9d681\"},\"messageheader\":{\"@attributes\":{\"id\":\"c62b4b51-f20e-1dbf-0d9b-123622a9cf81\"}}}', 1, '0.00000', 1),
(468, 8, 'mairie.oupia@wanadoo.fr', '+33640308581', 3, '2019-12-16 15:15:05', '{\"@attributes\":{\"batchid\":\"59f9b1e9-ec6f-1545-04ef-123622abab01\"},\"messageheader\":{\"@attributes\":{\"id\":\"5bc414bb-80bc-1e8d-0d46-123622aba481\"}}}', 1, '0.00000', 1),
(469, 8, 'mairie-de-pardailhan@wanadoo.fr', '+33643191931', 3, '2019-12-16 15:15:06', '{\"@attributes\":{\"batchid\":\"f72d0da3-472f-1858-0d3f-123622abfa81\"},\"messageheader\":{\"@attributes\":{\"id\":\"9c4715e9-754e-1e5f-0d49-123622abf301\"}}}', 1, '0.00000', 1),
(470, 8, 'mairie-sjm@orange.fr', '+33630567220', 3, '2019-12-16 15:15:06', '{\"@attributes\":{\"batchid\":\"bb3942f7-24d1-1f76-0837-123622ab8481\"},\"messageheader\":{\"@attributes\":{\"id\":\"d69a6da1-6278-1315-0720-123622ab7d81\"}}}', 1, '0.00000', 1),
(471, 8, 'mairiedevelieux@laposte.net', '+33611798281', 3, '2019-12-16 15:15:06', '{\"@attributes\":{\"batchid\":\"65d0eb4e-020f-1033-06ea-123622ab1f81\"},\"messageheader\":{\"@attributes\":{\"id\":\"05cf74d7-558f-1473-094a-123622ab1781\"}}}', 1, '0.00000', 1),
(472, 8, 'fraisse.yves602@orange.fr', '+33677180248', 3, '2019-12-16 15:15:06', '{\"@attributes\":{\"batchid\":\"765a25f5-19cb-188a-0913-123622ac5a81\"},\"messageheader\":{\"@attributes\":{\"id\":\"f3555835-6347-1ace-07a1-123622ac5401\"}}}', 1, '0.00000', 1),
(473, 8, 'E-mail invalide 4', '+33768283171', 3, '2019-12-16 15:15:06', '{\"@attributes\":{\"batchid\":\"a3d5b6f3-2960-1def-0a33-123622ad5d81\"},\"messageheader\":{\"@attributes\":{\"id\":\"b5eaad8f-9f5a-1db2-0ca1-123622ad5801\"}}}', 1, '0.00000', 1),
(474, 8, 'jpierre.tourret1949@gmail.com', '+33688791923', 3, '2019-12-16 15:15:06', '{\"@attributes\":{\"batchid\":\"38b5b281-645e-12f9-0e69-123622adaa01\"},\"messageheader\":{\"@attributes\":{\"id\":\"d8714fc5-d682-173f-01b0-123622ada101\"}}}', 1, '0.00000', 1),
(475, 8, 'harmoniegonzalez@gmail.com', '+33614666566', 3, '2019-12-16 15:15:07', '{\"@attributes\":{\"batchid\":\"7abb9f78-8cff-16a6-0a55-123622ad5481\"},\"messageheader\":{\"@attributes\":{\"id\":\"b1661b16-28f2-1d7e-077e-123622ad4c81\"}}}', 1, '0.00000', 1),
(476, 8, 'jeanpierrepastre45@orange.fr', '+33677149339', 3, '2019-12-16 15:15:07', '{\"@attributes\":{\"batchid\":\"38a86164-1c28-1381-06f4-123622adb081\"},\"messageheader\":{\"@attributes\":{\"id\":\"2b0d8900-4a6d-1138-06fa-123622ada981\"}}}', 1, '0.00000', 1),
(477, 8, 'piva.daniel.enzo@gmail.com', '+33608896941', 3, '2019-12-16 15:15:07', '{\"@attributes\":{\"batchid\":\"8723d445-1ace-1255-0c1a-123622ad2401\"},\"messageheader\":{\"@attributes\":{\"id\":\"cd56b4ab-e5de-1dc3-06da-123622ad1e01\"}}}', 1, '0.00000', 1),
(478, 8, 'micheltailhades@orange.fr', '+33607148964', 3, '2019-12-16 15:15:07', '{\"@attributes\":{\"batchid\":\"5f4a8e3b-db63-13ba-0ed9-123622ae3e81\"},\"messageheader\":{\"@attributes\":{\"id\":\"df086b88-25bd-16ad-09ab-123622ae3781\"}}}', 1, '0.00000', 1),
(479, 8, 'renemiralles34@gmail.com', '+33688173047', 3, '2019-12-16 15:15:07', '{\"@attributes\":{\"batchid\":\"abb1497c-543e-1004-0a8f-123622ae9781\"},\"messageheader\":{\"@attributes\":{\"id\":\"b90bbde0-70c1-1181-093e-123622ae8b81\"}}}', 1, '0.00000', 1),
(480, 8, 'ams1.olonzac@wanadoo.fr', '+33631377443', 3, '2019-12-16 15:15:07', '{\"@attributes\":{\"batchid\":\"be9a61d7-d0a5-1c4c-05b7-123622aecd01\"},\"messageheader\":{\"@attributes\":{\"id\":\"448cfb07-a5bc-105f-07ec-123622aec601\"}}}', 1, '0.00000', 1),
(481, 8, 'alainmouly34@gmail.com', '+33680023154', 3, '2019-12-16 15:15:08', '{\"@attributes\":{\"batchid\":\"a6b4eecc-897a-12e5-084c-123622ae6b81\"},\"messageheader\":{\"@attributes\":{\"id\":\"02d7aa2d-2ee0-1a2f-078f-123622ae6681\"}}}', 1, '0.00000', 1),
(482, 8, 'sebastien.olivares@hotmail.fr', '+33622324432', 3, '2019-12-16 15:20:01', '{\"@attributes\":{\"batchid\":\"67f702ac-bdac-18a3-033d-123624ec8b81\"},\"messageheader\":{\"@attributes\":{\"id\":\"ebd2bfa4-d20d-175d-0fef-123624ec8501\"}}}', 1, '0.00000', 1),
(484, 9, 'didierlaure.mairie@gmail.com', '+33603105762', 3, '2019-12-17 11:40:02', '{\"@attributes\":{\"batchid\":\"eec5f0e4-81b9-18ed-0dd4-123853673d01\"},\"messageheader\":{\"@attributes\":{\"id\":\"35f4fe77-e1eb-113d-0d7d-123853673701\"}}}', 1, '0.00000', 1),
(485, 9, 'schivardi.gerard@orange.fr', '+33640154053', 3, '2019-12-17 11:40:02', '{\"@attributes\":{\"batchid\":\"1ace2a24-444f-13cd-02c9-12385367aa01\"},\"messageheader\":{\"@attributes\":{\"id\":\"d4a18009-21cc-12f5-053c-12385367a301\"}}}', 1, '0.00000', 1),
(486, 9, 'bernard-les-vignes@orange.fr', '+33632925787', 3, '2019-12-17 11:40:03', '{\"@attributes\":{\"batchid\":\"4ea55485-6bbe-17b4-0813-12385368f901\"},\"messageheader\":{\"@attributes\":{\"id\":\"36e23c60-f633-128b-0107-12385368ee01\"}}}', 1, '0.00000', 1),
(487, 9, 'hubert.bou@wanadoo.fr', '+33673391641', 3, '2019-12-17 11:40:03', '{\"@attributes\":{\"batchid\":\"71ed86d4-c7ba-1a6c-0a2d-12385367ef81\"},\"messageheader\":{\"@attributes\":{\"id\":\"e35b75d0-44ea-16be-01fc-12385367e281\"}}}', 1, '0.00000', 1),
(488, 9, 'gabriel.laso@wanadoo.fr', '+33688798098', 3, '2019-12-17 11:40:03', '{\"@attributes\":{\"batchid\":\"8525bd46-6a36-1a35-096e-123853686081\"},\"messageheader\":{\"@attributes\":{\"id\":\"595be099-4a05-1016-038d-123853685481\"}}}', 1, '0.00000', 1),
(489, 9, 'mairie-de-citou@wanadoo.fr', '+33685273012', 3, '2019-12-17 11:40:03', '{\"@attributes\":{\"batchid\":\"f6c6fba8-f590-1414-0223-1238536a0701\"},\"messageheader\":{\"@attributes\":{\"id\":\"f60cd616-165a-1b1e-0f90-1238536a0201\"}}}', 1, '0.00000', 1),
(490, 9, 'mairie-aiguesvives@wanadoo.fr', '+33683283842', 3, '2019-12-17 11:40:03', '{\"@attributes\":{\"batchid\":\"12fa96d1-6623-1918-0e44-12385368f981\"},\"messageheader\":{\"@attributes\":{\"id\":\"36b311a6-8ed3-155c-0921-12385368f181\"}}}', 1, '0.00000', 1),
(491, 9, 'limousis@wanadoo.fr', '+33684844034', 3, '2019-12-17 11:40:03', '{\"@attributes\":{\"batchid\":\"bf713e02-e2af-129f-07c3-1238536aa501\"},\"messageheader\":{\"@attributes\":{\"id\":\"d605d512-0fe9-12ed-043a-1238536aa081\"}}}', 1, '0.00000', 1),
(492, 9, 'jo-gonzales@orange.fr', '+33674866962', 4, '2019-12-17 12:00:04', '{\"error\":\"TimeOut Of Service\"}', 5, NULL, NULL),
(493, 9, 'philippe.clergue@wanadoo.fr', '+33627173853', 4, '2019-12-17 12:00:04', '{\"error\":\"TimeOut Of Service\"}', 5, NULL, NULL),
(494, 9, 'yolpiton@orange.fr', '+33661526132', 4, '2019-12-17 12:00:05', '{\"error\":\"TimeOut Of Service\"}', 5, NULL, NULL),
(495, 9, 'jp.pelix@wanadoo.fr', '+33679990720', 4, '2019-12-17 12:00:05', '{\"error\":\"TimeOut Of Service\"}', 5, NULL, NULL),
(496, 9, 'flo.cathary@hotmail.fr', '+33681454540', 4, '2019-12-17 12:00:05', '{\"error\":\"TimeOut Of Service\"}', 5, NULL, NULL),
(497, 9, 'monier.denis@free.fr', '+33663329383', 4, '2019-12-17 12:00:06', '{\"error\":\"TimeOut Of Service\"}', 5, NULL, NULL),
(498, 9, 'r.jouve@orange.fr', '+33658488370', 4, '2019-12-17 12:00:06', '{\"error\":\"TimeOut Of Service\"}', 5, NULL, NULL),
(499, 9, 'paul.malric@club-internet.fr', '+33688156063', 4, '2019-12-17 12:00:06', '{\"error\":\"TimeOut Of Service\"}', 5, NULL, NULL),
(500, 9, 'PITIE', '+33609992094', 4, '2019-12-17 12:00:06', '{\"error\":\"TimeOut Of Service\"}', 5, NULL, NULL),
(501, 9, 'aurelie.combes@yahoo.fr', '+33611093503', 4, '2019-12-17 12:00:07', '{\"error\":\"TimeOut Of Service\"}', 5, NULL, NULL),
(502, 9, 'audrey.duton@hotmail.fr', '+33664358466', 4, '2019-12-17 12:05:01', '{\"error\":\"TimeOut Of Service\"}', 5, NULL, NULL),
(503, 9, 'houles.family@orange.fr', '+33669583349', 4, '2019-12-17 12:05:02', '{\"error\":\"TimeOut Of Service\"}', 5, NULL, NULL),
(504, 9, 'claude.bonnet16@wanadoo.fr', '+33675190986', 4, '2019-12-17 12:05:02', '{\"error\":\"TimeOut Of Service\"}', 5, NULL, NULL),
(505, 9, 'laetitia.icher@orange.fr', '+33614188341', 4, '2019-12-17 12:05:02', '{\"error\":\"TimeOut Of Service\"}', 5, NULL, NULL),
(506, 9, 'guycaly@sfr.fr', '+33673503271', 4, '2019-12-17 12:05:02', '{\"error\":\"TimeOut Of Service\"}', 5, NULL, NULL),
(507, 9, 'denis-lecoz@orange.fr', '+33610518022', 4, '2019-12-17 12:05:02', '{\"error\":\"TimeOut Of Service\"}', 5, NULL, NULL),
(508, 9, 'jacques.augustin@wanadoo.fr', '+33608523474', 4, '2019-12-17 12:05:03', '{\"error\":\"TimeOut Of Service\"}', 5, NULL, NULL),
(509, 9, 'mairie.roubia@wanadoo.fr', '+33687019253', 4, '2019-12-17 12:05:03', '{\"error\":\"TimeOut Of Service\"}', 5, NULL, NULL),
(510, 9, 'mairie.agel@wanadoo.fr', '+33673258093', 4, '2019-12-17 12:05:03', '{\"error\":\"TimeOut Of Service\"}', 5, NULL, NULL),
(511, 9, 'mairie.boisset@gmail.com', '+33607727231', 4, '2019-12-17 12:05:04', '{\"error\":\"TimeOut Of Service\"}', 5, NULL, NULL),
(512, 9, 'mairiedecesseras@wanadoo.fr', '+33664091939', 3, '2019-12-17 11:40:01', '{\"@attributes\":{\"batchid\":\"11f36387-6507-1923-0d7c-123853662f01\"},\"messageheader\":{\"@attributes\":{\"id\":\"2ac2742b-2391-190b-03ff-123853662481\"}}}', 1, '0.00000', 1),
(513, 9, 'mairie.oupia@wanadoo.fr', '+33640308581', 3, '2019-12-17 11:40:01', '{\"@attributes\":{\"batchid\":\"d307f892-69bc-1f5b-0222-123853669401\"},\"messageheader\":{\"@attributes\":{\"id\":\"56095762-2f06-1c46-0ece-123853668201\"}}}', 1, '0.00000', 1),
(514, 9, 'mairie-de-pardailhan@wanadoo.fr', '+33643191931', 3, '2019-12-17 11:40:01', '{\"@attributes\":{\"batchid\":\"c99d4d02-e692-17a4-0e41-12385365ee81\"},\"messageheader\":{\"@attributes\":{\"id\":\"4586aa50-5e6c-192d-09b7-12385365ea01\"}}}', 1, '0.00000', 1),
(515, 9, 'sebastien.olivares@hotmail.fr', '+33622324432', 3, '2019-12-17 11:40:02', '{\"@attributes\":{\"batchid\":\"c6a4b51a-c1f7-1733-0b34-123853672901\"},\"messageheader\":{\"@attributes\":{\"id\":\"bb644621-0936-1120-0eae-123853672381\"}}}', 1, '0.00000', 1),
(516, 9, 'mairie.de.sallelescabardes@wanadoo.fr', '+33629572724', 3, '2019-12-17 11:40:02', '{\"@attributes\":{\"batchid\":\"794c9a69-94d1-189e-0e26-123853665881\"},\"messageheader\":{\"@attributes\":{\"id\":\"b41c87cd-afc3-1908-0204-123853665381\"}}}', 1, '0.00000', 1),
(517, 9, 'DYE Alexandre', '+33768283171', 3, '2019-12-17 11:40:02', '{\"@attributes\":{\"batchid\":\"f41cd057-a59b-1c78-04ae-12385366d701\"},\"messageheader\":{\"@attributes\":{\"id\":\"0ee87a6a-0a67-1820-004d-12385366d101\"}}}', 1, '0.00000', 1),
(518, 9, 'TARDIEU GERARD', '+33645178756', 3, '2019-12-17 11:40:02', '{\"@attributes\":{\"batchid\":\"9f85d06d-f5a7-1be3-053a-123853680801\"},\"messageheader\":{\"@attributes\":{\"id\":\"3403960f-9303-1436-0a94-123853680201\"}}}', 1, '0.00000', 1),
(519, 10, 'didierlaure.mairie@gmail.com', '+33603105762', 3, '2020-02-17 12:05:02', '{\"@attributes\":{\"batchid\":\"ddde781e-9f69-1298-0dd2-12d803fb7281\"},\"messageheader\":{\"@attributes\":{\"id\":\"92d6c159-8189-1dcf-08f7-12d803fb6801\"}}}', 1, '0.00000', 1),
(520, 10, 'alain.fabre11120@gmail.com', '+33784563678', 3, '2020-02-17 12:05:02', '{\"@attributes\":{\"batchid\":\"026e944b-0422-196f-0340-12d803fc5c01\"},\"messageheader\":{\"@attributes\":{\"id\":\"c0f4353c-199e-1bbe-068a-12d803fc5601\"}}}', 1, '0.00000', 1),
(521, 10, 'schivardi.gerard@orange.fr', '+33640154053', 3, '2020-02-17 12:05:02', '{\"@attributes\":{\"batchid\":\"0a39da21-68cf-1e2a-0783-12d803fd0e01\"},\"messageheader\":{\"@attributes\":{\"id\":\"22b5a2fd-cc2f-116b-023f-12d803fd0581\"}}}', 1, '0.00000', 1),
(522, 10, 'bernard-les-vignes@orange.fr', '+33632925787', 3, '2020-02-17 12:05:02', '{\"@attributes\":{\"batchid\":\"06eff010-8ceb-1bee-017e-12d803fc5801\"},\"messageheader\":{\"@attributes\":{\"id\":\"3e2f9f74-cd05-1e03-0d21-12d803fc4f81\"}}}', 1, '0.00000', 1),
(523, 10, 'g.dauzat@yahoo.fr', '+33685725347', 3, '2020-02-17 12:05:02', '{\"@attributes\":{\"batchid\":\"8bbab9f1-a56b-12da-05b9-12d803fdb201\"},\"messageheader\":{\"@attributes\":{\"id\":\"c3836306-9968-1afa-0a2b-12d803fdaa81\"}}}', 1, '0.00000', 1),
(524, 10, 'hubert.bou@wanadoo.fr', '+33673391641', 3, '2020-02-17 12:05:03', '{\"@attributes\":{\"batchid\":\"05f251e7-e828-18e8-0c2e-12d803fda001\"},\"messageheader\":{\"@attributes\":{\"id\":\"80662224-b002-146f-08cd-12d803fd9381\"}}}', 1, '0.00000', 1),
(525, 10, 'michel.jammes0171@orange.fr', '+33633846378', 3, '2020-02-17 12:05:03', '{\"@attributes\":{\"batchid\":\"82314922-925f-1304-0f0f-12d803fdf801\"},\"messageheader\":{\"@attributes\":{\"id\":\"afce3f13-6f36-1f76-002b-12d803fdf181\"}}}', 1, '0.00000', 1),
(526, 10, 'gabriel.laso@wanadoo.fr', '+33688798098', 3, '2020-02-17 12:05:03', '{\"@attributes\":{\"batchid\":\"30da30f4-0ff9-1301-0987-12d803fe9981\"},\"messageheader\":{\"@attributes\":{\"id\":\"75a923da-d0e2-1823-033d-12d803fe8c81\"}}}', 1, '0.00000', 1),
(527, 10, 'E-mail invalide 3', '+33645178756', 3, '2020-02-17 12:05:03', '{\"@attributes\":{\"batchid\":\"90dbbe39-6169-148e-0c73-12d803feff81\"},\"messageheader\":{\"@attributes\":{\"id\":\"1ad9fd8f-a708-1198-00b1-12d803fef481\"}}}', 1, '0.00000', 1),
(529, 10, 'mairie-de-citou@wanadoo.fr', '+33685273012', 3, '2020-02-17 12:05:04', '{\"@attributes\":{\"batchid\":\"3f6103d4-4f37-122f-0e81-12d803ff7901\"},\"messageheader\":{\"@attributes\":{\"id\":\"e846ace6-de6d-1f9b-01c6-12d803ff6d81\"}}}', 1, '0.00000', 1),
(530, 10, 'mairie-aiguesvives@wanadoo.fr', '+33683283842', 3, '2020-02-17 12:05:04', '{\"@attributes\":{\"batchid\":\"b656494c-b782-1cdb-0ed4-12d803ffc981\"},\"messageheader\":{\"@attributes\":{\"id\":\"ac0f3e5e-bbfd-1bb1-05cf-12d803ffbb01\"}}}', 1, '0.00000', 1),
(531, 10, 'limousis@wanadoo.fr', '+33684844034', 3, '2020-02-17 12:05:04', '{\"@attributes\":{\"batchid\":\"01608d55-22bb-127c-0323-12d804009201\"},\"messageheader\":{\"@attributes\":{\"id\":\"559ca4bf-928a-1ad4-093f-12d804008781\"}}}', 1, '0.00000', 1),
(532, 10, 'mairie-de-berriac@wanadoo.fr', '+33674439753', 3, '2020-02-17 12:05:04', '{\"@attributes\":{\"batchid\":\"661a3168-a0ad-19c1-0c05-12d80400bc81\"},\"messageheader\":{\"@attributes\":{\"id\":\"4a17fc23-3666-1160-0010-12d80400b581\"}}}', 1, '0.00000', 1),
(533, 10, 'pradellesenval@wanadoo.fr', '+33689391954', 3, '2020-02-17 12:05:04', '{\"@attributes\":{\"batchid\":\"5f4ca087-1a40-1c37-043a-12d804003d81\"},\"messageheader\":{\"@attributes\":{\"id\":\"3002ee09-1f17-1964-0735-12d804003801\"}}}', 1, '0.00000', 1),
(534, 10, 'm.e.loubet@wanadoo.fr', '+33672505490', 3, '2020-02-17 12:05:04', '{\"@attributes\":{\"batchid\":\"dbfcdc38-e06c-15d6-043e-12d804013081\"},\"messageheader\":{\"@attributes\":{\"id\":\"7edf7fd9-50c9-16ea-00d7-12d804012781\"}}}', 1, '0.00000', 1),
(535, 10, 'sige.jean@orange.fr', '+33670221747', 3, '2020-02-17 12:05:05', '{\"@attributes\":{\"batchid\":\"a68fdbb0-0752-1078-0b4e-12d80401e701\"},\"messageheader\":{\"@attributes\":{\"id\":\"64a19b78-fc3e-1920-00e3-12d80401da01\"}}}', 1, '0.00000', 1),
(536, 10, 'estival.a@laposte.net', '+33607114372', 3, '2020-02-17 12:05:05', '{\"@attributes\":{\"batchid\":\"5724c331-5355-1c46-00f1-12d80401e901\"},\"messageheader\":{\"@attributes\":{\"id\":\"5177bfee-0128-1e0d-01a5-12d80401e181\"}}}', 1, '0.00000', 1),
(537, 10, 'jacques.fabre11800@gmail.com', '+33786143638', 3, '2020-02-17 12:05:05', '{\"@attributes\":{\"batchid\":\"880bfeb0-1a3c-1746-0ab9-12d804027781\"},\"messageheader\":{\"@attributes\":{\"id\":\"3e44d9d4-8e0c-1a9d-0447-12d804027001\"}}}', 1, '0.00000', 1),
(538, 10, 'jo-gonzales@orange.fr', '+33674866962', 3, '2020-02-17 12:05:05', '{\"@attributes\":{\"batchid\":\"50facad6-1d1f-1ebc-034e-12d80401c681\"},\"messageheader\":{\"@attributes\":{\"id\":\"396873d1-e692-1df7-02e3-12d80401c101\"}}}', 1, '0.00000', 1),
(539, 10, 'jean.turchetto@orange.fr', '+33685912744', 3, '2020-02-17 12:05:05', '{\"@attributes\":{\"batchid\":\"e5f5759e-3c9c-1981-0d6f-12d804032101\"},\"messageheader\":{\"@attributes\":{\"id\":\"0490138f-ce28-1f70-0af5-12d804031801\"}}}', 1, '0.00000', 1),
(540, 10, 'philippe.clergue@wanadoo.fr', '+33627173853', 3, '2020-02-17 12:05:05', '{\"@attributes\":{\"batchid\":\"75d84fb4-4b72-1672-0702-12d804033281\"},\"messageheader\":{\"@attributes\":{\"id\":\"13f7c6af-3669-147e-03df-12d804032b01\"}}}', 1, '0.00000', 1),
(541, 10, 'josettesabata@gmail.com', '+33679792229', 3, '2020-02-17 12:05:06', '{\"@attributes\":{\"batchid\":\"bb6ccc2c-89cd-1c2f-01c3-12d80403c481\"},\"messageheader\":{\"@attributes\":{\"id\":\"15bb6d9a-32d0-14e9-0c8a-12d80403bb81\"}}}', 1, '0.00000', 1),
(542, 10, 'arnaudalbarel@gmail.com', '+33683880972', 3, '2020-02-17 12:05:06', '{\"@attributes\":{\"batchid\":\"540d83f0-8d7e-1f0f-0430-12d804041001\"},\"messageheader\":{\"@attributes\":{\"id\":\"6c0c287d-588c-19ed-0f5f-12d804040781\"}}}', 1, '0.00000', 1),
(543, 10, 'yolpiton@orange.fr', '+33661526132', 3, '2020-02-17 12:05:06', '{\"@attributes\":{\"batchid\":\"7a350aab-9589-1195-05e5-12d804045f81\"},\"messageheader\":{\"@attributes\":{\"id\":\"bb2d0d17-420e-1de3-0190-12d804045601\"}}}', 1, '0.00000', 1),
(544, 10, 'adiveze.denis@gmail.com', '+33677101624', 3, '2020-02-17 12:05:06', '{\"@attributes\":{\"batchid\":\"496cd6a2-73fd-185c-0710-12d804046181\"},\"messageheader\":{\"@attributes\":{\"id\":\"407dc801-cf09-152b-0313-12d804045a81\"}}}', 1, '0.00000', 1),
(545, 10, 'galibertjeanlouis@gmail.com', '+33662738477', 3, '2020-02-17 12:10:02', '{\"@attributes\":{\"batchid\":\"101f9817-b72f-169a-0683-12d80646bf01\"},\"messageheader\":{\"@attributes\":{\"id\":\"20b676db-b37a-1706-0ed8-12d80646b181\"}}}', 1, '0.00000', 1),
(546, 10, 'jf.juste@free.fr', '+33673035388', 3, '2020-02-17 12:10:02', '{\"@attributes\":{\"batchid\":\"f069c60e-d293-152b-0df7-12d80646c201\"},\"messageheader\":{\"@attributes\":{\"id\":\"04176705-3299-19a6-058e-12d80646b981\"}}}', 1, '0.00000', 1),
(547, 10, 'ph-phalip@orange.fr', '+33640896363', 3, '2020-02-17 12:10:02', '{\"@attributes\":{\"batchid\":\"e8f90d3f-efc4-1673-0cc4-12d806465d01\"},\"messageheader\":{\"@attributes\":{\"id\":\"050ea2e5-a9fe-1f22-0490-12d806465401\"}}}', 1, '0.00000', 1),
(548, 10, 'mairie.fontiesdaude@wanadoo.fr', '+33671014870', 3, '2020-02-17 12:10:02', '{\"@attributes\":{\"batchid\":\"63a2030f-14b4-156e-0e20-12d806476901\"},\"messageheader\":{\"@attributes\":{\"id\":\"8edf2701-1b2e-1126-0d95-12d806476281\"}}}', 1, '0.00000', 1),
(549, 10, 'magro.audecentre@orange.fr', '+33687937035', 3, '2020-02-17 12:10:03', '{\"@attributes\":{\"batchid\":\"749eca9c-6ab1-1c7a-0ead-12d80646eb01\"},\"messageheader\":{\"@attributes\":{\"id\":\"3c46758a-80ba-1395-095a-12d80646e101\"}}}', 1, '0.00000', 1),
(550, 10, 'max.amouroux@orange.fr', '+33617080402', 3, '2020-02-17 12:10:03', '{\"@attributes\":{\"batchid\":\"eea6abca-6656-1382-0bf5-12d806472d81\"},\"messageheader\":{\"@attributes\":{\"id\":\"5d6dc7b9-e3a5-1cf4-0fe5-12d806472801\"}}}', 1, '0.00000', 1),
(551, 10, 'bernadettesire@gmail.com', '+33658851776', 3, '2020-02-17 12:10:03', '{\"@attributes\":{\"batchid\":\"ff63a513-d880-1e37-0405-12d806481881\"},\"messageheader\":{\"@attributes\":{\"id\":\"c1e99617-45ed-1844-0d81-12d806480c81\"}}}', 1, '0.00000', 1),
(552, 10, 'ottocoassin@gmail.com', '+33609568240', 3, '2020-02-17 12:10:03', '{\"@attributes\":{\"batchid\":\"ea0fc4ff-90ee-12b2-0e53-12d806488701\"},\"messageheader\":{\"@attributes\":{\"id\":\"c43da204-be32-1f59-0de7-12d806486f01\"}}}', 1, '0.00000', 1),
(553, 10, 'michel.branchereau@gmail.com', '+33674246177', 3, '2020-02-17 12:10:03', '{\"@attributes\":{\"batchid\":\"10fd2c0c-34eb-12a7-05a9-12d806483a81\"},\"messageheader\":{\"@attributes\":{\"id\":\"61480eda-2a54-1406-0b49-12d806482f01\"}}}', 1, '0.00000', 1),
(554, 10, 'jp.pelix@wanadoo.fr', '+33679990720', 3, '2020-02-17 12:10:04', '{\"@attributes\":{\"batchid\":\"907a4956-6bfd-197b-074a-12d80649cb81\"},\"messageheader\":{\"@attributes\":{\"id\":\"399528e7-ad36-1508-0dec-12d80649ba81\"}}}', 1, '0.00000', 1),
(555, 10, 'flo.cathary@hotmail.fr', '+33681454540', 3, '2020-02-17 12:10:04', '{\"@attributes\":{\"batchid\":\"d352601c-1991-1851-097b-12d80649bb01\"},\"messageheader\":{\"@attributes\":{\"id\":\"f69c705b-89bc-1fc8-0d31-12d80649b301\"}}}', 1, '0.00000', 1),
(556, 10, 'paul.ramoneda@mairie-palaja.fr', '+33685065381', 3, '2020-02-17 12:10:04', '{\"@attributes\":{\"batchid\":\"045bb39b-950c-1f06-030d-12d8064a3881\"},\"messageheader\":{\"@attributes\":{\"id\":\"bebb3e9c-9a79-1cd6-03c6-12d8064a2601\"}}}', 1, '0.00000', 1),
(557, 10, 'monier.denis@free.fr', '+33663329383', 3, '2020-02-17 12:10:04', '{\"@attributes\":{\"batchid\":\"a671f88a-cef6-1c8d-08b5-12d8064a5881\"},\"messageheader\":{\"@attributes\":{\"id\":\"ee5db2dc-2e80-1b2b-036a-12d8064a5301\"}}}', 1, '0.00000', 1),
(558, 10, 'philippe.maynadie1@orange.fr', '+33611415196', 3, '2020-02-17 12:10:04', '{\"@attributes\":{\"batchid\":\"166d7b41-4455-1ca2-0bc0-12d8064b6b01\"},\"messageheader\":{\"@attributes\":{\"id\":\"25ded328-8086-1bde-0f8c-12d8064b4b81\"}}}', 1, '0.00000', 1),
(559, 10, 'srd11@sfr.fr', '+33680037532', 3, '2020-02-17 12:10:05', '{\"@attributes\":{\"batchid\":\"ef433409-31a9-19b3-0896-12d8064b7a01\"},\"messageheader\":{\"@attributes\":{\"id\":\"36004a4c-4d40-1b42-09d0-12d8064b7481\"}}}', 1, '0.00000', 1),
(560, 10, 'g.n.peyrot@orange.fr', '+33624925406', 3, '2020-02-17 12:10:05', '{\"@attributes\":{\"batchid\":\"2cea0a93-816a-1f57-01d8-12d8064c2e81\"},\"messageheader\":{\"@attributes\":{\"id\":\"eaa2880f-425f-1f3e-0828-12d8064c1e81\"}}}', 1, '0.00000', 1),
(561, 10, 'aline.vaujany@orange.fr', '+33689486469', 3, '2020-02-17 12:10:05', '{\"@attributes\":{\"batchid\":\"4531fb20-65c0-1c9f-067c-12d8064c4081\"},\"messageheader\":{\"@attributes\":{\"id\":\"0d44379c-57ef-152b-02a5-12d8064c3881\"}}}', 1, '0.00000', 1),
(562, 10, 'jean-claude.pujol8@orange.fr', '+33676851553', 3, '2020-02-17 12:10:05', '{\"@attributes\":{\"batchid\":\"08c20fc6-9d95-10d7-055b-12d8064ce101\"},\"messageheader\":{\"@attributes\":{\"id\":\"8e03ca6a-83b4-1802-0cc2-12d8064cd481\"}}}', 1, '0.00000', 1),
(563, 10, 'r.jouve@orange.fr', '+33658488370', 3, '2020-02-17 12:10:05', '{\"@attributes\":{\"batchid\":\"df12679a-760d-18be-036f-12d8064c5701\"},\"messageheader\":{\"@attributes\":{\"id\":\"1ee4c3b5-d88c-1aa7-0047-12d8064c4a01\"}}}', 1, '0.00000', 1),
(564, 10, 'raphael.piedra@neuf.fr', '+33670006750', 3, '2020-02-17 12:10:06', '{\"@attributes\":{\"batchid\":\"67a7c900-2e51-10b7-0509-12d8064cd281\"},\"messageheader\":{\"@attributes\":{\"id\":\"66364eae-9e0d-118c-080a-12d8064ccc01\"}}}', 1, '0.00000', 1),
(565, 10, 'paul.malric@club-internet.fr', '+33688156063', 3, '2020-02-17 12:10:06', '{\"@attributes\":{\"batchid\":\"c4e4e627-4d1e-1c34-006a-12d8064e3601\"},\"messageheader\":{\"@attributes\":{\"id\":\"3efc2f47-0a2d-1298-03f1-12d8064e2f81\"}}}', 1, '0.00000', 1),
(566, 10, 'chrislaineloze@yahoo.fr', '+33624308606', 3, '2020-02-17 12:10:06', '{\"@attributes\":{\"batchid\":\"0b5c05ca-3b16-178c-0366-12d8064e2081\"},\"messageheader\":{\"@attributes\":{\"id\":\"299c8afe-d506-1218-0742-12d8064e1901\"}}}', 1, '0.00000', 1),
(567, 10, 'marc.rofes@hotmail.fr', '+33682630375', 3, '2020-02-17 12:10:06', '{\"@attributes\":{\"batchid\":\"8fd1cc37-b3fd-1d42-03b4-12d8064e9281\"},\"messageheader\":{\"@attributes\":{\"id\":\"7bbc2c32-f1c1-1c72-034f-12d8064e8a01\"}}}', 1, '0.00000', 1),
(568, 10, 'eveline.sanchez@orange.fr', '+33614721346', 3, '2020-02-17 12:10:06', '{\"@attributes\":{\"batchid\":\"979f64e8-c30d-1d29-0961-12d8064f1681\"},\"messageheader\":{\"@attributes\":{\"id\":\"dea2a55f-e145-1895-0489-12d8064f0901\"}}}', 1, '0.00000', 1),
(569, 10, 'amvillegly@wanadoo.fr', '+33681870948', 3, '2020-02-17 12:10:07', '{\"@attributes\":{\"batchid\":\"93e68a89-09b5-127f-0165-12d8064fc581\"},\"messageheader\":{\"@attributes\":{\"id\":\"6407be5c-359b-1d1e-07ab-12d8064fb981\"}}}', 1, '0.00000', 1),
(570, 10, 'pierre.ceneda@gmail.com', '+33624485194', 3, '2020-02-17 12:11:46', '{\"@attributes\":{\"batchid\":\"b7506a64-515c-15ad-0b24-12d807124c01\"},\"messageheader\":{\"@attributes\":{\"id\":\"2f1cfc8f-ca7c-1a69-0fd4-12d807124481\"}}}', 1, '0.00000', 1),
(571, 10, 'alain.vaissieres0887@orange.fr', '+33676323043', 3, '2020-02-17 12:11:47', '{\"@attributes\":{\"batchid\":\"f554dd27-4adf-1fbd-04f9-12d80712b301\"},\"messageheader\":{\"@attributes\":{\"id\":\"e22c14ca-7210-1486-0ea0-12d80712ad81\"}}}', 1, '0.00000', 1),
(572, 10, 'PITIE', '+33609992094', 3, '2020-02-17 12:11:47', '{\"@attributes\":{\"batchid\":\"e1113442-ec8b-1c3f-01c2-12d807134001\"},\"messageheader\":{\"@attributes\":{\"id\":\"7214ebba-4a10-1a85-09b6-12d807133981\"}}}', 1, '0.00000', 1),
(573, 10, 'maireadjointrieuxminervois@orange.fr', '+33630411769', 3, '2020-02-17 12:11:47', '{\"@attributes\":{\"batchid\":\"ab75c78c-e513-1175-0cf3-12d807135401\"},\"messageheader\":{\"@attributes\":{\"id\":\"36813384-25ba-18c3-0110-12d807134d81\"}}}', 1, '0.00000', 1),
(575, 10, 'commune-de-les-ilhes@orange.fr', '0468770822', 3, '2020-02-17 12:11:47', '{\"@attributes\":{\"batchid\":\"127d39af-e19c-1299-07d7-12d807138301\"},\"messageheader\":{\"@attributes\":{\"id\":\"3a5f54a8-e286-11d9-07a3-12d807137b01\"}}}', 1, '0.00000', 1),
(576, 10, 'gaec.lesescoussols@orange.fr', '+33683716431', 3, '2020-02-17 12:11:47', '{\"@attributes\":{\"batchid\":\"ef38a41f-1c9f-1eaa-0579-12d80713bf01\"},\"messageheader\":{\"@attributes\":{\"id\":\"dab88f08-81ac-19a4-036a-12d80713b981\"}}}', 1, '0.00000', 1),
(577, 10, 'huc.marie-therese@orange.fr', '+33633794845', 3, '2020-02-17 12:11:47', '{\"@attributes\":{\"batchid\":\"9567dcf8-707d-18d1-09f9-12d807148b81\"},\"messageheader\":{\"@attributes\":{\"id\":\"634f1393-84c2-19b9-0373-12d807147d01\"}}}', 1, '0.00000', 1),
(578, 10, 'claude.bonnet16@wanadoo.fr', '+33675190986', 3, '2020-02-17 12:11:48', '{\"@attributes\":{\"batchid\":\"0a630b41-e61c-1d36-00a2-12d80714eb01\"},\"messageheader\":{\"@attributes\":{\"id\":\"ade4de6a-c824-1fed-0fab-12d80714da81\"}}}', 1, '0.00000', 1),
(579, 10, 'batlle4950@live.fr', '+33621475573', 3, '2020-02-17 12:11:48', '{\"@attributes\":{\"batchid\":\"35d03c2f-f0ec-1f9a-0eec-12d807153401\"},\"messageheader\":{\"@attributes\":{\"id\":\"aedeaf18-f2a2-10d5-0cbe-12d807152d81\"}}}', 1, '0.00000', 1),
(580, 10, 'germar.fernandez@orange.fr', '+33626748346', 3, '2020-02-17 12:11:48', '{\"@attributes\":{\"batchid\":\"78a6e30e-9761-18d4-0a10-12d807154a01\"},\"messageheader\":{\"@attributes\":{\"id\":\"4f100594-182c-19b1-02b5-12d807154381\"}}}', 1, '0.00000', 1),
(581, 10, 'laetitia.icher@orange.fr', '+33614188341', 3, '2020-02-17 12:11:48', '{\"@attributes\":{\"batchid\":\"a171f236-9c1e-154f-0079-12d807157501\"},\"messageheader\":{\"@attributes\":{\"id\":\"c5b12c0f-0ce3-1d27-0391-12d807156e81\"}}}', 1, '0.00000', 1),
(582, 10, 'bels.francis@wanadoo.fr', '+33680410327', 3, '2020-02-17 12:11:48', '{\"@attributes\":{\"batchid\":\"8efc32b7-6350-1504-0ec5-12d80715dd01\"},\"messageheader\":{\"@attributes\":{\"id\":\"f707105c-da51-1e7e-0723-12d80715d701\"}}}', 1, '0.00000', 1),
(583, 10, 'stephane.barthas@gmail.com', '+33677921967', 3, '2020-02-17 12:11:48', '{\"@attributes\":{\"batchid\":\"ae94f7fb-e7a7-1d59-0225-12d807160c81\"},\"messageheader\":{\"@attributes\":{\"id\":\"d7037d98-11fd-1d1e-0547-12d807160501\"}}}', 1, '0.00000', 1),
(584, 10, 'jeanclaude.christiane@wanadoo.fr', '+33676303285', 3, '2020-02-17 12:11:48', '{\"@attributes\":{\"batchid\":\"bf586c31-e0df-1d23-0605-12d807164481\"},\"messageheader\":{\"@attributes\":{\"id\":\"222ab2cb-c14d-124d-0c53-12d807163e81\"}}}', 1, '0.00000', 1),
(585, 10, 'crosregis@orange.fr', '+33662883864', 3, '2020-02-17 12:11:49', '{\"@attributes\":{\"batchid\":\"7d306fe2-43d9-1fc3-0392-12d807168c81\"},\"messageheader\":{\"@attributes\":{\"id\":\"5a077911-a375-1a70-0fb9-12d807168681\"}}}', 1, '0.00000', 1),
(586, 10, 'guychiffre@free.fr', '+33627594156', 3, '2020-02-17 12:11:49', '{\"@attributes\":{\"batchid\":\"4c2da602-3afd-18cc-040a-12d80716e081\"},\"messageheader\":{\"@attributes\":{\"id\":\"4afe6039-a781-1082-0c97-12d80716da01\"}}}', 1, '0.00000', 1),
(587, 10, 'jeromemarechalferrant@sfr.fr', '+33622986996', 3, '2020-02-17 12:11:49', '{\"@attributes\":{\"batchid\":\"57047397-fb05-166e-0527-12d807167c81\"},\"messageheader\":{\"@attributes\":{\"id\":\"568a0d4c-c94c-13be-035f-12d807167601\"}}}', 1, '0.00000', 1),
(588, 10, 'guycaly@sfr.fr', '+33673503271', 3, '2020-02-17 12:11:49', '{\"@attributes\":{\"batchid\":\"63428762-6d98-11d3-045c-12d80717d781\"},\"messageheader\":{\"@attributes\":{\"id\":\"f23f948f-c9b8-1642-0a54-12d80717cf81\"}}}', 1, '0.00000', 1),
(589, 10, 'jacques.augustin@wanadoo.fr', '+33608523474', 3, '2020-02-17 12:11:49', '{\"@attributes\":{\"batchid\":\"b108eec1-b754-167c-0fa9-12d80717d581\"},\"messageheader\":{\"@attributes\":{\"id\":\"c468621e-872f-11f2-0c40-12d80717cd01\"}}}', 1, '0.00000', 1),
(590, 10, 'pttjc@aol.com', '+33612776480', 3, '2020-02-17 12:11:49', '{\"@attributes\":{\"batchid\":\"931b3ef5-f798-1b6b-0123-12d807182d01\"},\"messageheader\":{\"@attributes\":{\"id\":\"db88e410-806b-1445-0a01-12d807182701\"}}}', 1, '0.00000', 1),
(592, 10, 'mairie.roubia@wanadoo.fr', '+33687019253', 3, '2020-02-17 12:11:50', '{\"@attributes\":{\"batchid\":\"01c44c03-1beb-1f3c-01ce-12d807189881\"},\"messageheader\":{\"@attributes\":{\"id\":\"26b31e7b-5c1d-1a7a-02ef-12d807189281\"}}}', 1, '0.00000', 1),
(593, 10, 'mairie.argens.garcia@orange.fr', '+33663006284', 3, '2020-02-17 12:11:50', '{\"@attributes\":{\"batchid\":\"a78a391b-63d3-12bd-0f2c-12d80718e281\"},\"messageheader\":{\"@attributes\":{\"id\":\"9dd3254e-3aff-1649-0f95-12d80718dc01\"}}}', 1, '0.00000', 1),
(594, 10, 'ar.alrang@wanadoo.fr', '+33615337040', 3, '2020-02-17 12:11:50', '{\"@attributes\":{\"batchid\":\"6fe5bef3-6fae-1289-09c9-12d807197081\"},\"messageheader\":{\"@attributes\":{\"id\":\"e573cb3b-e412-15b6-0837-12d807196a01\"}}}', 1, '0.00000', 1),
(595, 10, 'emile.delpy@orange.fr', '+33633123581', 3, '2020-02-17 12:11:50', '{\"@attributes\":{\"batchid\":\"a63be92c-4b93-1924-07f0-12d80719bb01\"},\"messageheader\":{\"@attributes\":{\"id\":\"a44987c0-864d-1250-074c-12d80719b381\"}}}', 1, '0.00000', 1),
(596, 10, 'mairie.agel@wanadoo.fr', '+33673258093', 3, '2020-02-17 12:11:50', '{\"@attributes\":{\"batchid\":\"c1d22933-a37c-13b9-0ea1-12d807199781\"},\"messageheader\":{\"@attributes\":{\"id\":\"754f990b-7a00-1129-0a89-12d807199001\"}}}', 1, '0.00000', 1),
(597, 10, 'commune.aiguesvives-herault@orange.fr', '+33607990452', 3, '2020-02-17 12:12:08', '{\"@attributes\":{\"batchid\":\"91b52939-04fa-1fb1-07cb-12d8073cc801\"},\"messageheader\":{\"@attributes\":{\"id\":\"70c725e7-5e20-1388-0350-12d8073cbf81\"}}}', 1, '0.00000', 1),
(598, 10, 'mairie.boisset@gmail.com', '+33607727231', 3, '2020-02-17 12:12:08', '{\"@attributes\":{\"batchid\":\"001cbf04-7b95-1fbd-0ddc-12d8073d2301\"},\"messageheader\":{\"@attributes\":{\"id\":\"2b4817c1-6a87-183b-0536-12d8073d1d01\"}}}', 1, '0.00000', 1),
(599, 10, 'mairiedecesseras@wanadoo.fr', '+33664091939', 3, '2020-02-17 12:12:08', '{\"@attributes\":{\"batchid\":\"7adf340e-e669-10de-067b-12d8073cbf01\"},\"messageheader\":{\"@attributes\":{\"id\":\"886b0a49-e41c-10de-086c-12d8073cb881\"}}}', 1, '0.00000', 1),
(600, 10, 'mairiedelaliviniere@wanadoo.fr', '+33687402721', 3, '2020-02-17 12:12:09', '{\"@attributes\":{\"batchid\":\"00648617-a4fe-1e78-0a0f-12d8073da901\"},\"messageheader\":{\"@attributes\":{\"id\":\"a129ed21-207d-1c8a-078b-12d8073da201\"}}}', 1, '0.00000', 1),
(601, 10, 'mairie.oupia@wanadoo.fr', '+33640308581', 3, '2020-02-17 12:12:09', '{\"@attributes\":{\"batchid\":\"8ff5fa16-cea4-1eef-0a4a-12d8073e6881\"},\"messageheader\":{\"@attributes\":{\"id\":\"589ec019-3e8b-1e86-04f8-12d8073e5d81\"}}}', 1, '0.00000', 1),
(602, 10, 'mairie-de-pardailhan@wanadoo.fr', '+33643191931', 3, '2020-02-17 12:12:09', '{\"@attributes\":{\"batchid\":\"40765242-4dd7-1bdf-09de-12d8073e4281\"},\"messageheader\":{\"@attributes\":{\"id\":\"a9ff85f6-b238-1b43-0d1d-12d8073e3c81\"}}}', 1, '0.00000', 1),
(603, 10, 'mairie-sjm@orange.fr', '+33630567220', 3, '2020-02-17 12:12:09', '{\"@attributes\":{\"batchid\":\"ab964a60-6b1d-1bac-0389-12d8073eb401\"},\"messageheader\":{\"@attributes\":{\"id\":\"c2a41952-65f8-146b-0873-12d8073eae81\"}}}', 1, '0.00000', 1),
(604, 10, 'mairiedevelieux@laposte.net', '+33611798281', 3, '2020-02-17 12:12:09', '{\"@attributes\":{\"batchid\":\"2696ce10-a0e9-1bf9-0f42-12d8073ef681\"},\"messageheader\":{\"@attributes\":{\"id\":\"c737f45e-4c1a-160f-0b1f-12d8073ef101\"}}}', 1, '0.00000', 1),
(605, 10, 'fraisse.yves602@orange.fr', '+33677180248', 3, '2020-02-17 12:12:09', '{\"@attributes\":{\"batchid\":\"908d3994-3d26-11eb-0ce8-12d8073f3f81\"},\"messageheader\":{\"@attributes\":{\"id\":\"a9ae5d9d-64a8-1ea3-0767-12d8073f3381\"}}}', 1, '0.00000', 1),
(606, 10, 'E-mail invalide 4', '+33768283171', 3, '2020-02-17 12:12:10', '{\"@attributes\":{\"batchid\":\"a59af661-a0cc-1da1-061d-12d8073fab81\"},\"messageheader\":{\"@attributes\":{\"id\":\"f56458ff-f16a-1d82-0022-12d8073fa481\"}}}', 1, '0.00000', 1),
(607, 10, 'jpierre.tourret1949@gmail.com', '+33688791923', 3, '2020-02-17 12:12:10', '{\"@attributes\":{\"batchid\":\"0528d327-36de-19e0-0cfe-12d8073fcd01\"},\"messageheader\":{\"@attributes\":{\"id\":\"d845b56e-8b2d-1818-0f8f-12d8073fc681\"}}}', 1, '0.00000', 1),
(608, 10, 'harmoniegonzalez@gmail.com', '+33614666566', 3, '2020-02-17 12:12:10', '{\"@attributes\":{\"batchid\":\"7fafd531-e7bc-147b-05a0-12d807408881\"},\"messageheader\":{\"@attributes\":{\"id\":\"704e6554-722d-1016-0ace-12d807408001\"}}}', 1, '0.00000', 1),
(609, 10, 'jeanpierrepastre45@orange.fr', '+33677149339', 3, '2020-02-17 12:12:10', '{\"@attributes\":{\"batchid\":\"40dc3d90-7922-19e3-01bc-12d807407801\"},\"messageheader\":{\"@attributes\":{\"id\":\"22a4373e-8680-1680-0391-12d807407181\"}}}', 1, '0.00000', 1),
(610, 10, 'piva.daniel.enzo@gmail.com', '+33608896941', 3, '2020-02-17 12:12:10', '{\"@attributes\":{\"batchid\":\"5275aeb0-8804-1215-0296-12d80740c201\"},\"messageheader\":{\"@attributes\":{\"id\":\"5799be34-0588-19b4-01b3-12d80740ba81\"}}}', 1, '0.00000', 1),
(611, 10, 'micheltailhades@orange.fr', '+33607148964', 3, '2020-02-17 12:12:10', '{\"@attributes\":{\"batchid\":\"6315f93a-bca3-1077-0dac-12d807417901\"},\"messageheader\":{\"@attributes\":{\"id\":\"9a10cf14-22a1-1576-011d-12d807417001\"}}}', 1, '0.00000', 1),
(612, 10, 'renemiralles34@gmail.com', '+33688173047', 3, '2020-02-17 12:12:10', '{\"@attributes\":{\"batchid\":\"68742533-d33e-19e9-0062-12d807417781\"},\"messageheader\":{\"@attributes\":{\"id\":\"69f6e0f4-4c5a-1d90-08af-12d807417101\"}}}', 1, '0.00000', 1),
(613, 10, 'ams1.olonzac@wanadoo.fr', '+33631377443', 3, '2020-02-17 12:12:11', '{\"@attributes\":{\"batchid\":\"c8516326-b44f-11c6-0052-12d80740fe81\"},\"messageheader\":{\"@attributes\":{\"id\":\"c91d0f19-f975-1b21-0ace-12d80740f601\"}}}', 1, '0.00000', 1),
(614, 10, 'alainmouly34@gmail.com', '+33680023154', 3, '2020-02-17 12:12:11', '{\"@attributes\":{\"batchid\":\"b3424021-5d23-1b58-042d-12d807421f01\"},\"messageheader\":{\"@attributes\":{\"id\":\"5f573c99-8a91-1aa7-0a4b-12d807421201\"}}}', 1, '0.00000', 1),
(615, 10, 'sebastien.olivares@hotmail.fr', '+33622324432', 3, '2020-02-17 12:12:11', '{\"@attributes\":{\"batchid\":\"c2950ffa-ad57-1743-0198-12d807427701\"},\"messageheader\":{\"@attributes\":{\"id\":\"2cf41a81-b960-16ba-0000-12d807427001\"}}}', 1, '0.00000', 1),
(617, 11, 'didierlaure.mairie@gmail.com', '+33603105762', 3, '2020-03-02 14:20:02', '{\"@attributes\":{\"batchid\":\"01b92d30-55d9-15b0-0a24-12fc4e4cbf81\"},\"messageheader\":{\"@attributes\":{\"id\":\"883db066-a507-1a51-030e-12fc4e4cb881\"}}}', 1, '0.00000', 1),
(618, 11, 'alain.fabre11120@gmail.com', '+33784563678', 3, '2020-03-02 14:20:02', '{\"@attributes\":{\"batchid\":\"1c58643b-88fd-1001-0960-12fc4e4c5e81\"},\"messageheader\":{\"@attributes\":{\"id\":\"2b88827a-c3dc-14d9-02d9-12fc4e4c5a01\"}}}', 1, '0.00000', 1),
(619, 11, 'schivardi.gerard@orange.fr', '+33640154053', 3, '2020-03-02 14:20:02', '{\"@attributes\":{\"batchid\":\"7b847ac6-1efe-1df1-0858-12fc4e4cb681\"},\"messageheader\":{\"@attributes\":{\"id\":\"94e884b4-59a4-1c91-0826-12fc4e4cb081\"}}}', 1, '0.00000', 1),
(620, 11, 'bernard-les-vignes@orange.fr', '+33632925787', 3, '2020-03-02 14:20:03', '{\"@attributes\":{\"batchid\":\"84590494-f2d4-1835-09ae-12fc4e4e0381\"},\"messageheader\":{\"@attributes\":{\"id\":\"ea24d3f0-40df-1e36-0a00-12fc4e4df881\"}}}', 1, '0.00000', 1),
(621, 11, 'g.dauzat@yahoo.fr', '+33685725347', 3, '2020-03-02 14:20:03', '{\"@attributes\":{\"batchid\":\"3d158cb3-54a2-1171-0ebc-12fc4e4e7d01\"},\"messageheader\":{\"@attributes\":{\"id\":\"44cd07ae-4a1f-1501-029c-12fc4e4e7481\"}}}', 1, '0.00000', 1),
(622, 11, 'hubert.bou@wanadoo.fr', '+33673391641', 3, '2020-03-02 14:20:03', '{\"@attributes\":{\"batchid\":\"b90eaa6d-21c9-116f-0580-12fc4e4f4701\"},\"messageheader\":{\"@attributes\":{\"id\":\"9b66caaa-5a7a-1a86-07dd-12fc4e4f4101\"}}}', 1, '0.00000', 1),
(623, 11, 'michel.jammes0171@orange.fr', '+33633846378', 3, '2020-03-02 14:20:03', '{\"@attributes\":{\"batchid\":\"17333117-442e-1b5e-0cde-12fc4e4e5481\"},\"messageheader\":{\"@attributes\":{\"id\":\"2973fc0c-b99a-175d-071c-12fc4e4e4e81\"}}}', 1, '0.00000', 1),
(624, 11, 'gabriel.laso@wanadoo.fr', '+33688798098', 3, '2020-03-02 14:20:03', '{\"@attributes\":{\"batchid\":\"b5bced04-0458-12c1-096d-12fc4e4faa01\"},\"messageheader\":{\"@attributes\":{\"id\":\"02e1c1e0-fd35-1a8f-0d5c-12fc4e4fa381\"}}}', 1, '0.00000', 1),
(625, 11, 'E-mail invalide 3', '+33645178756', 3, '2020-03-02 14:20:04', '{\"@attributes\":{\"batchid\":\"59884d76-a243-13ca-0f47-12fc4e4f0b01\"},\"messageheader\":{\"@attributes\":{\"id\":\"6f9c6bdf-8aa6-1ca3-0cfb-12fc4e4f0681\"}}}', 1, '0.00000', 1),
(627, 11, 'mairie-de-citou@wanadoo.fr', '+33685273012', 3, '2020-03-02 14:20:04', '{\"@attributes\":{\"batchid\":\"cf26dbcb-a8d5-1c68-08e6-12fc4e505c01\"},\"messageheader\":{\"@attributes\":{\"id\":\"b63f4269-9164-1312-003f-12fc4e505581\"}}}', 1, '0.00000', 1),
(628, 11, 'mairie-aiguesvives@wanadoo.fr', '+33683283842', 3, '2020-03-02 14:20:04', '{\"@attributes\":{\"batchid\":\"790a9dbd-aa9e-1a6a-05ee-12fc4e50ae81\"},\"messageheader\":{\"@attributes\":{\"id\":\"73696986-90d6-1d6e-072f-12fc4e50a681\"}}}', 1, '0.00000', 1),
(629, 11, 'limousis@wanadoo.fr', '+33684844034', 3, '2020-03-02 14:20:04', '{\"@attributes\":{\"batchid\":\"95f03f83-835c-1f4c-08a5-12fc4e500f81\"},\"messageheader\":{\"@attributes\":{\"id\":\"53f4afc7-857e-1d5d-0442-12fc4e500a81\"}}}', 1, '0.00000', 1),
(630, 11, 'mairie-de-berriac@wanadoo.fr', '+33674439753', 3, '2020-03-02 14:20:04', '{\"@attributes\":{\"batchid\":\"2c4c071d-52e4-1095-031d-12fc4e507081\"},\"messageheader\":{\"@attributes\":{\"id\":\"34b7ff87-b120-1646-09c0-12fc4e506881\"}}}', 1, '0.00000', 1),
(631, 11, 'pradellesenval@wanadoo.fr', '+33689391954', 3, '2020-03-02 14:20:04', '{\"@attributes\":{\"batchid\":\"78fe9a2f-07fc-1c74-0e14-12fc4e517701\"},\"messageheader\":{\"@attributes\":{\"id\":\"a9f6ffe7-d79d-122c-0138-12fc4e517201\"}}}', 1, '0.00000', 1);
INSERT INTO `sms_campaigns_recipients` (`id`, `sms_campaign_id`, `name`, `tel`, `status`, `sended_at`, `api_return`, `api_attempt`, `cost`, `sms_count`) VALUES
(632, 11, 'm.e.loubet@wanadoo.fr', '+33672505490', 3, '2020-03-02 14:20:05', '{\"@attributes\":{\"batchid\":\"45976e25-96e1-1144-07f0-12fc4e520d01\"},\"messageheader\":{\"@attributes\":{\"id\":\"e3c9c33d-0e7b-1d03-02f2-12fc4e520201\"}}}', 1, '0.00000', 1),
(633, 11, 'sige.jean@orange.fr', '+33670221747', 3, '2020-03-02 14:20:05', '{\"@attributes\":{\"batchid\":\"ebee0710-406d-109a-057c-12fc4e530181\"},\"messageheader\":{\"@attributes\":{\"id\":\"5d3576eb-b408-10c4-0404-12fc4e52f801\"}}}', 1, '0.00000', 1),
(634, 11, 'estival.a@laposte.net', '+33607114372', 3, '2020-03-02 14:20:05', '{\"@attributes\":{\"batchid\":\"5f48b8e7-e380-1eaf-09a5-12fc4e52d581\"},\"messageheader\":{\"@attributes\":{\"id\":\"b6f5ed38-8690-1174-0776-12fc4e52cf01\"}}}', 1, '0.00000', 1),
(635, 11, 'jacques.fabre11800@gmail.com', '+33786143638', 3, '2020-03-02 14:20:05', '{\"@attributes\":{\"batchid\":\"80db9506-cd89-1ad6-0eb3-12fc4e53d001\"},\"messageheader\":{\"@attributes\":{\"id\":\"f07441e0-0110-19ec-078d-12fc4e53c881\"}}}', 1, '0.00000', 1),
(636, 11, 'jo-gonzales@orange.fr', '+33674866962', 3, '2020-03-02 14:20:06', '{\"@attributes\":{\"batchid\":\"6fc35306-d238-1c69-0575-12fc4e53d101\"},\"messageheader\":{\"@attributes\":{\"id\":\"44dd7d69-ff2d-1343-014b-12fc4e53ca81\"}}}', 1, '0.00000', 1),
(637, 11, 'jean.turchetto@orange.fr', '+33685912744', 3, '2020-03-02 14:20:06', '{\"@attributes\":{\"batchid\":\"f74b1f40-3521-165c-0dd5-12fc4e532901\"},\"messageheader\":{\"@attributes\":{\"id\":\"a722579f-b53c-14a8-010e-12fc4e532301\"}}}', 1, '0.00000', 1),
(638, 11, 'philippe.clergue@wanadoo.fr', '+33627173853', 3, '2020-03-02 14:20:06', '{\"@attributes\":{\"batchid\":\"246876be-ce3e-148a-0694-12fc4e546f81\"},\"messageheader\":{\"@attributes\":{\"id\":\"3fe3a7f7-6034-1e9e-0451-12fc4e546901\"}}}', 1, '0.00000', 1),
(639, 11, 'josettesabata@gmail.com', '+33679792229', 3, '2020-03-02 14:20:06', '{\"@attributes\":{\"batchid\":\"097e126a-0636-1b15-0053-12fc4e54a181\"},\"messageheader\":{\"@attributes\":{\"id\":\"b7a40d64-335d-1cd6-0b89-12fc4e549a01\"}}}', 1, '0.00000', 1),
(640, 11, 'arnaudalbarel@gmail.com', '+33683880972', 3, '2020-03-02 14:20:06', '{\"@attributes\":{\"batchid\":\"dcf5b134-3d7a-1eef-09b8-12fc4e54d881\"},\"messageheader\":{\"@attributes\":{\"id\":\"d9bbf892-1ee7-15b1-0b14-12fc4e54d101\"}}}', 1, '0.00000', 1),
(641, 11, 'yolpiton@orange.fr', '+33661526132', 3, '2020-03-02 14:20:06', '{\"@attributes\":{\"batchid\":\"c4bdae4e-ff7d-1637-0e77-12fc4e555601\"},\"messageheader\":{\"@attributes\":{\"id\":\"fea15612-0224-1341-0b3c-12fc4e554d01\"}}}', 1, '0.00000', 1),
(642, 11, 'adiveze.denis@gmail.com', '+33677101624', 3, '2020-03-02 14:20:07', '{\"@attributes\":{\"batchid\":\"12e0f1e7-3127-1aaa-0059-12fc4e55e081\"},\"messageheader\":{\"@attributes\":{\"id\":\"44bdac45-999a-1402-0649-12fc4e55da81\"}}}', 1, '0.00000', 1),
(643, 11, 'galibertjeanlouis@gmail.com', '+33662738477', 3, '2020-03-02 14:25:02', '{\"@attributes\":{\"batchid\":\"5b4ff1b8-3a1a-108d-0238-12fc5095e681\"},\"messageheader\":{\"@attributes\":{\"id\":\"a9ce169d-d531-1e1c-0a84-12fc5095e001\"}}}', 1, '0.00000', 1),
(644, 11, 'jf.juste@free.fr', '+33673035388', 3, '2020-03-02 14:25:02', '{\"@attributes\":{\"batchid\":\"5a74bc6a-9c2f-1fdd-040c-12fc5095c101\"},\"messageheader\":{\"@attributes\":{\"id\":\"06fcd9fd-2d33-1625-0784-12fc5095ba01\"}}}', 1, '0.00000', 1),
(645, 11, 'ph-phalip@orange.fr', '+33640896363', 3, '2020-03-02 14:25:02', '{\"@attributes\":{\"batchid\":\"ab3cc6b9-b5d4-1fc0-0753-12fc50972401\"},\"messageheader\":{\"@attributes\":{\"id\":\"06169e5f-1d79-1722-0e28-12fc50971d01\"}}}', 1, '0.00000', 1),
(646, 11, 'mairie.fontiesdaude@wanadoo.fr', '+33671014870', 3, '2020-03-02 14:25:02', '{\"@attributes\":{\"batchid\":\"742cbaea-ce42-1614-0101-12fc5097ca01\"},\"messageheader\":{\"@attributes\":{\"id\":\"16a40c44-932a-101c-03c0-12fc5097c101\"}}}', 1, '0.00000', 1),
(647, 11, 'magro.audecentre@orange.fr', '+33687937035', 3, '2020-03-02 14:25:03', '{\"@attributes\":{\"batchid\":\"5efcb59d-ea4f-13c7-00cd-12fc5097ad81\"},\"messageheader\":{\"@attributes\":{\"id\":\"c0b11e8b-cfa3-1417-06a9-12fc5097a301\"}}}', 1, '0.00000', 1),
(648, 11, 'max.amouroux@orange.fr', '+33617080402', 3, '2020-03-02 14:25:03', '{\"@attributes\":{\"batchid\":\"6b458799-4f88-176d-08cb-12fc50975a81\"},\"messageheader\":{\"@attributes\":{\"id\":\"4884c31e-42c7-1279-09c1-12fc50975381\"}}}', 1, '0.00000', 1),
(649, 11, 'bernadettesire@gmail.com', '+33658851776', 3, '2020-03-02 14:25:03', '{\"@attributes\":{\"batchid\":\"6ea27343-6017-1f33-0fb9-12fc50990181\"},\"messageheader\":{\"@attributes\":{\"id\":\"16e54441-07d3-1b47-05ed-12fc5098f901\"}}}', 1, '0.00000', 1),
(650, 11, 'ottocoassin@gmail.com', '+33609568240', 3, '2020-03-02 14:25:03', '{\"@attributes\":{\"batchid\":\"5a23dc56-99c5-157e-090d-12fc50980501\"},\"messageheader\":{\"@attributes\":{\"id\":\"f48bd5ac-be65-1158-010b-12fc5097fc81\"}}}', 1, '0.00000', 1),
(651, 11, 'michel.branchereau@gmail.com', '+33674246177', 3, '2020-03-02 14:25:03', '{\"@attributes\":{\"batchid\":\"a26c5967-cfb8-1fa3-02ae-12fc50992c81\"},\"messageheader\":{\"@attributes\":{\"id\":\"a3170f89-0436-149d-063a-12fc50991c81\"}}}', 1, '0.00000', 1),
(652, 11, 'jp.pelix@wanadoo.fr', '+33679990720', 3, '2020-03-02 14:25:04', '{\"@attributes\":{\"batchid\":\"baa986c8-540f-15ee-0681-12fc509a0681\"},\"messageheader\":{\"@attributes\":{\"id\":\"07839e31-8b50-19ad-0351-12fc5099f601\"}}}', 1, '0.00000', 1),
(653, 11, 'flo.cathary@hotmail.fr', '+33681454540', 3, '2020-03-02 14:25:04', '{\"@attributes\":{\"batchid\":\"7e109c98-9f3f-1d9f-0ca8-12fc509a3801\"},\"messageheader\":{\"@attributes\":{\"id\":\"fedd5533-a26f-195a-0100-12fc509a3201\"}}}', 1, '0.00000', 1),
(654, 11, 'paul.ramoneda@mairie-palaja.fr', '+33685065381', 3, '2020-03-02 14:25:04', '{\"@attributes\":{\"batchid\":\"16359e52-8580-1c48-0302-12fc509ab301\"},\"messageheader\":{\"@attributes\":{\"id\":\"32469ec7-8017-13aa-09da-12fc509aa601\"}}}', 1, '0.00000', 1),
(655, 11, 'monier.denis@free.fr', '+33663329383', 3, '2020-03-02 14:25:04', '{\"@attributes\":{\"batchid\":\"2ed67158-84aa-1e99-0f9b-12fc509b5381\"},\"messageheader\":{\"@attributes\":{\"id\":\"1d42b231-1fce-159a-078d-12fc509b4c01\"}}}', 1, '0.00000', 1),
(656, 11, 'philippe.maynadie1@orange.fr', '+33611415196', 3, '2020-03-02 14:25:04', '{\"@attributes\":{\"batchid\":\"0fc23fbf-f2e4-1246-0ca4-12fc509ba981\"},\"messageheader\":{\"@attributes\":{\"id\":\"e2168853-6054-1113-0731-12fc509b9e81\"}}}', 1, '0.00000', 1),
(657, 11, 'srd11@sfr.fr', '+33680037532', 3, '2020-03-02 14:25:05', '{\"@attributes\":{\"batchid\":\"eb3d1d52-7727-14d2-06f8-12fc509b9c81\"},\"messageheader\":{\"@attributes\":{\"id\":\"9e8a6f0b-9e83-1598-0ef5-12fc509b9181\"}}}', 1, '0.00000', 1),
(658, 11, 'g.n.peyrot@orange.fr', '+33624925406', 3, '2020-03-02 14:25:05', '{\"@attributes\":{\"batchid\":\"54f31e98-0d65-1c72-08f9-12fc509d7501\"},\"messageheader\":{\"@attributes\":{\"id\":\"a742d054-8dc6-1b66-006b-12fc509d6c01\"}}}', 1, '0.00000', 1),
(659, 11, 'aline.vaujany@orange.fr', '+33689486469', 3, '2020-03-02 14:25:06', '{\"@attributes\":{\"batchid\":\"f4d57309-8a9d-1969-0dcf-12fc509dde01\"},\"messageheader\":{\"@attributes\":{\"id\":\"42fd3dbe-bafa-178b-0345-12fc509dd201\"}}}', 1, '0.00000', 1),
(660, 11, 'jean-claude.pujol8@orange.fr', '+33676851553', 3, '2020-03-02 14:25:06', '{\"@attributes\":{\"batchid\":\"7f0f79c5-6005-1346-0fa1-12fc509ec381\"},\"messageheader\":{\"@attributes\":{\"id\":\"c2ef60b0-1826-1c06-0d3a-12fc509ebd01\"}}}', 1, '0.00000', 1),
(661, 11, 'r.jouve@orange.fr', '+33658488370', 3, '2020-03-02 14:25:06', '{\"@attributes\":{\"batchid\":\"0af5a948-4cfa-1d99-0fbc-12fc509e8a01\"},\"messageheader\":{\"@attributes\":{\"id\":\"5769c63a-2be4-1598-03f5-12fc509e8201\"}}}', 1, '0.00000', 1),
(662, 11, 'raphael.piedra@neuf.fr', '+33670006750', 3, '2020-03-02 14:25:06', '{\"@attributes\":{\"batchid\":\"23821099-c34c-11e6-07e9-12fc509f2581\"},\"messageheader\":{\"@attributes\":{\"id\":\"20f04296-eba5-159a-0b78-12fc509f1e01\"}}}', 1, '0.00000', 1),
(663, 11, 'paul.malric@club-internet.fr', '+33688156063', 3, '2020-03-02 14:25:06', '{\"@attributes\":{\"batchid\":\"f74a6980-026f-1963-0758-12fc509f6101\"},\"messageheader\":{\"@attributes\":{\"id\":\"b0e888d5-dbda-180c-028b-12fc509f5901\"}}}', 1, '0.00000', 1),
(664, 11, 'chrislaineloze@yahoo.fr', '+33624308606', 3, '2020-03-02 14:25:07', '{\"@attributes\":{\"batchid\":\"f6faf346-4eb0-1e1a-026a-12fc509f8c81\"},\"messageheader\":{\"@attributes\":{\"id\":\"9fb4a473-3e4e-1eac-04cc-12fc509f8601\"}}}', 1, '0.00000', 1),
(665, 11, 'marc.rofes@hotmail.fr', '+33682630375', 3, '2020-03-02 14:25:07', '{\"@attributes\":{\"batchid\":\"b13b0d9d-0044-1ba4-0629-12fc50a03701\"},\"messageheader\":{\"@attributes\":{\"id\":\"7a744803-2fab-162b-0663-12fc50a02e01\"}}}', 1, '0.00000', 1),
(666, 11, 'eveline.sanchez@orange.fr', '+33614721346', 3, '2020-03-02 14:25:07', '{\"@attributes\":{\"batchid\":\"bc78dab1-e1a2-1bd8-004f-12fc509f8401\"},\"messageheader\":{\"@attributes\":{\"id\":\"b4784452-f054-1c0e-00e4-12fc509f7f01\"}}}', 1, '0.00000', 1),
(667, 11, 'amvillegly@wanadoo.fr', '+33681870948', 3, '2020-03-02 14:25:07', '{\"@attributes\":{\"batchid\":\"58a8a940-3d12-1ae0-03ab-12fc50a12501\"},\"messageheader\":{\"@attributes\":{\"id\":\"8dd6dd05-aefc-1454-0dba-12fc50a11f81\"}}}', 1, '0.00000', 1),
(668, 11, 'pierre.ceneda@gmail.com', '+33624485194', 3, '2020-03-02 14:30:02', '{\"@attributes\":{\"batchid\":\"c1e64505-bdde-18c9-006b-12fc52dfae81\"},\"messageheader\":{\"@attributes\":{\"id\":\"fc70f367-211e-1f3a-0b7e-12fc52dfa801\"}}}', 1, '0.00000', 1),
(669, 11, 'alain.vaissieres0887@orange.fr', '+33676323043', 3, '2020-03-02 14:30:02', '{\"@attributes\":{\"batchid\":\"7b7b9139-d647-1a2c-061d-12fc52e1bb81\"},\"messageheader\":{\"@attributes\":{\"id\":\"197e6a8f-35d2-11cf-081e-12fc52e1a581\"}}}', 1, '0.00000', 1),
(670, 11, 'PITIE', '+33609992094', 3, '2020-03-02 14:30:03', '{\"@attributes\":{\"batchid\":\"fe34fb14-e3c5-10b2-00df-12fc52e1ac81\"},\"messageheader\":{\"@attributes\":{\"id\":\"82211dea-f623-139e-0a81-12fc52e1a781\"}}}', 1, '0.00000', 1),
(671, 11, 'maireadjointrieuxminervois@orange.fr', '+33630411769', 3, '2020-03-02 14:30:04', '{\"@attributes\":{\"batchid\":\"8eaf348e-35cb-1767-07a8-12fc52e2b281\"},\"messageheader\":{\"@attributes\":{\"id\":\"be54fdea-b72e-13c4-0741-12fc52e2a681\"}}}', 1, '0.00000', 1),
(673, 11, 'commune-de-les-ilhes@orange.fr', '0468770822', 3, '2020-03-02 14:30:04', '{\"@attributes\":{\"batchid\":\"0efecbd1-9b9d-1694-0b9f-12fc52e5a881\"},\"messageheader\":{\"@attributes\":{\"id\":\"ba276ecf-870e-1d11-0169-12fc52e58681\"}}}', 1, '0.00000', 1),
(674, 11, 'gaec.lesescoussols@orange.fr', '+33683716431', 3, '2020-03-02 14:30:05', '{\"@attributes\":{\"batchid\":\"dfe70525-911c-1496-0439-12fc52e50601\"},\"messageheader\":{\"@attributes\":{\"id\":\"b17125d9-a19a-1026-04c0-12fc52e4f981\"}}}', 1, '0.00000', 1),
(675, 11, 'huc.marie-therese@orange.fr', '+33633794845', 3, '2020-03-02 14:30:05', '{\"@attributes\":{\"batchid\":\"80923354-2929-10c8-0064-12fc52e5ad01\"},\"messageheader\":{\"@attributes\":{\"id\":\"b6c80f3e-08e4-1cd4-0265-12fc52e58b81\"}}}', 1, '0.00000', 1),
(676, 11, 'claude.bonnet16@wanadoo.fr', '+33675190986', 3, '2020-03-02 14:30:05', '{\"@attributes\":{\"batchid\":\"87c87118-15c7-130c-042c-12fc52e75281\"},\"messageheader\":{\"@attributes\":{\"id\":\"6b2eafe2-ebaa-173f-0752-12fc52e74a01\"}}}', 1, '0.00000', 1),
(677, 11, 'batlle4950@live.fr', '+33621475573', 3, '2020-03-02 14:30:06', '{\"@attributes\":{\"batchid\":\"660a78b0-7943-11af-0f00-12fc52e7a081\"},\"messageheader\":{\"@attributes\":{\"id\":\"46ffc704-60b3-1c3f-083e-12fc52e78e01\"}}}', 1, '0.00000', 1),
(678, 11, 'germar.fernandez@orange.fr', '+33626748346', 3, '2020-03-02 14:30:06', '{\"@attributes\":{\"batchid\":\"c67fe613-1045-1170-0e8e-12fc52e80301\"},\"messageheader\":{\"@attributes\":{\"id\":\"0e978d43-3a71-1f54-06da-12fc52e7f581\"}}}', 1, '0.00000', 1),
(679, 11, 'laetitia.icher@orange.fr', '+33614188341', 3, '2020-03-02 14:30:06', '{\"@attributes\":{\"batchid\":\"706629c3-b660-152c-0dd2-12fc52e8f601\"},\"messageheader\":{\"@attributes\":{\"id\":\"c1651b14-94de-1160-0e4f-12fc52e8e181\"}}}', 1, '0.00000', 1),
(680, 11, 'bels.francis@wanadoo.fr', '+33680410327', 3, '2020-03-02 14:30:06', '{\"@attributes\":{\"batchid\":\"f15c08f1-f766-18a0-03b7-12fc52e81101\"},\"messageheader\":{\"@attributes\":{\"id\":\"6817d9a4-fc6b-1582-0275-12fc52e80681\"}}}', 1, '0.00000', 1),
(681, 11, 'stephane.barthas@gmail.com', '+33677921967', 3, '2020-03-02 14:30:06', '{\"@attributes\":{\"batchid\":\"918f2705-e23e-1e43-0b4e-12fc52e86201\"},\"messageheader\":{\"@attributes\":{\"id\":\"f95be218-6246-13bb-0b90-12fc52e85c01\"}}}', 1, '0.00000', 1),
(682, 11, 'jeanclaude.christiane@wanadoo.fr', '+33676303285', 3, '2020-03-02 14:30:07', '{\"@attributes\":{\"batchid\":\"69607667-01ec-1b87-0a83-12fc52ea3781\"},\"messageheader\":{\"@attributes\":{\"id\":\"956a9824-1784-1c1b-0974-12fc52ea2e01\"}}}', 1, '0.00000', 1),
(683, 11, 'crosregis@orange.fr', '+33662883864', 3, '2020-03-02 14:30:07', '{\"@attributes\":{\"batchid\":\"12275cdf-f28a-1506-0943-12fc52ea1681\"},\"messageheader\":{\"@attributes\":{\"id\":\"bfbd460c-8c1a-11ca-03b2-12fc52ea1101\"}}}', 1, '0.00000', 1),
(684, 11, 'guychiffre@free.fr', '+33627594156', 3, '2020-03-02 14:30:07', '{\"@attributes\":{\"batchid\":\"c4bc3af7-dca3-184f-01e0-12fc52ea6381\"},\"messageheader\":{\"@attributes\":{\"id\":\"1ea5a305-fa20-1c6d-0f7a-12fc52ea5d81\"}}}', 1, '0.00000', 1),
(685, 11, 'jeromemarechalferrant@sfr.fr', '+33622986996', 3, '2020-03-02 14:30:07', '{\"@attributes\":{\"batchid\":\"5e65b9dd-93a3-16f9-07ad-12fc52eab681\"},\"messageheader\":{\"@attributes\":{\"id\":\"7e7c3ba4-f6b3-10a5-0b36-12fc52eaae81\"}}}', 1, '0.00000', 1),
(686, 11, 'guycaly@sfr.fr', '+33673503271', 3, '2020-03-02 14:30:07', '{\"@attributes\":{\"batchid\":\"52fbc357-5c7f-17d0-0270-12fc52eb3881\"},\"messageheader\":{\"@attributes\":{\"id\":\"6a543da0-2e0d-18b7-0dd0-12fc52eb2c81\"}}}', 1, '0.00000', 1),
(687, 11, 'jacques.augustin@wanadoo.fr', '+33608523474', 3, '2020-03-02 14:30:08', '{\"@attributes\":{\"batchid\":\"9d79fb4f-9063-1d67-03ab-12fc52ebb801\"},\"messageheader\":{\"@attributes\":{\"id\":\"8c3066c8-3c0d-1092-0cca-12fc52ebab01\"}}}', 1, '0.00000', 1),
(688, 11, 'pttjc@aol.com', '+33612776480', 3, '2020-03-02 14:30:08', '{\"@attributes\":{\"batchid\":\"ed1b6abb-5c82-10ab-0439-12fc52ebc981\"},\"messageheader\":{\"@attributes\":{\"id\":\"b75177b2-0185-1359-0fa5-12fc52ebbe01\"}}}', 1, '0.00000', 1),
(690, 11, 'mairie.roubia@wanadoo.fr', '+33687019253', 3, '2020-03-02 14:30:08', '{\"@attributes\":{\"batchid\":\"ba14c02a-b265-17a0-00c5-12fc52ec2201\"},\"messageheader\":{\"@attributes\":{\"id\":\"264d3da3-829d-1dce-0208-12fc52ec1901\"}}}', 1, '0.00000', 1),
(691, 11, 'mairie.argens.garcia@orange.fr', '+33663006284', 3, '2020-03-02 14:30:08', '{\"@attributes\":{\"batchid\":\"9839a324-3533-14ac-0975-12fc52ed2e01\"},\"messageheader\":{\"@attributes\":{\"id\":\"af5dc07e-85a6-1049-0e2a-12fc52ed2381\"}}}', 1, '0.00000', 1),
(692, 11, 'ar.alrang@wanadoo.fr', '+33615337040', 3, '2020-03-02 14:30:09', '{\"@attributes\":{\"batchid\":\"21482b8a-26e2-1139-035d-12fc52ed2281\"},\"messageheader\":{\"@attributes\":{\"id\":\"1464f48c-cf4b-1c04-0596-12fc52ed1a01\"}}}', 1, '0.00000', 1),
(693, 11, 'emile.delpy@orange.fr', '+33633123581', 3, '2020-03-02 14:30:09', '{\"@attributes\":{\"batchid\":\"1ed97e96-b13b-12b2-062c-12fc52edc201\"},\"messageheader\":{\"@attributes\":{\"id\":\"555f7d75-d60a-1e92-0f51-12fc52edb901\"}}}', 1, '0.00000', 1),
(694, 11, 'mairie.agel@wanadoo.fr', '+33673258093', 3, '2020-03-02 14:30:09', '{\"@attributes\":{\"batchid\":\"53df1fe0-e88e-1700-04e9-12fc52eec101\"},\"messageheader\":{\"@attributes\":{\"id\":\"e6a5210b-7601-1def-02ff-12fc52eeb701\"}}}', 1, '0.00000', 1),
(695, 11, 'commune.aiguesvives-herault@orange.fr', '+33607990452', 3, '2020-03-02 14:35:02', '{\"@attributes\":{\"batchid\":\"bc504457-cc33-16e9-0037-12fc552aaa81\"},\"messageheader\":{\"@attributes\":{\"id\":\"04ebb182-019b-12a9-049a-12fc552aa481\"}}}', 1, '0.00000', 1),
(696, 11, 'mairie.boisset@gmail.com', '+33607727231', 3, '2020-03-02 14:35:02', '{\"@attributes\":{\"batchid\":\"fb648388-33d7-17bb-0ce3-12fc552b2581\"},\"messageheader\":{\"@attributes\":{\"id\":\"6b0849d2-ca45-1a1f-02b2-12fc552b1901\"}}}', 1, '0.00000', 1),
(697, 11, 'mairiedecesseras@wanadoo.fr', '+33664091939', 3, '2020-03-02 14:35:03', '{\"@attributes\":{\"batchid\":\"ccd78453-19e4-1e44-0eaf-12fc552bce01\"},\"messageheader\":{\"@attributes\":{\"id\":\"6e4c71ec-f167-1686-0181-12fc552bc201\"}}}', 1, '0.00000', 1),
(698, 11, 'mairiedelaliviniere@wanadoo.fr', '+33687402721', 3, '2020-03-02 14:35:03', '{\"@attributes\":{\"batchid\":\"672f70f8-8bdd-102c-0014-12fc552c5681\"},\"messageheader\":{\"@attributes\":{\"id\":\"8012887c-c3ac-14cc-02fb-12fc552c4a81\"}}}', 1, '0.00000', 1),
(699, 11, 'mairie.oupia@wanadoo.fr', '+33640308581', 3, '2020-03-02 14:35:03', '{\"@attributes\":{\"batchid\":\"95e3f800-af19-1a01-0dd8-12fc552d0681\"},\"messageheader\":{\"@attributes\":{\"id\":\"11b39e15-a38f-11a7-0e1e-12fc552cfb01\"}}}', 1, '0.00000', 1),
(700, 11, 'mairie-de-pardailhan@wanadoo.fr', '+33643191931', 3, '2020-03-02 14:35:04', '{\"@attributes\":{\"batchid\":\"8017c660-03f8-1295-0e76-12fc552e0201\"},\"messageheader\":{\"@attributes\":{\"id\":\"65945bce-58b0-1979-0891-12fc552df681\"}}}', 1, '0.00000', 1),
(701, 11, 'mairie-sjm@orange.fr', '+33630567220', 3, '2020-03-02 14:35:04', '{\"@attributes\":{\"batchid\":\"c4ab9334-8c7b-1285-0c9e-12fc552e0681\"},\"messageheader\":{\"@attributes\":{\"id\":\"a182d313-5bfc-114b-0b58-12fc552e0081\"}}}', 1, '0.00000', 1),
(702, 11, 'mairiedevelieux@laposte.net', '+33611798281', 3, '2020-03-02 14:35:04', '{\"@attributes\":{\"batchid\":\"9f8c217b-1d19-18b8-01fd-12fc552d4e01\"},\"messageheader\":{\"@attributes\":{\"id\":\"f304c743-b5d7-1efe-0e10-12fc552d4581\"}}}', 1, '0.00000', 1),
(703, 11, 'fraisse.yves602@orange.fr', '+33677180248', 3, '2020-03-02 14:35:04', '{\"@attributes\":{\"batchid\":\"c2dc61e3-ac1b-1f1c-0533-12fc552f2e01\"},\"messageheader\":{\"@attributes\":{\"id\":\"d4d436c4-d135-1b49-018e-12fc552f0c01\"}}}', 1, '0.00000', 1),
(704, 11, 'E-mail invalide 4', '+33768283171', 3, '2020-03-02 14:35:05', '{\"@attributes\":{\"batchid\":\"555298ee-642d-11a1-03d0-12fc552fad01\"},\"messageheader\":{\"@attributes\":{\"id\":\"ed2c154c-890d-1e81-0c79-12fc552fa201\"}}}', 1, '0.00000', 1),
(705, 11, 'jpierre.tourret1949@gmail.com', '+33688791923', 3, '2020-03-02 14:35:05', '{\"@attributes\":{\"batchid\":\"c3c56e57-15d8-1f4d-0032-12fc552f0281\"},\"messageheader\":{\"@attributes\":{\"id\":\"6ce4427e-5f77-1799-0677-12fc552efa81\"}}}', 1, '0.00000', 1),
(706, 11, 'harmoniegonzalez@gmail.com', '+33614666566', 3, '2020-03-02 14:35:05', '{\"@attributes\":{\"batchid\":\"2fae15cd-47b0-1ae5-0d1c-12fc55304581\"},\"messageheader\":{\"@attributes\":{\"id\":\"9408b81f-c673-1abb-0dfc-12fc55303d81\"}}}', 1, '0.00000', 1),
(707, 11, 'jeanpierrepastre45@orange.fr', '+33677149339', 3, '2020-03-02 14:35:05', '{\"@attributes\":{\"batchid\":\"35bbe289-e568-198a-0e38-12fc5530c401\"},\"messageheader\":{\"@attributes\":{\"id\":\"4ac80219-1336-1b25-0fa6-12fc5530bc81\"}}}', 1, '0.00000', 1),
(708, 11, 'piva.daniel.enzo@gmail.com', '+33608896941', 3, '2020-03-02 14:35:05', '{\"@attributes\":{\"batchid\":\"123cafec-6bde-1c21-0afc-12fc55316501\"},\"messageheader\":{\"@attributes\":{\"id\":\"8e77b3e3-961a-132f-0e64-12fc55315d01\"}}}', 1, '0.00000', 1),
(709, 11, 'micheltailhades@orange.fr', '+33607148964', 3, '2020-03-02 14:35:05', '{\"@attributes\":{\"batchid\":\"60c0686e-8824-1a17-08a8-12fc5531cc01\"},\"messageheader\":{\"@attributes\":{\"id\":\"3e73c8b7-236e-1d96-0f4a-12fc5531c001\"}}}', 1, '0.00000', 1),
(710, 11, 'renemiralles34@gmail.com', '+33688173047', 3, '2020-03-02 14:35:06', '{\"@attributes\":{\"batchid\":\"c47ab29a-f280-10a0-0c88-12fc5530e101\"},\"messageheader\":{\"@attributes\":{\"id\":\"95c51b52-839a-12df-0a8c-12fc5530d901\"}}}', 1, '0.00000', 1),
(711, 11, 'ams1.olonzac@wanadoo.fr', '+33631377443', 3, '2020-03-02 14:35:06', '{\"@attributes\":{\"batchid\":\"9657648a-7eea-1841-08da-12fc55312a01\"},\"messageheader\":{\"@attributes\":{\"id\":\"0232ecf4-4764-15e7-0826-12fc55312401\"}}}', 1, '0.00000', 1),
(712, 11, 'alainmouly34@gmail.com', '+33680023154', 3, '2020-03-02 14:35:06', '{\"@attributes\":{\"batchid\":\"361c9bb6-3382-1709-02c8-12fc55326901\"},\"messageheader\":{\"@attributes\":{\"id\":\"a0059eea-8fc3-14dc-0f3c-12fc55325c81\"}}}', 1, '0.00000', 1),
(713, 11, 'sebastien.olivares@hotmail.fr', '+33622324432', 3, '2020-03-02 14:35:06', '{\"@attributes\":{\"batchid\":\"ba2511cf-472f-1ad3-0fa1-12fc55333f01\"},\"messageheader\":{\"@attributes\":{\"id\":\"6aed2ed9-4cff-12ee-0c55-12fc55333301\"}}}', 1, '0.00000', 1);

-- --------------------------------------------------------

--
-- Structure de la table `sms_inbox`
--

CREATE TABLE `sms_inbox` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `source` varchar(20) DEFAULT NULL,
  `foreignKey` varchar(250) DEFAULT NULL,
  `read` tinyint(1) NOT NULL DEFAULT '0',
  `readAt` datetime DEFAULT NULL,
  `readby` int(11) DEFAULT NULL,
  `delete` int(11) NOT NULL DEFAULT '0',
  `deleteAt` datetime DEFAULT NULL,
  `deleteBy` int(11) DEFAULT NULL,
  `tel_from` varchar(20) DEFAULT NULL,
  `tel_to` varchar(20) DEFAULT NULL,
  `received_at` datetime DEFAULT NULL,
  `summary` varchar(160) NOT NULL,
  `body` text,
  `count` int(11) DEFAULT NULL,
  `return_api` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `sms_inbox`
--

INSERT INTO `sms_inbox` (`id`, `client_id`, `source`, `foreignKey`, `read`, `readAt`, `readby`, `delete`, `deleteAt`, `deleteBy`, `tel_from`, `tel_to`, `received_at`, `summary`, `body`, `count`, `return_api`) VALUES
(22, 63, 'esendex_v1', '8b4c9372-200f-1954-0935-12360c7d4c02', 0, NULL, NULL, 0, NULL, NULL, '33631377443', '36035', '2019-12-16 13:26:39', 'JE SERAI LA', 'JE SERAI LA', 1, '{\"@attributes\":{\"id\":\"8b4c9372-200f-1954-0935-12360c7d4c02\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/8b4c9372-200f-1954-0935-12360c7d4c02\"},\"reference\":\"EX0287979\",\"status\":\"Submitted\",\"sentat\":\"2019-12-16T13:26:39Z\",\"laststatusat\":\"2019-12-16T13:26:39Z\",\"submittedat\":\"2019-12-16T13:26:39Z\",\"receivedat\":\"2019-12-16T13:26:39Z\",\"type\":\"SMS\",\"to\":{\"phonenumber\":\"36035\"},\"from\":{\"phonenumber\":\"33631377443\"},\"summary\":\"JE SERAI LA\",\"body\":{\"@attributes\":{\"id\":\"8b4c9372-200f-1954-0935-12360c7d4c02\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/8b4c9372-200f-1954-0935-12360c7d4c02\\/body\"}},\"direction\":\"Inbound\",\"parts\":\"1\"}'),
(23, 63, 'esendex_v1', 'b2e637af-b0e1-11cc-0d09-12360c2d3802', 0, NULL, NULL, 0, NULL, NULL, '33676303285', '36035', '2019-12-16 13:25:58', 'Bjr je compte Ãªtre la demain au comitÃ© syndical...', 'Bjr je compte Ãªtre la demain au comitÃ© syndical. Christiane Gros  trassanel ', 2, '{\"@attributes\":{\"id\":\"b2e637af-b0e1-11cc-0d09-12360c2d3802\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/b2e637af-b0e1-11cc-0d09-12360c2d3802\"},\"reference\":\"EX0287979\",\"status\":\"Submitted\",\"sentat\":\"2019-12-16T13:25:58Z\",\"laststatusat\":\"2019-12-16T13:25:58Z\",\"submittedat\":\"2019-12-16T13:25:58Z\",\"receivedat\":\"2019-12-16T13:25:58Z\",\"type\":\"SMS\",\"to\":{\"phonenumber\":\"36035\"},\"from\":{\"phonenumber\":\"33676303285\"},\"summary\":\"Bjr je compte \\u00eatre la demain au comit\\u00e9 syndical...\",\"body\":{\"@attributes\":{\"id\":\"b2e637af-b0e1-11cc-0d09-12360c2d3802\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/b2e637af-b0e1-11cc-0d09-12360c2d3802\\/body\"}},\"direction\":\"Inbound\",\"parts\":\"2\"}'),
(24, 63, 'esendex_v1', 'c8408363-fd5c-12f5-075a-12360c0df802', 0, NULL, NULL, 0, NULL, NULL, '33627594156', '36035', '2019-12-16 13:25:42', 'Je ne pourrai pas Ãªtre prÃ©sent\nMerci de m\'excus...', 'Je ne pourrai pas Ãªtre prÃ©sent\nMerci de m\'excuser\nCordialement \n', 1, '{\"@attributes\":{\"id\":\"c8408363-fd5c-12f5-075a-12360c0df802\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/c8408363-fd5c-12f5-075a-12360c0df802\"},\"reference\":\"EX0287979\",\"status\":\"Submitted\",\"sentat\":\"2019-12-16T13:25:42Z\",\"laststatusat\":\"2019-12-16T13:25:42Z\",\"submittedat\":\"2019-12-16T13:25:42Z\",\"receivedat\":\"2019-12-16T13:25:42Z\",\"type\":\"SMS\",\"to\":{\"phonenumber\":\"36035\"},\"from\":{\"phonenumber\":\"33627594156\"},\"summary\":\"Je ne pourrai pas \\u00eatre pr\\u00e9sent\\nMerci de m\'excus...\",\"body\":{\"@attributes\":{\"id\":\"c8408363-fd5c-12f5-075a-12360c0df802\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/c8408363-fd5c-12f5-075a-12360c0df802\\/body\"}},\"direction\":\"Inbound\",\"parts\":\"1\"}'),
(25, 63, 'esendex_v1', 'cb11c970-d222-155d-091e-12360ad38402', 0, NULL, NULL, 0, NULL, NULL, '33633123581', '36035', '2019-12-16 13:23:01', 'Bonjour,je ne pourrai pas Ãªtre prÃ©sent,mais je ...', 'Bonjour,je ne pourrai pas Ãªtre prÃ©sent,mais je serai reprÃ©sentÃ© par mon supplÃ©ant Mr. Claude OnorrÃ©.\nBonne rÃ©union.\nAmicalement.\nÃ‰mile DELPY\nMaire de PARAZA.', 3, '{\"@attributes\":{\"id\":\"cb11c970-d222-155d-091e-12360ad38402\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/cb11c970-d222-155d-091e-12360ad38402\"},\"reference\":\"EX0287979\",\"status\":\"Submitted\",\"sentat\":\"2019-12-16T13:23:01Z\",\"laststatusat\":\"2019-12-16T13:23:01Z\",\"submittedat\":\"2019-12-16T13:23:01Z\",\"receivedat\":\"2019-12-16T13:23:01Z\",\"type\":\"SMS\",\"to\":{\"phonenumber\":\"36035\"},\"from\":{\"phonenumber\":\"33633123581\"},\"summary\":\"Bonjour,je ne pourrai pas \\u00eatre pr\\u00e9sent,mais je ...\",\"body\":{\"@attributes\":{\"id\":\"cb11c970-d222-155d-091e-12360ad38402\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/cb11c970-d222-155d-091e-12360ad38402\\/body\"}},\"direction\":\"Inbound\",\"parts\":\"3\"}'),
(26, 63, 'esendex_v1', 'ba65eb4b-f0dd-1d2d-0ee1-12360aba2002', 0, NULL, NULL, 0, NULL, NULL, '33615337040', '36035', '2019-12-16 13:22:48', 'Bonjour, \nJe suis indisponible ce jour. \nCordia...', 'Bonjour, \nJe suis indisponible ce jour. \nCordialement, \nAnne ALRANG ', 1, '{\"@attributes\":{\"id\":\"ba65eb4b-f0dd-1d2d-0ee1-12360aba2002\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/ba65eb4b-f0dd-1d2d-0ee1-12360aba2002\"},\"reference\":\"EX0287979\",\"status\":\"Submitted\",\"sentat\":\"2019-12-16T13:22:48Z\",\"laststatusat\":\"2019-12-16T13:22:48Z\",\"submittedat\":\"2019-12-16T13:22:48Z\",\"receivedat\":\"2019-12-16T13:22:48Z\",\"type\":\"SMS\",\"to\":{\"phonenumber\":\"36035\"},\"from\":{\"phonenumber\":\"33615337040\"},\"summary\":\"Bonjour, \\nJe suis indisponible ce jour. \\nCordia...\",\"body\":{\"@attributes\":{\"id\":\"ba65eb4b-f0dd-1d2d-0ee1-12360aba2002\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/ba65eb4b-f0dd-1d2d-0ee1-12360aba2002\\/body\"}},\"direction\":\"Inbound\",\"parts\":\"1\"}'),
(27, 63, 'esendex_v1', 'aa32e392-4bc4-1ca1-09d3-12360ab1c882', 0, NULL, NULL, 0, NULL, NULL, '33614721346', '36035', '2019-12-16 13:22:43', 'Sanchez Didier Villegailhenc sera prÃ©sent.\nBonn...', 'Sanchez Didier Villegailhenc sera prÃ©sent.\nBonne journÃ©e. ', 1, '{\"@attributes\":{\"id\":\"aa32e392-4bc4-1ca1-09d3-12360ab1c882\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/aa32e392-4bc4-1ca1-09d3-12360ab1c882\"},\"reference\":\"EX0287979\",\"status\":\"Submitted\",\"sentat\":\"2019-12-16T13:22:43.73Z\",\"laststatusat\":\"2019-12-16T13:22:43.73Z\",\"submittedat\":\"2019-12-16T13:22:43.73Z\",\"receivedat\":\"2019-12-16T13:22:43.73Z\",\"type\":\"SMS\",\"to\":{\"phonenumber\":\"36035\"},\"from\":{\"phonenumber\":\"33614721346\"},\"summary\":\"Sanchez Didier Villegailhenc sera pr\\u00e9sent.\\nBonn...\",\"body\":{\"@attributes\":{\"id\":\"aa32e392-4bc4-1ca1-09d3-12360ab1c882\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/aa32e392-4bc4-1ca1-09d3-12360ab1c882\\/body\"}},\"direction\":\"Inbound\",\"parts\":\"1\"}'),
(28, 63, 'esendex_v1', 'c5118c68-ef21-1a3f-0ac9-12360a122802', 0, NULL, NULL, 0, NULL, NULL, '33607990452', '36035', '2019-12-16 13:21:22', 'Bonjour je serai prÃ©sent. \nJean Pierre ', 'Bonjour je serai prÃ©sent. \nJean Pierre ', 1, '{\"@attributes\":{\"id\":\"c5118c68-ef21-1a3f-0ac9-12360a122802\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/c5118c68-ef21-1a3f-0ac9-12360a122802\"},\"reference\":\"EX0287979\",\"status\":\"Submitted\",\"sentat\":\"2019-12-16T13:21:22Z\",\"laststatusat\":\"2019-12-16T13:21:22Z\",\"submittedat\":\"2019-12-16T13:21:22Z\",\"receivedat\":\"2019-12-16T13:21:22Z\",\"type\":\"SMS\",\"to\":{\"phonenumber\":\"36035\"},\"from\":{\"phonenumber\":\"33607990452\"},\"summary\":\"Bonjour je serai pr\\u00e9sent. \\nJean Pierre \",\"body\":{\"@attributes\":{\"id\":\"c5118c68-ef21-1a3f-0ac9-12360a122802\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/c5118c68-ef21-1a3f-0ac9-12360a122802\\/body\"}},\"direction\":\"Inbound\",\"parts\":\"1\"}'),
(29, 63, 'esendex_v1', 'cf69a35e-9a6e-1e78-0c99-1236096c2402', 0, NULL, NULL, 0, NULL, NULL, '33670006750', '36035', '2019-12-16 13:19:57', 'Bonjour, j\'ai personnellement rÃ©pondu par retou...', 'Bonjour, j\'ai personnellement rÃ©pondu par retour de mail que je ne pouvais Ãªtre prÃ©sent au comitÃ© syndical du 17/12 et non 19/12 comme vous le dites sur le SMS .\nCe serait bien de prÃ©ciser la date 17 ....ou 19 dÃ©cembre Ã  la liviniere.\nCordialement\nR. PIEDRA', 4, '{\"@attributes\":{\"id\":\"cf69a35e-9a6e-1e78-0c99-1236096c2402\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/cf69a35e-9a6e-1e78-0c99-1236096c2402\"},\"reference\":\"EX0287979\",\"status\":\"Submitted\",\"sentat\":\"2019-12-16T13:19:57Z\",\"laststatusat\":\"2019-12-16T13:19:57Z\",\"submittedat\":\"2019-12-16T13:19:57Z\",\"receivedat\":\"2019-12-16T13:19:57Z\",\"type\":\"SMS\",\"to\":{\"phonenumber\":\"36035\"},\"from\":{\"phonenumber\":\"33670006750\"},\"summary\":\"Bonjour, j\'ai personnellement r\\u00e9pondu par retou...\",\"body\":{\"@attributes\":{\"id\":\"cf69a35e-9a6e-1e78-0c99-1236096c2402\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/cf69a35e-9a6e-1e78-0c99-1236096c2402\\/body\"}},\"direction\":\"Inbound\",\"parts\":\"4\"}'),
(30, 63, 'esendex_v1', '2ca888b2-fb3a-1909-0d80-123607d5e402', 0, NULL, NULL, 0, NULL, NULL, '33624925406', '36035', '2019-12-16 13:16:29', 'Ok a demain \nGÃ©rard Peyrot ', 'Ok a demain \nGÃ©rard Peyrot ', 1, '{\"@attributes\":{\"id\":\"2ca888b2-fb3a-1909-0d80-123607d5e402\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/2ca888b2-fb3a-1909-0d80-123607d5e402\"},\"reference\":\"EX0287979\",\"status\":\"Submitted\",\"sentat\":\"2019-12-16T13:16:29Z\",\"laststatusat\":\"2019-12-16T13:16:29Z\",\"submittedat\":\"2019-12-16T13:16:29Z\",\"receivedat\":\"2019-12-16T13:16:29Z\",\"type\":\"SMS\",\"to\":{\"phonenumber\":\"36035\"},\"from\":{\"phonenumber\":\"33624925406\"},\"summary\":\"Ok a demain \\nG\\u00e9rard Peyrot \",\"body\":{\"@attributes\":{\"id\":\"2ca888b2-fb3a-1909-0d80-123607d5e402\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/2ca888b2-fb3a-1909-0d80-123607d5e402\\/body\"}},\"direction\":\"Inbound\",\"parts\":\"1\"}'),
(31, 63, 'esendex_v1', '845b927b-95e9-123c-0a71-123607b6a402', 0, NULL, NULL, 0, NULL, NULL, '33683716431', '36035', '2019-12-16 13:16:13', 'Absent', 'Absent', 1, '{\"@attributes\":{\"id\":\"845b927b-95e9-123c-0a71-123607b6a402\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/845b927b-95e9-123c-0a71-123607b6a402\"},\"reference\":\"EX0287979\",\"status\":\"Submitted\",\"sentat\":\"2019-12-16T13:16:13Z\",\"laststatusat\":\"2019-12-16T13:16:13Z\",\"submittedat\":\"2019-12-16T13:16:13Z\",\"receivedat\":\"2019-12-16T13:16:13Z\",\"type\":\"SMS\",\"to\":{\"phonenumber\":\"36035\"},\"from\":{\"phonenumber\":\"33683716431\"},\"summary\":\"Absent\",\"body\":{\"@attributes\":{\"id\":\"845b927b-95e9-123c-0a71-123607b6a402\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/845b927b-95e9-123c-0a71-123607b6a402\\/body\"}},\"direction\":\"Inbound\",\"parts\":\"1\"}'),
(32, 63, 'esendex_v1', '2967590c-d05c-13dc-07c5-123617143c02', 0, NULL, NULL, 0, NULL, NULL, '33608896941', '36035', '2019-12-16 13:49:47', 'Mon supplÃ©ant sera prÃ©sent\nCordialement  Mr  piva', 'Mon supplÃ©ant sera prÃ©sent\nCordialement  Mr  piva', 1, '{\"@attributes\":{\"id\":\"2967590c-d05c-13dc-07c5-123617143c02\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/2967590c-d05c-13dc-07c5-123617143c02\"},\"reference\":\"EX0287979\",\"status\":\"Submitted\",\"sentat\":\"2019-12-16T13:49:47Z\",\"laststatusat\":\"2019-12-16T13:49:47Z\",\"submittedat\":\"2019-12-16T13:49:47Z\",\"receivedat\":\"2019-12-16T13:49:47Z\",\"type\":\"SMS\",\"to\":{\"phonenumber\":\"36035\"},\"from\":{\"phonenumber\":\"33608896941\"},\"summary\":\"Mon suppl\\u00e9ant sera pr\\u00e9sent\\nCordialement  Mr  piva\",\"body\":{\"@attributes\":{\"id\":\"2967590c-d05c-13dc-07c5-123617143c02\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/2967590c-d05c-13dc-07c5-123617143c02\\/body\"}},\"direction\":\"Inbound\",\"parts\":\"1\"}'),
(33, 63, 'esendex_v1', '9680de24-2903-1208-0066-123613cc6402', 0, NULL, NULL, 0, NULL, NULL, '33786143638', '36035', '2019-12-16 13:42:37', 'FranÃ§ois Gonzales sera prÃ©sent pour reprÃ©senter...', 'FranÃ§ois Gonzales sera prÃ©sent pour reprÃ©senter la commune de Barbaira Cdlt J Fabre ', 2, '{\"@attributes\":{\"id\":\"9680de24-2903-1208-0066-123613cc6402\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/9680de24-2903-1208-0066-123613cc6402\"},\"reference\":\"EX0287979\",\"status\":\"Submitted\",\"sentat\":\"2019-12-16T13:42:37Z\",\"laststatusat\":\"2019-12-16T13:42:37Z\",\"submittedat\":\"2019-12-16T13:42:37Z\",\"receivedat\":\"2019-12-16T13:42:37Z\",\"type\":\"SMS\",\"to\":{\"phonenumber\":\"36035\"},\"from\":{\"phonenumber\":\"33786143638\"},\"summary\":\"Fran\\u00e7ois Gonzales sera pr\\u00e9sent pour repr\\u00e9senter...\",\"body\":{\"@attributes\":{\"id\":\"9680de24-2903-1208-0066-123613cc6402\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/9680de24-2903-1208-0066-123613cc6402\\/body\"}},\"direction\":\"Inbound\",\"parts\":\"2\"}'),
(34, 63, 'esendex_v1', '292004b6-47f0-11ab-0416-123612e3f802', 0, NULL, NULL, 0, NULL, NULL, '33611798281', '36035', '2019-12-16 13:40:38', 'Je ne serais pas parmi vous a la rÃ©union ma sci...', 'Je ne serais pas parmi vous a la rÃ©union ma sciatique me posse quelque problÃ©me bernard cassan velieux', 1, '{\"@attributes\":{\"id\":\"292004b6-47f0-11ab-0416-123612e3f802\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/292004b6-47f0-11ab-0416-123612e3f802\"},\"reference\":\"EX0287979\",\"status\":\"Submitted\",\"sentat\":\"2019-12-16T13:40:38Z\",\"laststatusat\":\"2019-12-16T13:40:38Z\",\"submittedat\":\"2019-12-16T13:40:38Z\",\"receivedat\":\"2019-12-16T13:40:38Z\",\"type\":\"SMS\",\"to\":{\"phonenumber\":\"36035\"},\"from\":{\"phonenumber\":\"33611798281\"},\"summary\":\"Je ne serais pas parmi vous a la r\\u00e9union ma sci...\",\"body\":{\"@attributes\":{\"id\":\"292004b6-47f0-11ab-0416-123612e3f802\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/292004b6-47f0-11ab-0416-123612e3f802\\/body\"}},\"direction\":\"Inbound\",\"parts\":\"1\"}'),
(35, 63, 'esendex_v1', '143476cb-2e43-1c10-03ae-123611fffc82', 0, NULL, NULL, 0, NULL, NULL, '33670221747', '36035', '2019-12-16 13:38:41', 'Bonjour je serai prÃ©sent Ã  la rÃ©union. Cordiale...', 'Bonjour je serai prÃ©sent Ã  la rÃ©union. Cordialement', 1, '{\"@attributes\":{\"id\":\"143476cb-2e43-1c10-03ae-123611fffc82\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/143476cb-2e43-1c10-03ae-123611fffc82\"},\"reference\":\"EX0287979\",\"status\":\"Submitted\",\"sentat\":\"2019-12-16T13:38:41.273Z\",\"laststatusat\":\"2019-12-16T13:38:41.273Z\",\"submittedat\":\"2019-12-16T13:38:41.273Z\",\"receivedat\":\"2019-12-16T13:38:41.273Z\",\"type\":\"SMS\",\"to\":{\"phonenumber\":\"36035\"},\"from\":{\"phonenumber\":\"33670221747\"},\"summary\":\"Bonjour je serai pr\\u00e9sent \\u00e0 la r\\u00e9union. Cordiale...\",\"body\":{\"@attributes\":{\"id\":\"143476cb-2e43-1c10-03ae-123611fffc82\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/143476cb-2e43-1c10-03ae-123611fffc82\\/body\"}},\"direction\":\"Inbound\",\"parts\":\"1\"}'),
(36, 63, 'esendex_v1', '717be0bc-fcd5-127d-0bde-1236109a0802', 0, NULL, NULL, 0, NULL, NULL, '33683880972', '36035', '2019-12-16 13:35:38', 'Je ne serai pas prÃ©sent \nMerci de bien vouloir ...', 'Je ne serai pas prÃ©sent \nMerci de bien vouloir m\'excuser \nArnaud Albarel ', 1, '{\"@attributes\":{\"id\":\"717be0bc-fcd5-127d-0bde-1236109a0802\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/717be0bc-fcd5-127d-0bde-1236109a0802\"},\"reference\":\"EX0287979\",\"status\":\"Submitted\",\"sentat\":\"2019-12-16T13:35:38Z\",\"laststatusat\":\"2019-12-16T13:35:38Z\",\"submittedat\":\"2019-12-16T13:35:38Z\",\"receivedat\":\"2019-12-16T13:35:38Z\",\"type\":\"SMS\",\"to\":{\"phonenumber\":\"36035\"},\"from\":{\"phonenumber\":\"33683880972\"},\"summary\":\"Je ne serai pas pr\\u00e9sent \\nMerci de bien vouloir ...\",\"body\":{\"@attributes\":{\"id\":\"717be0bc-fcd5-127d-0bde-1236109a0802\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/717be0bc-fcd5-127d-0bde-1236109a0802\\/body\"}},\"direction\":\"Inbound\",\"parts\":\"1\"}'),
(37, 63, 'esendex_v1', 'd87565ba-a3e3-16c5-081b-123610480002', 0, NULL, NULL, 0, NULL, NULL, '33617080402', '36035', '2019-12-16 13:34:56', 'Je pense avoir rÃ©pondu : prÃ©sent ', 'Je pense avoir rÃ©pondu : prÃ©sent ', 1, '{\"@attributes\":{\"id\":\"d87565ba-a3e3-16c5-081b-123610480002\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/d87565ba-a3e3-16c5-081b-123610480002\"},\"reference\":\"EX0287979\",\"status\":\"Submitted\",\"sentat\":\"2019-12-16T13:34:56Z\",\"laststatusat\":\"2019-12-16T13:34:56Z\",\"submittedat\":\"2019-12-16T13:34:56Z\",\"receivedat\":\"2019-12-16T13:34:56Z\",\"type\":\"SMS\",\"to\":{\"phonenumber\":\"36035\"},\"from\":{\"phonenumber\":\"33617080402\"},\"summary\":\"Je pense avoir r\\u00e9pondu : pr\\u00e9sent \",\"body\":{\"@attributes\":{\"id\":\"d87565ba-a3e3-16c5-081b-123610480002\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/d87565ba-a3e3-16c5-081b-123610480002\\/body\"}},\"direction\":\"Inbound\",\"parts\":\"1\"}'),
(38, 63, 'esendex_v1', '4db13dab-0e75-1ee2-09e3-12360f26f002', 0, NULL, NULL, 0, NULL, NULL, '33672505490', '36035', '2019-12-16 13:32:28', 'Bonjour \nJe serai prÃ©sente demain soir mais je ...', 'Bonjour \nJe serai prÃ©sente demain soir mais je devrai partir Ã  19h45 pour Ãªtre prÃ©sente Ã  une rÃ©union Ã  20h30 Ã  Aragon. \nBon aprÃ¨s midi et Ã  demain \nMartine Loubet ', 3, '{\"@attributes\":{\"id\":\"4db13dab-0e75-1ee2-09e3-12360f26f002\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/4db13dab-0e75-1ee2-09e3-12360f26f002\"},\"reference\":\"EX0287979\",\"status\":\"Submitted\",\"sentat\":\"2019-12-16T13:32:28Z\",\"laststatusat\":\"2019-12-16T13:32:28Z\",\"submittedat\":\"2019-12-16T13:32:28Z\",\"receivedat\":\"2019-12-16T13:32:28Z\",\"type\":\"SMS\",\"to\":{\"phonenumber\":\"36035\"},\"from\":{\"phonenumber\":\"33672505490\"},\"summary\":\"Bonjour \\nJe serai pr\\u00e9sente demain soir mais je ...\",\"body\":{\"@attributes\":{\"id\":\"4db13dab-0e75-1ee2-09e3-12360f26f002\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/4db13dab-0e75-1ee2-09e3-12360f26f002\\/body\"}},\"direction\":\"Inbound\",\"parts\":\"3\"}'),
(39, 63, 'esendex_v1', 'ed67722d-9528-10de-0860-12360ea9f002', 0, NULL, NULL, 0, NULL, NULL, '33640896363', '36035', '2019-12-16 13:31:24', 'Monsieur MOYA reprÃ©sentera la commune de Floure...', 'Monsieur MOYA reprÃ©sentera la commune de Floure \nCordialement ', 1, '{\"@attributes\":{\"id\":\"ed67722d-9528-10de-0860-12360ea9f002\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/ed67722d-9528-10de-0860-12360ea9f002\"},\"reference\":\"EX0287979\",\"status\":\"Submitted\",\"sentat\":\"2019-12-16T13:31:24Z\",\"laststatusat\":\"2019-12-16T13:31:24Z\",\"submittedat\":\"2019-12-16T13:31:24Z\",\"receivedat\":\"2019-12-16T13:31:24Z\",\"type\":\"SMS\",\"to\":{\"phonenumber\":\"36035\"},\"from\":{\"phonenumber\":\"33640896363\"},\"summary\":\"Monsieur MOYA repr\\u00e9sentera la commune de Floure...\",\"body\":{\"@attributes\":{\"id\":\"ed67722d-9528-10de-0860-12360ea9f002\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/ed67722d-9528-10de-0860-12360ea9f002\\/body\"}},\"direction\":\"Inbound\",\"parts\":\"1\"}'),
(40, 63, 'esendex_v1', '3887a891-63ef-1e58-0266-123625932c02', 0, NULL, NULL, 0, NULL, NULL, '33688173047', '36035', '2019-12-16 14:21:27', 'Je serai prÃ©sent. Bonne soirÃ©e', 'Je serai prÃ©sent. Bonne soirÃ©e', 1, '{\"@attributes\":{\"id\":\"3887a891-63ef-1e58-0266-123625932c02\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/3887a891-63ef-1e58-0266-123625932c02\"},\"reference\":\"EX0287979\",\"status\":\"Submitted\",\"sentat\":\"2019-12-16T14:21:27Z\",\"laststatusat\":\"2019-12-16T14:21:27Z\",\"submittedat\":\"2019-12-16T14:21:27Z\",\"receivedat\":\"2019-12-16T14:21:27Z\",\"type\":\"SMS\",\"to\":{\"phonenumber\":\"36035\"},\"from\":{\"phonenumber\":\"33688173047\"},\"summary\":\"Je serai pr\\u00e9sent. Bonne soir\\u00e9e\",\"body\":{\"@attributes\":{\"id\":\"3887a891-63ef-1e58-0266-123625932c02\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/3887a891-63ef-1e58-0266-123625932c02\\/body\"}},\"direction\":\"Inbound\",\"parts\":\"1\"}'),
(41, 63, 'esendex_v1', '332629a5-f5e5-183b-0445-123624bc5402', 0, NULL, NULL, 0, NULL, NULL, '33614666566', '36035', '2019-12-16 14:19:37', 'Je serai lÃ  merci de me repreciser l\'heure', 'Je serai lÃ  merci de me repreciser l\'heure', 1, '{\"@attributes\":{\"id\":\"332629a5-f5e5-183b-0445-123624bc5402\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/332629a5-f5e5-183b-0445-123624bc5402\"},\"reference\":\"EX0287979\",\"status\":\"Submitted\",\"sentat\":\"2019-12-16T14:19:37Z\",\"laststatusat\":\"2019-12-16T14:19:37Z\",\"submittedat\":\"2019-12-16T14:19:37Z\",\"receivedat\":\"2019-12-16T14:19:37Z\",\"type\":\"SMS\",\"to\":{\"phonenumber\":\"36035\"},\"from\":{\"phonenumber\":\"33614666566\"},\"summary\":\"Je serai l\\u00e0 merci de me repreciser l\'heure\",\"body\":{\"@attributes\":{\"id\":\"332629a5-f5e5-183b-0445-123624bc5402\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/332629a5-f5e5-183b-0445-123624bc5402\\/body\"}},\"direction\":\"Inbound\",\"parts\":\"1\"}'),
(42, 63, 'esendex_v1', '52f238a5-3536-1e8c-01d6-12362450e802', 0, NULL, NULL, 0, NULL, NULL, '33608896941', '36035', '2019-12-16 14:18:42', 'Mon supplÃ©ant sera prÃ©sent', 'Mon supplÃ©ant sera prÃ©sent', 1, '{\"@attributes\":{\"id\":\"52f238a5-3536-1e8c-01d6-12362450e802\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/52f238a5-3536-1e8c-01d6-12362450e802\"},\"reference\":\"EX0287979\",\"status\":\"Submitted\",\"sentat\":\"2019-12-16T14:18:42Z\",\"laststatusat\":\"2019-12-16T14:18:42Z\",\"submittedat\":\"2019-12-16T14:18:42Z\",\"receivedat\":\"2019-12-16T14:18:42Z\",\"type\":\"SMS\",\"to\":{\"phonenumber\":\"36035\"},\"from\":{\"phonenumber\":\"33608896941\"},\"summary\":\"Mon suppl\\u00e9ant sera pr\\u00e9sent\",\"body\":{\"@attributes\":{\"id\":\"52f238a5-3536-1e8c-01d6-12362450e802\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/52f238a5-3536-1e8c-01d6-12362450e802\\/body\"}},\"direction\":\"Inbound\",\"parts\":\"1\"}'),
(43, 63, 'esendex_v1', 'c606202b-369a-1f4d-056d-1236235ad002', 0, NULL, NULL, 0, NULL, NULL, '33680023154', '36035', '2019-12-16 14:16:36', 'Toutes mes excuses mais je ne puis Ãªtre prÃ©sent.', 'Toutes mes excuses mais je ne puis Ãªtre prÃ©sent.', 1, '{\"@attributes\":{\"id\":\"c606202b-369a-1f4d-056d-1236235ad002\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/c606202b-369a-1f4d-056d-1236235ad002\"},\"reference\":\"EX0287979\",\"status\":\"Submitted\",\"sentat\":\"2019-12-16T14:16:36Z\",\"laststatusat\":\"2019-12-16T14:16:36Z\",\"submittedat\":\"2019-12-16T14:16:36Z\",\"receivedat\":\"2019-12-16T14:16:36Z\",\"type\":\"SMS\",\"to\":{\"phonenumber\":\"36035\"},\"from\":{\"phonenumber\":\"33680023154\"},\"summary\":\"Toutes mes excuses mais je ne puis \\u00eatre pr\\u00e9sent.\",\"body\":{\"@attributes\":{\"id\":\"c606202b-369a-1f4d-056d-1236235ad002\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/c606202b-369a-1f4d-056d-1236235ad002\\/body\"}},\"direction\":\"Inbound\",\"parts\":\"1\"}'),
(44, 63, 'esendex_v1', '4b27118e-8757-1f3d-0706-123621903a02', 0, NULL, NULL, 0, NULL, NULL, '33622986996', '36035', '2019-12-16 14:12:41', 'Bonjour\nJe ne pourrai Ãªtre prÃ©sent, trop loin e...', 'Bonjour\nJe ne pourrai Ãªtre prÃ©sent, trop loin et trop tÃ´t pour moi\nBien cordialement\nJÃ©rÃ´me ', 2, '{\"@attributes\":{\"id\":\"4b27118e-8757-1f3d-0706-123621903a02\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/4b27118e-8757-1f3d-0706-123621903a02\"},\"reference\":\"EX0287979\",\"status\":\"Submitted\",\"sentat\":\"2019-12-16T14:12:41.203Z\",\"laststatusat\":\"2019-12-16T14:12:41.203Z\",\"submittedat\":\"2019-12-16T14:12:41.203Z\",\"receivedat\":\"2019-12-16T14:12:41.203Z\",\"type\":\"SMS\",\"to\":{\"phonenumber\":\"36035\"},\"from\":{\"phonenumber\":\"33622986996\"},\"summary\":\"Bonjour\\nJe ne pourrai \\u00eatre pr\\u00e9sent, trop loin e...\",\"body\":{\"@attributes\":{\"id\":\"4b27118e-8757-1f3d-0706-123621903a02\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/4b27118e-8757-1f3d-0706-123621903a02\\/body\"}},\"direction\":\"Inbound\",\"parts\":\"2\"}'),
(45, 63, 'esendex_v1', '0123f142-1ebf-1f71-05f5-1236211cd302', 0, NULL, NULL, 0, NULL, NULL, '33614721346', '36035', '2019-12-16 14:11:42', 'Sanchez Didier Villegailhenc sera prÃ©sent Ã  la ...', 'Sanchez Didier Villegailhenc sera prÃ©sent Ã  la liviniere. ', 1, '{\"@attributes\":{\"id\":\"0123f142-1ebf-1f71-05f5-1236211cd302\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/0123f142-1ebf-1f71-05f5-1236211cd302\"},\"reference\":\"EX0287979\",\"status\":\"Submitted\",\"sentat\":\"2019-12-16T14:11:42.12Z\",\"laststatusat\":\"2019-12-16T14:11:42.12Z\",\"submittedat\":\"2019-12-16T14:11:42.12Z\",\"receivedat\":\"2019-12-16T14:11:42.12Z\",\"type\":\"SMS\",\"to\":{\"phonenumber\":\"36035\"},\"from\":{\"phonenumber\":\"33614721346\"},\"summary\":\"Sanchez Didier Villegailhenc sera pr\\u00e9sent \\u00e0 la ...\",\"body\":{\"@attributes\":{\"id\":\"0123f142-1ebf-1f71-05f5-1236211cd302\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/0123f142-1ebf-1f71-05f5-1236211cd302\\/body\"}},\"direction\":\"Inbound\",\"parts\":\"1\"}'),
(46, 63, 'esendex_v1', '37398244-5d2a-1274-0094-12361f151002', 0, NULL, NULL, 0, NULL, NULL, '33679990720', '36035', '2019-12-16 14:07:16', 'Absent jppelix', 'Absent jppelix', 1, '{\"@attributes\":{\"id\":\"37398244-5d2a-1274-0094-12361f151002\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/37398244-5d2a-1274-0094-12361f151002\"},\"reference\":\"EX0287979\",\"status\":\"Submitted\",\"sentat\":\"2019-12-16T14:07:16Z\",\"laststatusat\":\"2019-12-16T14:07:16Z\",\"submittedat\":\"2019-12-16T14:07:16Z\",\"receivedat\":\"2019-12-16T14:07:16Z\",\"type\":\"SMS\",\"to\":{\"phonenumber\":\"36035\"},\"from\":{\"phonenumber\":\"33679990720\"},\"summary\":\"Absent jppelix\",\"body\":{\"@attributes\":{\"id\":\"37398244-5d2a-1274-0094-12361f151002\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/37398244-5d2a-1274-0094-12361f151002\\/body\"}},\"direction\":\"Inbound\",\"parts\":\"1\"}'),
(47, 63, 'esendex_v1', 'eab3401a-a0df-1e79-0bde-12361eee0002', 0, NULL, NULL, 0, NULL, NULL, '33658851776', '36035', '2019-12-16 14:06:56', 'Serai prÃ©sente. Bernadette Sire. ', 'Serai prÃ©sente. Bernadette Sire. ', 1, '{\"@attributes\":{\"id\":\"eab3401a-a0df-1e79-0bde-12361eee0002\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/eab3401a-a0df-1e79-0bde-12361eee0002\"},\"reference\":\"EX0287979\",\"status\":\"Submitted\",\"sentat\":\"2019-12-16T14:06:56Z\",\"laststatusat\":\"2019-12-16T14:06:56Z\",\"submittedat\":\"2019-12-16T14:06:56Z\",\"receivedat\":\"2019-12-16T14:06:56Z\",\"type\":\"SMS\",\"to\":{\"phonenumber\":\"36035\"},\"from\":{\"phonenumber\":\"33658851776\"},\"summary\":\"Serai pr\\u00e9sente. Bernadette Sire. \",\"body\":{\"@attributes\":{\"id\":\"eab3401a-a0df-1e79-0bde-12361eee0002\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/eab3401a-a0df-1e79-0bde-12361eee0002\\/body\"}},\"direction\":\"Inbound\",\"parts\":\"1\"}'),
(48, 63, 'esendex_v1', '29939402-f109-1f1e-0ee0-12361e5bd282', 0, NULL, NULL, 0, NULL, NULL, '33670221747', '36035', '2019-12-16 14:05:41', 'Oui il me semblait bien que la date Ã©tait le 17...', 'Oui il me semblait bien que la date Ã©tait le 17 et je serai prÃ©sent cordialement', 1, '{\"@attributes\":{\"id\":\"29939402-f109-1f1e-0ee0-12361e5bd282\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/29939402-f109-1f1e-0ee0-12361e5bd282\"},\"reference\":\"EX0287979\",\"status\":\"Submitted\",\"sentat\":\"2019-12-16T14:05:41.157Z\",\"laststatusat\":\"2019-12-16T14:05:41.157Z\",\"submittedat\":\"2019-12-16T14:05:41.157Z\",\"receivedat\":\"2019-12-16T14:05:41.157Z\",\"type\":\"SMS\",\"to\":{\"phonenumber\":\"36035\"},\"from\":{\"phonenumber\":\"33670221747\"},\"summary\":\"Oui il me semblait bien que la date \\u00e9tait le 17...\",\"body\":{\"@attributes\":{\"id\":\"29939402-f109-1f1e-0ee0-12361e5bd282\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/29939402-f109-1f1e-0ee0-12361e5bd282\\/body\"}},\"direction\":\"Inbound\",\"parts\":\"1\"}'),
(49, 63, 'esendex_v1', '92d003ec-9dea-1f4d-062f-12361d86a002', 0, NULL, NULL, 0, NULL, NULL, '33607114372', '36035', '2019-12-16 14:03:52', 'Je ne pourrai pas assister au conseil syndical ...', 'Je ne pourrai pas assister au conseil syndical Veuillez m\'en excuser Alain Estival', 1, '{\"@attributes\":{\"id\":\"92d003ec-9dea-1f4d-062f-12361d86a002\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/92d003ec-9dea-1f4d-062f-12361d86a002\"},\"reference\":\"EX0287979\",\"status\":\"Submitted\",\"sentat\":\"2019-12-16T14:03:52Z\",\"laststatusat\":\"2019-12-16T14:03:52Z\",\"submittedat\":\"2019-12-16T14:03:52Z\",\"receivedat\":\"2019-12-16T14:03:52Z\",\"type\":\"SMS\",\"to\":{\"phonenumber\":\"36035\"},\"from\":{\"phonenumber\":\"33607114372\"},\"summary\":\"Je ne pourrai pas assister au conseil syndical ...\",\"body\":{\"@attributes\":{\"id\":\"92d003ec-9dea-1f4d-062f-12361d86a002\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/92d003ec-9dea-1f4d-062f-12361d86a002\\/body\"}},\"direction\":\"Inbound\",\"parts\":\"1\"}'),
(50, 63, 'esendex_v1', 'fd62807e-e0cb-1675-045f-12361d3e5c02', 0, NULL, NULL, 0, NULL, NULL, '33685725347', '36035', '2019-12-16 14:03:15', 'DÃ©solÃ© pas possible d\'Ãªtre Ã  la rÃ©union du 17/1...', 'DÃ©solÃ© pas possible d\'Ãªtre Ã  la rÃ©union du 17/12 ni moi ni mon supplÃ©ant \nCordialement \nGerard Dauzat', 2, '{\"@attributes\":{\"id\":\"fd62807e-e0cb-1675-045f-12361d3e5c02\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/fd62807e-e0cb-1675-045f-12361d3e5c02\"},\"reference\":\"EX0287979\",\"status\":\"Submitted\",\"sentat\":\"2019-12-16T14:03:15Z\",\"laststatusat\":\"2019-12-16T14:03:15Z\",\"submittedat\":\"2019-12-16T14:03:15Z\",\"receivedat\":\"2019-12-16T14:03:15Z\",\"type\":\"SMS\",\"to\":{\"phonenumber\":\"36035\"},\"from\":{\"phonenumber\":\"33685725347\"},\"summary\":\"D\\u00e9sol\\u00e9 pas possible d\'\\u00eatre \\u00e0 la r\\u00e9union du 17\\/1...\",\"body\":{\"@attributes\":{\"id\":\"fd62807e-e0cb-1675-045f-12361d3e5c02\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/fd62807e-e0cb-1675-045f-12361d3e5c02\\/body\"}},\"direction\":\"Inbound\",\"parts\":\"2\"}'),
(51, 63, 'esendex_v1', '63493498-beb3-18c2-062a-12362fa93402', 0, NULL, NULL, 0, NULL, NULL, '33609568240', '36035', '2019-12-16 14:43:29', 'Je crois que je vous ai rÃ©pondu mais dans le do...', 'Je crois que je vous ai rÃ©pondu mais dans le doute je vous confirme que je serai prÃ©sent \nCordialement \nOttorino Coassin ', 1, '{\"@attributes\":{\"id\":\"63493498-beb3-18c2-062a-12362fa93402\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/63493498-beb3-18c2-062a-12362fa93402\"},\"reference\":\"EX0287979\",\"status\":\"Submitted\",\"sentat\":\"2019-12-16T14:43:29Z\",\"laststatusat\":\"2019-12-16T14:43:29Z\",\"submittedat\":\"2019-12-16T14:43:29Z\",\"receivedat\":\"2019-12-16T14:43:29Z\",\"type\":\"SMS\",\"to\":{\"phonenumber\":\"36035\"},\"from\":{\"phonenumber\":\"33609568240\"},\"summary\":\"Je crois que je vous ai r\\u00e9pondu mais dans le do...\",\"body\":{\"@attributes\":{\"id\":\"63493498-beb3-18c2-062a-12362fa93402\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/63493498-beb3-18c2-062a-12362fa93402\\/body\"}},\"direction\":\"Inbound\",\"parts\":\"1\"}'),
(52, 63, 'esendex_v1', '208479e4-e0ec-11c8-0773-123629c17c02', 0, NULL, NULL, 0, NULL, NULL, '33611798281', '36035', '2019-12-16 14:30:35', 'Sms vous est parvenu pour annuler velieux', 'Sms vous est parvenu pour annuler velieux', 1, '{\"@attributes\":{\"id\":\"208479e4-e0ec-11c8-0773-123629c17c02\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/208479e4-e0ec-11c8-0773-123629c17c02\"},\"reference\":\"EX0287979\",\"status\":\"Submitted\",\"sentat\":\"2019-12-16T14:30:35Z\",\"laststatusat\":\"2019-12-16T14:30:35Z\",\"submittedat\":\"2019-12-16T14:30:35Z\",\"receivedat\":\"2019-12-16T14:30:35Z\",\"type\":\"SMS\",\"to\":{\"phonenumber\":\"36035\"},\"from\":{\"phonenumber\":\"33611798281\"},\"summary\":\"Sms vous est parvenu pour annuler velieux\",\"body\":{\"@attributes\":{\"id\":\"208479e4-e0ec-11c8-0773-123629c17c02\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/208479e4-e0ec-11c8-0773-123629c17c02\\/body\"}},\"direction\":\"Inbound\",\"parts\":\"1\"}'),
(53, 63, 'esendex_v1', 'f8576f07-1feb-170b-0491-12363e536b82', 0, NULL, NULL, 0, NULL, NULL, '33685912744', '36035', '2019-12-16 15:15:31', 'C\'est ok pour moi', 'C\'est ok pour moi', 1, '{\"@attributes\":{\"id\":\"f8576f07-1feb-170b-0491-12363e536b82\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/f8576f07-1feb-170b-0491-12363e536b82\"},\"reference\":\"EX0287979\",\"status\":\"Submitted\",\"sentat\":\"2019-12-16T15:15:31.16Z\",\"laststatusat\":\"2019-12-16T15:15:31.16Z\",\"submittedat\":\"2019-12-16T15:15:31.16Z\",\"receivedat\":\"2019-12-16T15:15:31.16Z\",\"type\":\"SMS\",\"to\":{\"phonenumber\":\"36035\"},\"from\":{\"phonenumber\":\"33685912744\"},\"summary\":\"C\'est ok pour moi\",\"body\":{\"@attributes\":{\"id\":\"f8576f07-1feb-170b-0491-12363e536b82\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/f8576f07-1feb-170b-0491-12363e536b82\\/body\"}},\"direction\":\"Inbound\",\"parts\":\"1\"}'),
(54, 63, 'esendex_v1', '7d090b46-967b-135b-07b3-12364c0ebc02', 0, NULL, NULL, 0, NULL, NULL, '33784563678', '36035', '2019-12-16 15:45:31', 'Ok pour moi \nA Fabre. ', 'Ok pour moi \nA Fabre. ', 1, '{\"@attributes\":{\"id\":\"7d090b46-967b-135b-07b3-12364c0ebc02\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/7d090b46-967b-135b-07b3-12364c0ebc02\"},\"reference\":\"EX0287979\",\"status\":\"Submitted\",\"sentat\":\"2019-12-16T15:45:31Z\",\"laststatusat\":\"2019-12-16T15:45:31Z\",\"submittedat\":\"2019-12-16T15:45:31Z\",\"receivedat\":\"2019-12-16T15:45:31Z\",\"type\":\"SMS\",\"to\":{\"phonenumber\":\"36035\"},\"from\":{\"phonenumber\":\"33784563678\"},\"summary\":\"Ok pour moi \\nA Fabre. \",\"body\":{\"@attributes\":{\"id\":\"7d090b46-967b-135b-07b3-12364c0ebc02\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/7d090b46-967b-135b-07b3-12364c0ebc02\\/body\"}},\"direction\":\"Inbound\",\"parts\":\"1\"}'),
(55, 63, 'esendex_v1', 'dd2d2ad0-05cb-159d-0de8-12365e528402', 0, NULL, NULL, 0, NULL, NULL, '33677180248', '36035', '2019-12-16 16:25:25', 'Je serai absent ', 'Je serai absent ', 1, '{\"@attributes\":{\"id\":\"dd2d2ad0-05cb-159d-0de8-12365e528402\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/dd2d2ad0-05cb-159d-0de8-12365e528402\"},\"reference\":\"EX0287979\",\"status\":\"Submitted\",\"sentat\":\"2019-12-16T16:25:25Z\",\"laststatusat\":\"2019-12-16T16:25:25Z\",\"submittedat\":\"2019-12-16T16:25:25Z\",\"receivedat\":\"2019-12-16T16:25:25Z\",\"type\":\"SMS\",\"to\":{\"phonenumber\":\"36035\"},\"from\":{\"phonenumber\":\"33677180248\"},\"summary\":\"Je serai absent \",\"body\":{\"@attributes\":{\"id\":\"dd2d2ad0-05cb-159d-0de8-12365e528402\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/dd2d2ad0-05cb-159d-0de8-12365e528402\\/body\"}},\"direction\":\"Inbound\",\"parts\":\"1\"}'),
(56, 63, 'esendex_v1', '20032423-c2a3-142a-0845-123674c0b402', 0, NULL, NULL, 0, NULL, NULL, '33684844034', '36035', '2019-12-16 17:14:25', 'Maire de limousis ok', 'Maire de limousis ok', 1, '{\"@attributes\":{\"id\":\"20032423-c2a3-142a-0845-123674c0b402\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/20032423-c2a3-142a-0845-123674c0b402\"},\"reference\":\"EX0287979\",\"status\":\"Submitted\",\"sentat\":\"2019-12-16T17:14:25Z\",\"laststatusat\":\"2019-12-16T17:14:25Z\",\"submittedat\":\"2019-12-16T17:14:25Z\",\"receivedat\":\"2019-12-16T17:14:25Z\",\"type\":\"SMS\",\"to\":{\"phonenumber\":\"36035\"},\"from\":{\"phonenumber\":\"33684844034\"},\"summary\":\"Maire de limousis ok\",\"body\":{\"@attributes\":{\"id\":\"20032423-c2a3-142a-0845-123674c0b402\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/20032423-c2a3-142a-0845-123674c0b402\\/body\"}},\"direction\":\"Inbound\",\"parts\":\"1\"}'),
(57, 63, 'esendex_v1', 'a5c4d877-02cd-1821-0c90-12367088a002', 0, NULL, NULL, 0, NULL, NULL, '33688798098', '36035', '2019-12-16 17:05:12', 'Bonjour ok pour la rÃ©union de demain. Laso Gabr...', 'Bonjour ok pour la rÃ©union de demain. Laso Gabriel. Ste Nazaire ', 1, '{\"@attributes\":{\"id\":\"a5c4d877-02cd-1821-0c90-12367088a002\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/a5c4d877-02cd-1821-0c90-12367088a002\"},\"reference\":\"EX0287979\",\"status\":\"Submitted\",\"sentat\":\"2019-12-16T17:05:12Z\",\"laststatusat\":\"2019-12-16T17:05:12Z\",\"submittedat\":\"2019-12-16T17:05:12Z\",\"receivedat\":\"2019-12-16T17:05:12Z\",\"type\":\"SMS\",\"to\":{\"phonenumber\":\"36035\"},\"from\":{\"phonenumber\":\"33688798098\"},\"summary\":\"Bonjour ok pour la r\\u00e9union de demain. Laso Gabr...\",\"body\":{\"@attributes\":{\"id\":\"a5c4d877-02cd-1821-0c90-12367088a002\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/a5c4d877-02cd-1821-0c90-12367088a002\\/body\"}},\"direction\":\"Inbound\",\"parts\":\"1\"}'),
(58, 63, 'esendex_v1', '2b2246a1-e46b-156f-02d8-12369e8fd402', 0, NULL, NULL, 0, NULL, NULL, '33680410327', '36035', '2019-12-16 18:45:45', 'Bonsoir,\nJe serai absent, je vous demande de bi...', 'Bonsoir,\nJe serai absent, je vous demande de bien vouloir prÃ©senter mes excuses.\nMerci.', 1, '{\"@attributes\":{\"id\":\"2b2246a1-e46b-156f-02d8-12369e8fd402\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/2b2246a1-e46b-156f-02d8-12369e8fd402\"},\"reference\":\"EX0287979\",\"status\":\"Submitted\",\"sentat\":\"2019-12-16T18:45:45Z\",\"laststatusat\":\"2019-12-16T18:45:45Z\",\"submittedat\":\"2019-12-16T18:45:45Z\",\"receivedat\":\"2019-12-16T18:45:45Z\",\"type\":\"SMS\",\"to\":{\"phonenumber\":\"36035\"},\"from\":{\"phonenumber\":\"33680410327\"},\"summary\":\"Bonsoir,\\nJe serai absent, je vous demande de bi...\",\"body\":{\"@attributes\":{\"id\":\"2b2246a1-e46b-156f-02d8-12369e8fd402\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/2b2246a1-e46b-156f-02d8-12369e8fd402\\/body\"}},\"direction\":\"Inbound\",\"parts\":\"1\"}'),
(59, 63, 'esendex_v1', 'd686d43b-43f8-128b-0337-1236b991e402', 0, NULL, NULL, 0, NULL, NULL, '33685065381', '36035', '2019-12-16 19:44:45', 'Bonjour je suis actuellement indisponible \nPaul...', 'Bonjour je suis actuellement indisponible \nPaul RAMONEDA ', 1, '{\"@attributes\":{\"id\":\"d686d43b-43f8-128b-0337-1236b991e402\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/d686d43b-43f8-128b-0337-1236b991e402\"},\"reference\":\"EX0287979\",\"status\":\"Submitted\",\"sentat\":\"2019-12-16T19:44:45Z\",\"laststatusat\":\"2019-12-16T19:44:45Z\",\"submittedat\":\"2019-12-16T19:44:45Z\",\"receivedat\":\"2019-12-16T19:44:45Z\",\"type\":\"SMS\",\"to\":{\"phonenumber\":\"36035\"},\"from\":{\"phonenumber\":\"33685065381\"},\"summary\":\"Bonjour je suis actuellement indisponible \\nPaul...\",\"body\":{\"@attributes\":{\"id\":\"d686d43b-43f8-128b-0337-1236b991e402\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/d686d43b-43f8-128b-0337-1236b991e402\\/body\"}},\"direction\":\"Inbound\",\"parts\":\"1\"}'),
(60, 63, 'esendex_v1', '454f5ac5-49a4-1d79-01fa-1236c3afbc02', 0, NULL, NULL, 0, NULL, NULL, '33679792229', '36035', '2019-12-16 20:06:51', 'Bonsoir\nJe vous reconfirme que Josette Sabata e...', 'Bonsoir\nJe vous reconfirme que Josette Sabata et RENÃ‰ MirallÃ¨s seront absents le 17 Ã  la LiviniÃ¨re .mairie de Capendu', 1, '{\"@attributes\":{\"id\":\"454f5ac5-49a4-1d79-01fa-1236c3afbc02\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/454f5ac5-49a4-1d79-01fa-1236c3afbc02\"},\"reference\":\"EX0287979\",\"status\":\"Submitted\",\"sentat\":\"2019-12-16T20:06:51Z\",\"laststatusat\":\"2019-12-16T20:06:51Z\",\"submittedat\":\"2019-12-16T20:06:51Z\",\"receivedat\":\"2019-12-16T20:06:51Z\",\"type\":\"SMS\",\"to\":{\"phonenumber\":\"36035\"},\"from\":{\"phonenumber\":\"33679792229\"},\"summary\":\"Bonsoir\\nJe vous reconfirme que Josette Sabata e...\",\"body\":{\"@attributes\":{\"id\":\"454f5ac5-49a4-1d79-01fa-1236c3afbc02\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/454f5ac5-49a4-1d79-01fa-1236c3afbc02\\/body\"}},\"direction\":\"Inbound\",\"parts\":\"1\"}'),
(61, 63, 'esendex_v1', '2ea6ba1e-cb04-1769-0d29-123855919c02', 0, NULL, NULL, 0, NULL, NULL, '33768283171', '36035', '2019-12-17 10:44:46', 'Nous serons 2 a participer Ã  la rÃ¨union', 'Nous serons 2 a participer Ã  la rÃ¨union', 1, '{\"@attributes\":{\"id\":\"2ea6ba1e-cb04-1769-0d29-123855919c02\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/2ea6ba1e-cb04-1769-0d29-123855919c02\"},\"reference\":\"EX0287979\",\"status\":\"Submitted\",\"sentat\":\"2019-12-17T10:44:46.52Z\",\"laststatusat\":\"2019-12-17T10:44:46.52Z\",\"submittedat\":\"2019-12-17T10:44:46.52Z\",\"receivedat\":\"2019-12-17T10:44:46.52Z\",\"type\":\"SMS\",\"to\":{\"phonenumber\":\"36035\"},\"from\":{\"phonenumber\":\"33768283171\"},\"summary\":\"Nous serons 2 a participer \\u00e0 la r\\u00e8union\",\"body\":{\"@attributes\":{\"id\":\"2ea6ba1e-cb04-1769-0d29-123855919c02\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/2ea6ba1e-cb04-1769-0d29-123855919c02\\/body\"}},\"direction\":\"Inbound\",\"parts\":\"1\"}'),
(62, 63, 'esendex_v1', '55501df1-b94c-16d9-0b90-123854737002', 0, NULL, NULL, 0, NULL, NULL, '33689486469', '36035', '2019-12-17 10:42:20', 'Ok pour Aline Vaujany pouvez vous me reprÃ©ciser...', 'Ok pour Aline Vaujany pouvez vous me reprÃ©ciser l\'heure merci ', 1, '{\"@attributes\":{\"id\":\"55501df1-b94c-16d9-0b90-123854737002\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/55501df1-b94c-16d9-0b90-123854737002\"},\"reference\":\"EX0287979\",\"status\":\"Submitted\",\"sentat\":\"2019-12-17T10:42:20Z\",\"laststatusat\":\"2019-12-17T10:42:20Z\",\"submittedat\":\"2019-12-17T10:42:20Z\",\"receivedat\":\"2019-12-17T10:42:20Z\",\"type\":\"SMS\",\"to\":{\"phonenumber\":\"36035\"},\"from\":{\"phonenumber\":\"33689486469\"},\"summary\":\"Ok pour Aline Vaujany pouvez vous me repr\\u00e9ciser...\",\"body\":{\"@attributes\":{\"id\":\"55501df1-b94c-16d9-0b90-123854737002\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/55501df1-b94c-16d9-0b90-123854737002\\/body\"}},\"direction\":\"Inbound\",\"parts\":\"1\"}'),
(63, 63, 'esendex_v1', 'a0c0c12d-c21e-1cf9-09a3-12386f600402', 0, NULL, NULL, 0, NULL, NULL, '33645178756', '36035', '2019-12-17 11:41:09', 'JÃ‰', 'JÃ‰', 1, '{\"@attributes\":{\"id\":\"a0c0c12d-c21e-1cf9-09a3-12386f600402\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/a0c0c12d-c21e-1cf9-09a3-12386f600402\"},\"reference\":\"EX0287979\",\"status\":\"Submitted\",\"sentat\":\"2019-12-17T11:41:09Z\",\"laststatusat\":\"2019-12-17T11:41:09Z\",\"submittedat\":\"2019-12-17T11:41:09Z\",\"receivedat\":\"2019-12-17T11:41:09Z\",\"type\":\"SMS\",\"to\":{\"phonenumber\":\"36035\"},\"from\":{\"phonenumber\":\"33645178756\"},\"summary\":\"J\\u00c9\",\"body\":{\"@attributes\":{\"id\":\"a0c0c12d-c21e-1cf9-09a3-12386f600402\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/a0c0c12d-c21e-1cf9-09a3-12386f600402\\/body\"}},\"direction\":\"Inbound\",\"parts\":\"1\"}'),
(64, 63, 'esendex_v1', '22d5b5c1-98ec-1155-0116-12d80566e002', 0, NULL, NULL, 0, NULL, NULL, '33786143638', '36035', '2020-02-17 11:08:08', 'Je vous demande de nous excuser au prÃ¨s du PrÃ©s...', 'Je vous demande de nous excuser au prÃ¨s du PrÃ©sident nous avons un conseil de territoire de Car ca agglo ennpresence du PrÃ©sident Banquet prÃ©sence obligatoire  Cdlt J Fabre Barbaira ', 2, '{\"@attributes\":{\"id\":\"22d5b5c1-98ec-1155-0116-12d80566e002\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/22d5b5c1-98ec-1155-0116-12d80566e002\"},\"reference\":\"EX0287979\",\"status\":\"Submitted\",\"sentat\":\"2020-02-17T11:08:08Z\",\"laststatusat\":\"2020-02-17T11:08:08Z\",\"submittedat\":\"2020-02-17T11:08:08Z\",\"receivedat\":\"2020-02-17T11:08:08Z\",\"type\":\"SMS\",\"to\":{\"phonenumber\":\"36035\"},\"from\":{\"phonenumber\":\"33786143638\"},\"summary\":\"Je vous demande de nous excuser au pr\\u00e8s du Pr\\u00e9s...\",\"body\":{\"@attributes\":{\"id\":\"22d5b5c1-98ec-1155-0116-12d80566e002\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/22d5b5c1-98ec-1155-0116-12d80566e002\\/body\"}},\"direction\":\"Inbound\",\"parts\":\"2\"}'),
(65, 63, 'esendex_v1', '8d925391-3d9d-1362-0796-12d80f463802', 0, NULL, NULL, 0, NULL, NULL, '33675190986', '36035', '2020-02-17 11:29:42', 'Bonjour je ne serais pas prÃ©sent Ã  cette rÃ©unio...', 'Bonjour je ne serais pas prÃ©sent Ã  cette rÃ©union et vous prie de bien vouloir m\'excuser \nCordialement \nClaude Bonnet\nMaire des Martys', 1, '{\"@attributes\":{\"id\":\"8d925391-3d9d-1362-0796-12d80f463802\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/8d925391-3d9d-1362-0796-12d80f463802\"},\"reference\":\"EX0287979\",\"status\":\"Submitted\",\"sentat\":\"2020-02-17T11:29:42Z\",\"laststatusat\":\"2020-02-17T11:29:42Z\",\"submittedat\":\"2020-02-17T11:29:42Z\",\"receivedat\":\"2020-02-17T11:29:42Z\",\"type\":\"SMS\",\"to\":{\"phonenumber\":\"36035\"},\"from\":{\"phonenumber\":\"33675190986\"},\"summary\":\"Bonjour je ne serais pas pr\\u00e9sent \\u00e0 cette r\\u00e9unio...\",\"body\":{\"@attributes\":{\"id\":\"8d925391-3d9d-1362-0796-12d80f463802\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/8d925391-3d9d-1362-0796-12d80f463802\\/body\"}},\"direction\":\"Inbound\",\"parts\":\"1\"}'),
(66, 63, 'esendex_v1', '060cde6f-2277-1b9a-0a13-12d80ef62402', 0, NULL, NULL, 0, NULL, NULL, '33624308606', '36035', '2020-02-17 11:29:01', 'Absence villarzel Cabardes ', 'Absence villarzel Cabardes ', 1, '{\"@attributes\":{\"id\":\"060cde6f-2277-1b9a-0a13-12d80ef62402\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/060cde6f-2277-1b9a-0a13-12d80ef62402\"},\"reference\":\"EX0287979\",\"status\":\"Submitted\",\"sentat\":\"2020-02-17T11:29:01Z\",\"laststatusat\":\"2020-02-17T11:29:01Z\",\"submittedat\":\"2020-02-17T11:29:01Z\",\"receivedat\":\"2020-02-17T11:29:01Z\",\"type\":\"SMS\",\"to\":{\"phonenumber\":\"36035\"},\"from\":{\"phonenumber\":\"33624308606\"},\"summary\":\"Absence villarzel Cabardes \",\"body\":{\"@attributes\":{\"id\":\"060cde6f-2277-1b9a-0a13-12d80ef62402\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/060cde6f-2277-1b9a-0a13-12d80ef62402\\/body\"}},\"direction\":\"Inbound\",\"parts\":\"1\"}'),
(67, 63, 'esendex_v1', '84632f24-7e85-1c15-0310-12d80c69cc02', 0, NULL, NULL, 0, NULL, NULL, '33683716431', '36035', '2020-02-17 11:23:27', 'laurent rives cuxac cabardÃ¨s absent', 'laurent rives cuxac cabardÃ¨s absent', 1, '{\"@attributes\":{\"id\":\"84632f24-7e85-1c15-0310-12d80c69cc02\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/84632f24-7e85-1c15-0310-12d80c69cc02\"},\"reference\":\"EX0287979\",\"status\":\"Submitted\",\"sentat\":\"2020-02-17T11:23:27Z\",\"laststatusat\":\"2020-02-17T11:23:27Z\",\"submittedat\":\"2020-02-17T11:23:27Z\",\"receivedat\":\"2020-02-17T11:23:27Z\",\"type\":\"SMS\",\"to\":{\"phonenumber\":\"36035\"},\"from\":{\"phonenumber\":\"33683716431\"},\"summary\":\"laurent rives cuxac cabard\\u00e8s absent\",\"body\":{\"@attributes\":{\"id\":\"84632f24-7e85-1c15-0310-12d80c69cc02\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/84632f24-7e85-1c15-0310-12d80c69cc02\\/body\"}},\"direction\":\"Inbound\",\"parts\":\"1\"}'),
(68, 63, 'esendex_v1', 'ee1bf2dd-a1aa-13cd-0465-12d80bb04002', 0, NULL, NULL, 0, NULL, NULL, '33630411769', '36035', '2020-02-17 11:21:52', 'Riba Albert ', 'Riba Albert ', 1, '{\"@attributes\":{\"id\":\"ee1bf2dd-a1aa-13cd-0465-12d80bb04002\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/ee1bf2dd-a1aa-13cd-0465-12d80bb04002\"},\"reference\":\"EX0287979\",\"status\":\"Submitted\",\"sentat\":\"2020-02-17T11:21:52Z\",\"laststatusat\":\"2020-02-17T11:21:52Z\",\"submittedat\":\"2020-02-17T11:21:52Z\",\"receivedat\":\"2020-02-17T11:21:52Z\",\"type\":\"SMS\",\"to\":{\"phonenumber\":\"36035\"},\"from\":{\"phonenumber\":\"33630411769\"},\"summary\":\"Riba Albert \",\"body\":{\"@attributes\":{\"id\":\"ee1bf2dd-a1aa-13cd-0465-12d80bb04002\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/ee1bf2dd-a1aa-13cd-0465-12d80bb04002\\/body\"}},\"direction\":\"Inbound\",\"parts\":\"1\"}'),
(69, 63, 'esendex_v1', '1ea67faa-4888-11c6-0fe9-12d80b17e802', 0, NULL, NULL, 0, NULL, NULL, '33630411769', '36035', '2020-02-17 11:20:34', 'Bonjour je vous confirme ma prÃ©sence aujourd\'hu...', 'Bonjour je vous confirme ma prÃ©sence aujourd\'hui en bureau Ã  17h30 Ã  Conques ainsi que demain au comitÃ© Syndical Ã  Siran Ã  18h30.', 1, '{\"@attributes\":{\"id\":\"1ea67faa-4888-11c6-0fe9-12d80b17e802\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/1ea67faa-4888-11c6-0fe9-12d80b17e802\"},\"reference\":\"EX0287979\",\"status\":\"Submitted\",\"sentat\":\"2020-02-17T11:20:34Z\",\"laststatusat\":\"2020-02-17T11:20:34Z\",\"submittedat\":\"2020-02-17T11:20:34Z\",\"receivedat\":\"2020-02-17T11:20:34Z\",\"type\":\"SMS\",\"to\":{\"phonenumber\":\"36035\"},\"from\":{\"phonenumber\":\"33630411769\"},\"summary\":\"Bonjour je vous confirme ma pr\\u00e9sence aujourd\'hu...\",\"body\":{\"@attributes\":{\"id\":\"1ea67faa-4888-11c6-0fe9-12d80b17e802\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/1ea67faa-4888-11c6-0fe9-12d80b17e802\\/body\"}},\"direction\":\"Inbound\",\"parts\":\"1\"}');
INSERT INTO `sms_inbox` (`id`, `client_id`, `source`, `foreignKey`, `read`, `readAt`, `readby`, `delete`, `deleteAt`, `deleteBy`, `tel_from`, `tel_to`, `received_at`, `summary`, `body`, `count`, `return_api`) VALUES
(70, 63, 'esendex_v1', 'afa170a0-1a18-134a-079a-12d809d1bc02', 0, NULL, NULL, 0, NULL, NULL, '33677180248', '36035', '2020-02-17 11:17:47', 'Je serai absent. DÃ©solÃ©. Yves Fraisse ', 'Je serai absent. DÃ©solÃ©. Yves Fraisse ', 1, '{\"@attributes\":{\"id\":\"afa170a0-1a18-134a-079a-12d809d1bc02\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/afa170a0-1a18-134a-079a-12d809d1bc02\"},\"reference\":\"EX0287979\",\"status\":\"Submitted\",\"sentat\":\"2020-02-17T11:17:47Z\",\"laststatusat\":\"2020-02-17T11:17:47Z\",\"submittedat\":\"2020-02-17T11:17:47Z\",\"receivedat\":\"2020-02-17T11:17:47Z\",\"type\":\"SMS\",\"to\":{\"phonenumber\":\"36035\"},\"from\":{\"phonenumber\":\"33677180248\"},\"summary\":\"Je serai absent. D\\u00e9sol\\u00e9. Yves Fraisse \",\"body\":{\"@attributes\":{\"id\":\"afa170a0-1a18-134a-079a-12d809d1bc02\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/afa170a0-1a18-134a-079a-12d809d1bc02\\/body\"}},\"direction\":\"Inbound\",\"parts\":\"1\"}'),
(71, 63, 'esendex_v1', 'af13fec4-a0df-1dc1-0642-12d80956b002', 0, NULL, NULL, 0, NULL, NULL, '33643191931', '36035', '2020-02-17 11:16:44', 'Non, dÃ©solÃ©, je ne pourrai pas y Ãªtre. ', 'Non, dÃ©solÃ©, je ne pourrai pas y Ãªtre. ', 1, '{\"@attributes\":{\"id\":\"af13fec4-a0df-1dc1-0642-12d80956b002\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/af13fec4-a0df-1dc1-0642-12d80956b002\"},\"reference\":\"EX0287979\",\"status\":\"Submitted\",\"sentat\":\"2020-02-17T11:16:44Z\",\"laststatusat\":\"2020-02-17T11:16:44Z\",\"submittedat\":\"2020-02-17T11:16:44Z\",\"receivedat\":\"2020-02-17T11:16:44Z\",\"type\":\"SMS\",\"to\":{\"phonenumber\":\"36035\"},\"from\":{\"phonenumber\":\"33643191931\"},\"summary\":\"Non, d\\u00e9sol\\u00e9, je ne pourrai pas y \\u00eatre. \",\"body\":{\"@attributes\":{\"id\":\"af13fec4-a0df-1dc1-0642-12d80956b002\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/af13fec4-a0df-1dc1-0642-12d80956b002\\/body\"}},\"direction\":\"Inbound\",\"parts\":\"1\"}'),
(72, 63, 'esendex_v1', '5af84473-cfa0-1f34-0aac-12d807bc8802', 0, NULL, NULL, 0, NULL, NULL, '33614666566', '36035', '2020-02-17 11:13:14', 'Je serai lÃ ', 'Je serai lÃ ', 1, '{\"@attributes\":{\"id\":\"5af84473-cfa0-1f34-0aac-12d807bc8802\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/5af84473-cfa0-1f34-0aac-12d807bc8802\"},\"reference\":\"EX0287979\",\"status\":\"Submitted\",\"sentat\":\"2020-02-17T11:13:14Z\",\"laststatusat\":\"2020-02-17T11:13:14Z\",\"submittedat\":\"2020-02-17T11:13:14Z\",\"receivedat\":\"2020-02-17T11:13:14Z\",\"type\":\"SMS\",\"to\":{\"phonenumber\":\"36035\"},\"from\":{\"phonenumber\":\"33614666566\"},\"summary\":\"Je serai l\\u00e0\",\"body\":{\"@attributes\":{\"id\":\"5af84473-cfa0-1f34-0aac-12d807bc8802\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/5af84473-cfa0-1f34-0aac-12d807bc8802\\/body\"}},\"direction\":\"Inbound\",\"parts\":\"1\"}'),
(73, 63, 'esendex_v1', '9dfb91b8-273e-1fd9-01c3-12d807919002', 0, NULL, NULL, 0, NULL, NULL, '33640896363', '36035', '2020-02-17 11:12:52', 'Bonjour \nPour Floure il n\'y aura pas de reprÃ©se...', 'Bonjour \nPour Floure il n\'y aura pas de reprÃ©sentants. Nous avons conseil de territoire (agglo Carcassonne)', 1, '{\"@attributes\":{\"id\":\"9dfb91b8-273e-1fd9-01c3-12d807919002\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/9dfb91b8-273e-1fd9-01c3-12d807919002\"},\"reference\":\"EX0287979\",\"status\":\"Submitted\",\"sentat\":\"2020-02-17T11:12:52Z\",\"laststatusat\":\"2020-02-17T11:12:52Z\",\"submittedat\":\"2020-02-17T11:12:52Z\",\"receivedat\":\"2020-02-17T11:12:52Z\",\"type\":\"SMS\",\"to\":{\"phonenumber\":\"36035\"},\"from\":{\"phonenumber\":\"33640896363\"},\"summary\":\"Bonjour \\nPour Floure il n\'y aura pas de repr\\u00e9se...\",\"body\":{\"@attributes\":{\"id\":\"9dfb91b8-273e-1fd9-01c3-12d807919002\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/9dfb91b8-273e-1fd9-01c3-12d807919002\\/body\"}},\"direction\":\"Inbound\",\"parts\":\"1\"}'),
(74, 63, 'esendex_v1', '39bb4ba9-e2f0-1b86-06af-12d8078bb402', 0, NULL, NULL, 0, NULL, NULL, '33608523474', '36035', '2020-02-17 11:12:49', 'Absent.\nCdlt,', 'Absent.\nCdlt,', 1, '{\"@attributes\":{\"id\":\"39bb4ba9-e2f0-1b86-06af-12d8078bb402\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/39bb4ba9-e2f0-1b86-06af-12d8078bb402\"},\"reference\":\"EX0287979\",\"status\":\"Submitted\",\"sentat\":\"2020-02-17T11:12:49Z\",\"laststatusat\":\"2020-02-17T11:12:49Z\",\"submittedat\":\"2020-02-17T11:12:49Z\",\"receivedat\":\"2020-02-17T11:12:49Z\",\"type\":\"SMS\",\"to\":{\"phonenumber\":\"36035\"},\"from\":{\"phonenumber\":\"33608523474\"},\"summary\":\"Absent.\\nCdlt,\",\"body\":{\"@attributes\":{\"id\":\"39bb4ba9-e2f0-1b86-06af-12d8078bb402\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/39bb4ba9-e2f0-1b86-06af-12d8078bb402\\/body\"}},\"direction\":\"Inbound\",\"parts\":\"1\"}'),
(75, 63, 'esendex_v1', '1121b7e2-a315-1ac0-0788-12d807688c02', 0, NULL, NULL, 0, NULL, NULL, '33670006750', '36035', '2020-02-17 11:12:31', 'Bonjour, \nOui je serai prÃ©sent Ã  Siran demain Ã ...', 'Bonjour, \nOui je serai prÃ©sent Ã  Siran demain Ã  18h30.\nRaphaÃ«l PIEDRA', 1, '{\"@attributes\":{\"id\":\"1121b7e2-a315-1ac0-0788-12d807688c02\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/1121b7e2-a315-1ac0-0788-12d807688c02\"},\"reference\":\"EX0287979\",\"status\":\"Submitted\",\"sentat\":\"2020-02-17T11:12:31Z\",\"laststatusat\":\"2020-02-17T11:12:31Z\",\"submittedat\":\"2020-02-17T11:12:31Z\",\"receivedat\":\"2020-02-17T11:12:31Z\",\"type\":\"SMS\",\"to\":{\"phonenumber\":\"36035\"},\"from\":{\"phonenumber\":\"33670006750\"},\"summary\":\"Bonjour, \\nOui je serai pr\\u00e9sent \\u00e0 Siran demain \\u00e0...\",\"body\":{\"@attributes\":{\"id\":\"1121b7e2-a315-1ac0-0788-12d807688c02\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/1121b7e2-a315-1ac0-0788-12d807688c02\\/body\"}},\"direction\":\"Inbound\",\"parts\":\"1\"}'),
(76, 63, 'esendex_v1', 'e59db284-53b8-1f69-08f8-12d8072c0002', 0, NULL, NULL, 0, NULL, NULL, '33682630375', '36035', '2020-02-17 11:12:00', 'Je serai absent, nous avons un conseil de terri...', 'Je serai absent, nous avons un conseil de territoire Agglo Ã  la meme heure... dÃ©solÃ©, bien Ã  vous... Marc Rofes ', 2, '{\"@attributes\":{\"id\":\"e59db284-53b8-1f69-08f8-12d8072c0002\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/e59db284-53b8-1f69-08f8-12d8072c0002\"},\"reference\":\"EX0287979\",\"status\":\"Submitted\",\"sentat\":\"2020-02-17T11:12:00Z\",\"laststatusat\":\"2020-02-17T11:12:00Z\",\"submittedat\":\"2020-02-17T11:12:00Z\",\"receivedat\":\"2020-02-17T11:12:00Z\",\"type\":\"SMS\",\"to\":{\"phonenumber\":\"36035\"},\"from\":{\"phonenumber\":\"33682630375\"},\"summary\":\"Je serai absent, nous avons un conseil de terri...\",\"body\":{\"@attributes\":{\"id\":\"e59db284-53b8-1f69-08f8-12d8072c0002\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/e59db284-53b8-1f69-08f8-12d8072c0002\\/body\"}},\"direction\":\"Inbound\",\"parts\":\"2\"}'),
(77, 63, 'esendex_v1', '2ec19648-81ca-194f-03d1-12d806d42b82', 0, NULL, NULL, 0, NULL, NULL, '33685912744', '36035', '2020-02-17 11:11:15', 'Bonjour,\nJe serais prÃ©sent demain\nCordialement ...', 'Bonjour,\nJe serais prÃ©sent demain\nCordialement \nJean turchetto ', 1, '{\"@attributes\":{\"id\":\"2ec19648-81ca-194f-03d1-12d806d42b82\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/2ec19648-81ca-194f-03d1-12d806d42b82\"},\"reference\":\"EX0287979\",\"status\":\"Submitted\",\"sentat\":\"2020-02-17T11:11:15.03Z\",\"laststatusat\":\"2020-02-17T11:11:15.03Z\",\"submittedat\":\"2020-02-17T11:11:15.03Z\",\"receivedat\":\"2020-02-17T11:11:15.03Z\",\"type\":\"SMS\",\"to\":{\"phonenumber\":\"36035\"},\"from\":{\"phonenumber\":\"33685912744\"},\"summary\":\"Bonjour,\\nJe serais pr\\u00e9sent demain\\nCordialement ...\",\"body\":{\"@attributes\":{\"id\":\"2ec19648-81ca-194f-03d1-12d806d42b82\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/2ec19648-81ca-194f-03d1-12d806d42b82\\/body\"}},\"direction\":\"Inbound\",\"parts\":\"1\"}'),
(78, 63, 'esendex_v1', '3e9cefb6-f2e3-1dec-0376-12d806c67002', 0, NULL, NULL, 0, NULL, NULL, '33658851776', '36035', '2020-02-17 11:11:08', 'PrÃ©sente Ã ', 'PrÃ©sente Ã ', 1, '{\"@attributes\":{\"id\":\"3e9cefb6-f2e3-1dec-0376-12d806c67002\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/3e9cefb6-f2e3-1dec-0376-12d806c67002\"},\"reference\":\"EX0287979\",\"status\":\"Submitted\",\"sentat\":\"2020-02-17T11:11:08Z\",\"laststatusat\":\"2020-02-17T11:11:08Z\",\"submittedat\":\"2020-02-17T11:11:08Z\",\"receivedat\":\"2020-02-17T11:11:08Z\",\"type\":\"SMS\",\"to\":{\"phonenumber\":\"36035\"},\"from\":{\"phonenumber\":\"33658851776\"},\"summary\":\"Pr\\u00e9sente \\u00e0\",\"body\":{\"@attributes\":{\"id\":\"3e9cefb6-f2e3-1dec-0376-12d806c67002\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/3e9cefb6-f2e3-1dec-0376-12d806c67002\\/body\"}},\"direction\":\"Inbound\",\"parts\":\"1\"}'),
(79, 63, 'esendex_v1', '0103740f-ccef-13f4-00d2-12d819508802', 0, NULL, NULL, 0, NULL, NULL, '33685725347', '36035', '2020-02-17 11:51:38', 'je serai prÃ©sent Ã  la rÃ©union\nG Dauzat', 'je serai prÃ©sent Ã  la rÃ©union\nG Dauzat', 1, '{\"@attributes\":{\"id\":\"0103740f-ccef-13f4-00d2-12d819508802\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/0103740f-ccef-13f4-00d2-12d819508802\"},\"reference\":\"EX0287979\",\"status\":\"Submitted\",\"sentat\":\"2020-02-17T11:51:38Z\",\"laststatusat\":\"2020-02-17T11:51:38Z\",\"submittedat\":\"2020-02-17T11:51:38Z\",\"receivedat\":\"2020-02-17T11:51:38Z\",\"type\":\"SMS\",\"to\":{\"phonenumber\":\"36035\"},\"from\":{\"phonenumber\":\"33685725347\"},\"summary\":\"je serai pr\\u00e9sent \\u00e0 la r\\u00e9union\\nG Dauzat\",\"body\":{\"@attributes\":{\"id\":\"0103740f-ccef-13f4-00d2-12d819508802\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/0103740f-ccef-13f4-00d2-12d819508802\\/body\"}},\"direction\":\"Inbound\",\"parts\":\"1\"}'),
(80, 63, 'esendex_v1', 'd0704d25-d847-12c5-0d80-12d819120802', 0, NULL, NULL, 0, NULL, NULL, '33680037532', '36035', '2020-02-17 11:51:06', 'Je vous ai repondu par Ã©mai que Je serai prÃ©sen...', 'Je vous ai repondu par Ã©mai que Je serai prÃ©sente. Donc a demain', 1, '{\"@attributes\":{\"id\":\"d0704d25-d847-12c5-0d80-12d819120802\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/d0704d25-d847-12c5-0d80-12d819120802\"},\"reference\":\"EX0287979\",\"status\":\"Submitted\",\"sentat\":\"2020-02-17T11:51:06Z\",\"laststatusat\":\"2020-02-17T11:51:06Z\",\"submittedat\":\"2020-02-17T11:51:06Z\",\"receivedat\":\"2020-02-17T11:51:06Z\",\"type\":\"SMS\",\"to\":{\"phonenumber\":\"36035\"},\"from\":{\"phonenumber\":\"33680037532\"},\"summary\":\"Je vous ai repondu par \\u00e9mai que Je serai pr\\u00e9sen...\",\"body\":{\"@attributes\":{\"id\":\"d0704d25-d847-12c5-0d80-12d819120802\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/d0704d25-d847-12c5-0d80-12d819120802\\/body\"}},\"direction\":\"Inbound\",\"parts\":\"1\"}'),
(81, 63, 'esendex_v1', '7584cc52-2fe4-1002-0a21-12d81399a402', 0, NULL, NULL, 0, NULL, NULL, '33617080402', '36035', '2020-02-17 11:39:09', 'Absent Max Amouroux', 'Absent Max Amouroux', 1, '{\"@attributes\":{\"id\":\"7584cc52-2fe4-1002-0a21-12d81399a402\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/7584cc52-2fe4-1002-0a21-12d81399a402\"},\"reference\":\"EX0287979\",\"status\":\"Submitted\",\"sentat\":\"2020-02-17T11:39:09Z\",\"laststatusat\":\"2020-02-17T11:39:09Z\",\"submittedat\":\"2020-02-17T11:39:09Z\",\"receivedat\":\"2020-02-17T11:39:09Z\",\"type\":\"SMS\",\"to\":{\"phonenumber\":\"36035\"},\"from\":{\"phonenumber\":\"33617080402\"},\"summary\":\"Absent Max Amouroux\",\"body\":{\"@attributes\":{\"id\":\"7584cc52-2fe4-1002-0a21-12d81399a402\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/7584cc52-2fe4-1002-0a21-12d81399a402\\/body\"}},\"direction\":\"Inbound\",\"parts\":\"1\"}'),
(82, 63, 'esendex_v1', '60c28cfe-36f4-1b76-0043-12d810674802', 0, NULL, NULL, 0, NULL, NULL, '33674246177', '36035', '2020-02-17 11:32:10', 'Serais prÃ©sente.', 'Serais prÃ©sente.', 1, '{\"@attributes\":{\"id\":\"60c28cfe-36f4-1b76-0043-12d810674802\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/60c28cfe-36f4-1b76-0043-12d810674802\"},\"reference\":\"EX0287979\",\"status\":\"Submitted\",\"sentat\":\"2020-02-17T11:32:10Z\",\"laststatusat\":\"2020-02-17T11:32:10Z\",\"submittedat\":\"2020-02-17T11:32:10Z\",\"receivedat\":\"2020-02-17T11:32:10Z\",\"type\":\"SMS\",\"to\":{\"phonenumber\":\"36035\"},\"from\":{\"phonenumber\":\"33674246177\"},\"summary\":\"Serais pr\\u00e9sente.\",\"body\":{\"@attributes\":{\"id\":\"60c28cfe-36f4-1b76-0043-12d810674802\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/60c28cfe-36f4-1b76-0043-12d810674802\\/body\"}},\"direction\":\"Inbound\",\"parts\":\"1\"}'),
(83, 63, 'esendex_v1', 'd84cff6d-4126-112f-0210-12d82ae0a002', 0, NULL, NULL, 0, NULL, NULL, '33679792229', '36035', '2020-02-17 12:30:00', 'Je serai cette fois ci absente comme indiquÃ© da...', 'Je serai cette fois ci absente comme indiquÃ© dans mon mail. Je vais joindre mon remplaÃ§ant pour lui demander s\' il sera lÃ \nBonne journÃ©e', 3, '{\"@attributes\":{\"id\":\"d84cff6d-4126-112f-0210-12d82ae0a002\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/d84cff6d-4126-112f-0210-12d82ae0a002\"},\"reference\":\"EX0287979\",\"status\":\"Submitted\",\"sentat\":\"2020-02-17T12:30:00Z\",\"laststatusat\":\"2020-02-17T12:30:00Z\",\"submittedat\":\"2020-02-17T12:30:00Z\",\"receivedat\":\"2020-02-17T12:30:00Z\",\"type\":\"SMS\",\"to\":{\"phonenumber\":\"36035\"},\"from\":{\"phonenumber\":\"33679792229\"},\"summary\":\"Je serai cette fois ci absente comme indiqu\\u00e9 da...\",\"body\":{\"@attributes\":{\"id\":\"d84cff6d-4126-112f-0210-12d82ae0a002\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/d84cff6d-4126-112f-0210-12d82ae0a002\\/body\"}},\"direction\":\"Inbound\",\"parts\":\"3\"}'),
(84, 63, 'esendex_v1', '80217c78-789c-12bb-0a45-12d82193c402', 0, NULL, NULL, 0, NULL, NULL, '33627594156', '36035', '2020-02-17 12:09:41', 'Bonjour\nMerci de nous excuser pour demain nous ...', 'Bonjour\nMerci de nous excuser pour demain nous ne pourrons Ãªtre avec vous.Bonne rÃ©union\nCdt\nCHIFFRE Guy', 2, '{\"@attributes\":{\"id\":\"80217c78-789c-12bb-0a45-12d82193c402\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/80217c78-789c-12bb-0a45-12d82193c402\"},\"reference\":\"EX0287979\",\"status\":\"Submitted\",\"sentat\":\"2020-02-17T12:09:41Z\",\"laststatusat\":\"2020-02-17T12:09:41Z\",\"submittedat\":\"2020-02-17T12:09:41Z\",\"receivedat\":\"2020-02-17T12:09:41Z\",\"type\":\"SMS\",\"to\":{\"phonenumber\":\"36035\"},\"from\":{\"phonenumber\":\"33627594156\"},\"summary\":\"Bonjour\\nMerci de nous excuser pour demain nous ...\",\"body\":{\"@attributes\":{\"id\":\"80217c78-789c-12bb-0a45-12d82193c402\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/80217c78-789c-12bb-0a45-12d82193c402\\/body\"}},\"direction\":\"Inbound\",\"parts\":\"2\"}'),
(85, 63, 'esendex_v1', '80ccd0ca-96b4-11ad-0072-12d835b8e382', 0, NULL, NULL, 0, NULL, NULL, '33622986996', '36035', '2020-02-17 12:53:41', 'Serait prÃ©sent normalement\n.. ', 'Serait prÃ©sent normalement\n.. ', 1, '{\"@attributes\":{\"id\":\"80ccd0ca-96b4-11ad-0072-12d835b8e382\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/80ccd0ca-96b4-11ad-0072-12d835b8e382\"},\"reference\":\"EX0287979\",\"status\":\"Submitted\",\"sentat\":\"2020-02-17T12:53:41.447Z\",\"laststatusat\":\"2020-02-17T12:53:41.447Z\",\"submittedat\":\"2020-02-17T12:53:41.447Z\",\"receivedat\":\"2020-02-17T12:53:41.447Z\",\"type\":\"SMS\",\"to\":{\"phonenumber\":\"36035\"},\"from\":{\"phonenumber\":\"33622986996\"},\"summary\":\"Serait pr\\u00e9sent normalement\\n.. \",\"body\":{\"@attributes\":{\"id\":\"80ccd0ca-96b4-11ad-0072-12d835b8e382\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/80ccd0ca-96b4-11ad-0072-12d835b8e382\\/body\"}},\"direction\":\"Inbound\",\"parts\":\"1\"}'),
(86, 63, 'esendex_v1', 'e393d569-20fd-1cbb-0066-12d8312de802', 0, NULL, NULL, 0, NULL, NULL, '33688156063', '36035', '2020-02-17 12:43:46', 'Bonjour je serais prÃ©sent Paul malric', 'Bonjour je serais prÃ©sent Paul malric', 1, '{\"@attributes\":{\"id\":\"e393d569-20fd-1cbb-0066-12d8312de802\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/e393d569-20fd-1cbb-0066-12d8312de802\"},\"reference\":\"EX0287979\",\"status\":\"Submitted\",\"sentat\":\"2020-02-17T12:43:46Z\",\"laststatusat\":\"2020-02-17T12:43:46Z\",\"submittedat\":\"2020-02-17T12:43:46Z\",\"receivedat\":\"2020-02-17T12:43:46Z\",\"type\":\"SMS\",\"to\":{\"phonenumber\":\"36035\"},\"from\":{\"phonenumber\":\"33688156063\"},\"summary\":\"Bonjour je serais pr\\u00e9sent Paul malric\",\"body\":{\"@attributes\":{\"id\":\"e393d569-20fd-1cbb-0066-12d8312de802\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/e393d569-20fd-1cbb-0066-12d8312de802\\/body\"}},\"direction\":\"Inbound\",\"parts\":\"1\"}'),
(87, 63, 'esendex_v1', '9f906570-2868-126f-0d5f-12d82ca5c002', 0, NULL, NULL, 0, NULL, NULL, '33662883864', '36035', '2020-02-17 12:33:52', 'Bonjour\n\nJe serai present\nCordialement\nRÃ©gis Cr...', 'Bonjour\n\nJe serai present\nCordialement\nRÃ©gis Cros Mairie de Villardonnel', 1, '{\"@attributes\":{\"id\":\"9f906570-2868-126f-0d5f-12d82ca5c002\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/9f906570-2868-126f-0d5f-12d82ca5c002\"},\"reference\":\"EX0287979\",\"status\":\"Submitted\",\"sentat\":\"2020-02-17T12:33:52Z\",\"laststatusat\":\"2020-02-17T12:33:52Z\",\"submittedat\":\"2020-02-17T12:33:52Z\",\"receivedat\":\"2020-02-17T12:33:52Z\",\"type\":\"SMS\",\"to\":{\"phonenumber\":\"36035\"},\"from\":{\"phonenumber\":\"33662883864\"},\"summary\":\"Bonjour\\n\\nJe serai present\\nCordialement\\nR\\u00e9gis Cr...\",\"body\":{\"@attributes\":{\"id\":\"9f906570-2868-126f-0d5f-12d82ca5c002\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/9f906570-2868-126f-0d5f-12d82ca5c002\\/body\"}},\"direction\":\"Inbound\",\"parts\":\"1\"}'),
(88, 63, 'esendex_v1', '3b7c58fb-028b-1efc-0ecb-12d82b07b002', 0, NULL, NULL, 0, NULL, NULL, '33679792229', '36035', '2020-02-17 12:30:20', 'Josette sabata capendu', 'Josette sabata capendu', 1, '{\"@attributes\":{\"id\":\"3b7c58fb-028b-1efc-0ecb-12d82b07b002\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/3b7c58fb-028b-1efc-0ecb-12d82b07b002\"},\"reference\":\"EX0287979\",\"status\":\"Submitted\",\"sentat\":\"2020-02-17T12:30:20Z\",\"laststatusat\":\"2020-02-17T12:30:20Z\",\"submittedat\":\"2020-02-17T12:30:20Z\",\"receivedat\":\"2020-02-17T12:30:20Z\",\"type\":\"SMS\",\"to\":{\"phonenumber\":\"36035\"},\"from\":{\"phonenumber\":\"33679792229\"},\"summary\":\"Josette sabata capendu\",\"body\":{\"@attributes\":{\"id\":\"3b7c58fb-028b-1efc-0ecb-12d82b07b002\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/3b7c58fb-028b-1efc-0ecb-12d82b07b002\\/body\"}},\"direction\":\"Inbound\",\"parts\":\"1\"}'),
(89, 63, 'esendex_v1', '88afe7a2-db35-1bbb-0591-12d8407be002', 0, NULL, NULL, 0, NULL, NULL, '33607990452', '36035', '2020-02-17 13:17:12', 'Oui je serai prÃ©sent. \nJean Pierre ', 'Oui je serai prÃ©sent. \nJean Pierre ', 1, '{\"@attributes\":{\"id\":\"88afe7a2-db35-1bbb-0591-12d8407be002\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/88afe7a2-db35-1bbb-0591-12d8407be002\"},\"reference\":\"EX0287979\",\"status\":\"Submitted\",\"sentat\":\"2020-02-17T13:17:12Z\",\"laststatusat\":\"2020-02-17T13:17:12Z\",\"submittedat\":\"2020-02-17T13:17:12Z\",\"receivedat\":\"2020-02-17T13:17:12Z\",\"type\":\"SMS\",\"to\":{\"phonenumber\":\"36035\"},\"from\":{\"phonenumber\":\"33607990452\"},\"summary\":\"Oui je serai pr\\u00e9sent. \\nJean Pierre \",\"body\":{\"@attributes\":{\"id\":\"88afe7a2-db35-1bbb-0591-12d8407be002\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/88afe7a2-db35-1bbb-0591-12d8407be002\\/body\"}},\"direction\":\"Inbound\",\"parts\":\"1\"}'),
(90, 63, 'esendex_v1', '04947e9f-f4d1-1701-0561-12d83fbc7802', 0, NULL, NULL, 0, NULL, NULL, '33633123581', '36035', '2020-02-17 13:15:34', 'Bonjour,demain je serai reprÃ©sentÃ© par mon supp...', 'Bonjour,demain je serai reprÃ©sentÃ© par mon supplÃ©ant Mr Claude Onorre.\nPar contre veuillez m\'excuser auprÃ¨s de Mr le PrÃ©sident je ne pourrai pas Ãªtre prÃ©sent au bureau de cet aprÃ¨s-midi.\nCordialement.\nÃ‰mile DELPY\nMaire de PARAZA.', 4, '{\"@attributes\":{\"id\":\"04947e9f-f4d1-1701-0561-12d83fbc7802\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/04947e9f-f4d1-1701-0561-12d83fbc7802\"},\"reference\":\"EX0287979\",\"status\":\"Submitted\",\"sentat\":\"2020-02-17T13:15:34Z\",\"laststatusat\":\"2020-02-17T13:15:34Z\",\"submittedat\":\"2020-02-17T13:15:34Z\",\"receivedat\":\"2020-02-17T13:15:34Z\",\"type\":\"SMS\",\"to\":{\"phonenumber\":\"36035\"},\"from\":{\"phonenumber\":\"33633123581\"},\"summary\":\"Bonjour,demain je serai repr\\u00e9sent\\u00e9 par mon supp...\",\"body\":{\"@attributes\":{\"id\":\"04947e9f-f4d1-1701-0561-12d83fbc7802\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/04947e9f-f4d1-1701-0561-12d83fbc7802\\/body\"}},\"direction\":\"Inbound\",\"parts\":\"4\"}'),
(91, 63, 'esendex_v1', '6de0559b-824f-1f1a-0590-12d839964002', 0, NULL, NULL, 0, NULL, NULL, '33676303285', '36035', '2020-02-17 13:02:08', 'Je confirme ma participation ', 'Je confirme ma participation ', 1, '{\"@attributes\":{\"id\":\"6de0559b-824f-1f1a-0590-12d839964002\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/6de0559b-824f-1f1a-0590-12d839964002\"},\"reference\":\"EX0287979\",\"status\":\"Submitted\",\"sentat\":\"2020-02-17T13:02:08Z\",\"laststatusat\":\"2020-02-17T13:02:08Z\",\"submittedat\":\"2020-02-17T13:02:08Z\",\"receivedat\":\"2020-02-17T13:02:08Z\",\"type\":\"SMS\",\"to\":{\"phonenumber\":\"36035\"},\"from\":{\"phonenumber\":\"33676303285\"},\"summary\":\"Je confirme ma participation \",\"body\":{\"@attributes\":{\"id\":\"6de0559b-824f-1f1a-0590-12d839964002\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/6de0559b-824f-1f1a-0590-12d839964002\\/body\"}},\"direction\":\"Inbound\",\"parts\":\"1\"}'),
(92, 63, 'esendex_v1', '33c6f708-f3ff-1577-0f24-12d8398e7002', 0, NULL, NULL, 0, NULL, NULL, '33676303285', '36035', '2020-02-17 13:02:04', 'Je confirme ma participation ', 'Je confirme ma participation ', 1, '{\"@attributes\":{\"id\":\"33c6f708-f3ff-1577-0f24-12d8398e7002\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/33c6f708-f3ff-1577-0f24-12d8398e7002\"},\"reference\":\"EX0287979\",\"status\":\"Submitted\",\"sentat\":\"2020-02-17T13:02:04Z\",\"laststatusat\":\"2020-02-17T13:02:04Z\",\"submittedat\":\"2020-02-17T13:02:04Z\",\"receivedat\":\"2020-02-17T13:02:04Z\",\"type\":\"SMS\",\"to\":{\"phonenumber\":\"36035\"},\"from\":{\"phonenumber\":\"33676303285\"},\"summary\":\"Je confirme ma participation \",\"body\":{\"@attributes\":{\"id\":\"33c6f708-f3ff-1577-0f24-12d8398e7002\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/33c6f708-f3ff-1577-0f24-12d8398e7002\\/body\"}},\"direction\":\"Inbound\",\"parts\":\"1\"}'),
(93, 63, 'esendex_v1', '83512086-6572-12e3-01ff-12d855bf3c02', 0, NULL, NULL, 0, NULL, NULL, '33683880972', '36035', '2020-02-17 14:03:39', 'Je ne serai pas prÃ©sent \nMerci de bien vouloir ...', 'Je ne serai pas prÃ©sent \nMerci de bien vouloir m\'excuser \nArnaud Albarel ', 1, '{\"@attributes\":{\"id\":\"83512086-6572-12e3-01ff-12d855bf3c02\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/83512086-6572-12e3-01ff-12d855bf3c02\"},\"reference\":\"EX0287979\",\"status\":\"Submitted\",\"sentat\":\"2020-02-17T14:03:39Z\",\"laststatusat\":\"2020-02-17T14:03:39Z\",\"submittedat\":\"2020-02-17T14:03:39Z\",\"receivedat\":\"2020-02-17T14:03:39Z\",\"type\":\"SMS\",\"to\":{\"phonenumber\":\"36035\"},\"from\":{\"phonenumber\":\"33683880972\"},\"summary\":\"Je ne serai pas pr\\u00e9sent \\nMerci de bien vouloir ...\",\"body\":{\"@attributes\":{\"id\":\"83512086-6572-12e3-01ff-12d855bf3c02\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/83512086-6572-12e3-01ff-12d855bf3c02\\/body\"}},\"direction\":\"Inbound\",\"parts\":\"1\"}'),
(94, 63, 'esendex_v1', 'fa161aa1-8e01-1af5-0715-12d8bbc08402', 0, NULL, NULL, 0, NULL, NULL, '33679990720', '36035', '2020-02-17 17:46:29', 'Bonsoir absent car rÃ©union de territoire Ã  la m...', 'Bonsoir absent car rÃ©union de territoire Ã  la meme heure jpp', 1, '{\"@attributes\":{\"id\":\"fa161aa1-8e01-1af5-0715-12d8bbc08402\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/fa161aa1-8e01-1af5-0715-12d8bbc08402\"},\"reference\":\"EX0287979\",\"status\":\"Submitted\",\"sentat\":\"2020-02-17T17:46:29Z\",\"laststatusat\":\"2020-02-17T17:46:29Z\",\"submittedat\":\"2020-02-17T17:46:29Z\",\"receivedat\":\"2020-02-17T17:46:29Z\",\"type\":\"SMS\",\"to\":{\"phonenumber\":\"36035\"},\"from\":{\"phonenumber\":\"33679990720\"},\"summary\":\"Bonsoir absent car r\\u00e9union de territoire \\u00e0 la m...\",\"body\":{\"@attributes\":{\"id\":\"fa161aa1-8e01-1af5-0715-12d8bbc08402\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/fa161aa1-8e01-1af5-0715-12d8bbc08402\\/body\"}},\"direction\":\"Inbound\",\"parts\":\"1\"}'),
(95, 63, 'esendex_v1', '81cdb238-45f1-1190-04ad-12d8e247cc02', 0, NULL, NULL, 0, NULL, NULL, '33607114372', '36035', '2020-02-17 19:10:39', 'Avec mes excuses je ne pourrai pas assister Ã  l...', 'Avec mes excuses je ne pourrai pas assister Ã  la rÃ©union du comitÃ© syndical Cordialement Alain Estival', 1, '{\"@attributes\":{\"id\":\"81cdb238-45f1-1190-04ad-12d8e247cc02\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/81cdb238-45f1-1190-04ad-12d8e247cc02\"},\"reference\":\"EX0287979\",\"status\":\"Submitted\",\"sentat\":\"2020-02-17T19:10:39Z\",\"laststatusat\":\"2020-02-17T19:10:39Z\",\"submittedat\":\"2020-02-17T19:10:39Z\",\"receivedat\":\"2020-02-17T19:10:39Z\",\"type\":\"SMS\",\"to\":{\"phonenumber\":\"36035\"},\"from\":{\"phonenumber\":\"33607114372\"},\"summary\":\"Avec mes excuses je ne pourrai pas assister \\u00e0 l...\",\"body\":{\"@attributes\":{\"id\":\"81cdb238-45f1-1190-04ad-12d8e247cc02\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/81cdb238-45f1-1190-04ad-12d8e247cc02\\/body\"}},\"direction\":\"Inbound\",\"parts\":\"1\"}'),
(96, 63, 'esendex_v1', 'e85598f8-2539-13b4-0ede-12da2489d802', 0, NULL, NULL, 0, NULL, NULL, '33685065381', '36035', '2020-02-18 06:54:38', 'Bonjour \nJe suis dÃ©solÃ© mais je ne suis pas dis...', 'Bonjour \nJe suis dÃ©solÃ© mais je ne suis pas disponible pour le comitÃ© syndical Ã  Siran \nPaul RamonÃ©da ', 1, '{\"@attributes\":{\"id\":\"e85598f8-2539-13b4-0ede-12da2489d802\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/e85598f8-2539-13b4-0ede-12da2489d802\"},\"reference\":\"EX0287979\",\"status\":\"Submitted\",\"sentat\":\"2020-02-18T06:54:38Z\",\"laststatusat\":\"2020-02-18T06:54:38Z\",\"submittedat\":\"2020-02-18T06:54:38Z\",\"receivedat\":\"2020-02-18T06:54:38Z\",\"type\":\"SMS\",\"to\":{\"phonenumber\":\"36035\"},\"from\":{\"phonenumber\":\"33685065381\"},\"summary\":\"Bonjour \\nJe suis d\\u00e9sol\\u00e9 mais je ne suis pas dis...\",\"body\":{\"@attributes\":{\"id\":\"e85598f8-2539-13b4-0ede-12da2489d802\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/e85598f8-2539-13b4-0ede-12da2489d802\\/body\"}},\"direction\":\"Inbound\",\"parts\":\"1\"}'),
(97, 63, 'esendex_v1', 'c1a47d5b-c6a0-1103-0908-12da5e878c02', 0, NULL, NULL, 0, NULL, NULL, '33626748346', '36035', '2020-02-18 09:01:19', 'Je vous ai envoyÃ© un email pour vous dire que M...', 'Je vous ai envoyÃ© un email pour vous dire que Miraval ne serai pas reprÃ©sentÃ©. Cordialement.\nGÃ©rard Fernandez', 1, '{\"@attributes\":{\"id\":\"c1a47d5b-c6a0-1103-0908-12da5e878c02\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/c1a47d5b-c6a0-1103-0908-12da5e878c02\"},\"reference\":\"EX0287979\",\"status\":\"Submitted\",\"sentat\":\"2020-02-18T09:01:19Z\",\"laststatusat\":\"2020-02-18T09:01:19Z\",\"submittedat\":\"2020-02-18T09:01:19Z\",\"receivedat\":\"2020-02-18T09:01:19Z\",\"type\":\"SMS\",\"to\":{\"phonenumber\":\"36035\"},\"from\":{\"phonenumber\":\"33626748346\"},\"summary\":\"Je vous ai envoy\\u00e9 un email pour vous dire que M...\",\"body\":{\"@attributes\":{\"id\":\"c1a47d5b-c6a0-1103-0908-12da5e878c02\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/c1a47d5b-c6a0-1103-0908-12da5e878c02\\/body\"}},\"direction\":\"Inbound\",\"parts\":\"1\"}'),
(98, 63, 'esendex_v1', '66e27c73-3748-17b6-08d1-12daa525ac02', 0, NULL, NULL, 0, NULL, NULL, '33673503271', '36035', '2020-02-18 11:35:35', 'Bonjour \nJe serais absent pour la rÃ©union dÃ©sol...', 'Bonjour \nJe serais absent pour la rÃ©union dÃ©solÃ©  guy caly ', 1, '{\"@attributes\":{\"id\":\"66e27c73-3748-17b6-08d1-12daa525ac02\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/66e27c73-3748-17b6-08d1-12daa525ac02\"},\"reference\":\"EX0287979\",\"status\":\"Submitted\",\"sentat\":\"2020-02-18T11:35:35Z\",\"laststatusat\":\"2020-02-18T11:35:35Z\",\"submittedat\":\"2020-02-18T11:35:35Z\",\"receivedat\":\"2020-02-18T11:35:35Z\",\"type\":\"SMS\",\"to\":{\"phonenumber\":\"36035\"},\"from\":{\"phonenumber\":\"33673503271\"},\"summary\":\"Bonjour \\nJe serais absent pour la r\\u00e9union d\\u00e9sol...\",\"body\":{\"@attributes\":{\"id\":\"66e27c73-3748-17b6-08d1-12daa525ac02\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/66e27c73-3748-17b6-08d1-12daa525ac02\\/body\"}},\"direction\":\"Inbound\",\"parts\":\"1\"}'),
(99, 63, 'esendex_v1', 'dd4a21b3-9045-17f9-0743-12db4739dc02', 0, NULL, NULL, 0, NULL, NULL, '33608896941', '36035', '2020-02-18 17:29:39', 'Mon adjoint sera prÃ©sent \nBien cordialement \nDa...', 'Mon adjoint sera prÃ©sent \nBien cordialement \nDaniel piva', 1, '{\"@attributes\":{\"id\":\"dd4a21b3-9045-17f9-0743-12db4739dc02\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/dd4a21b3-9045-17f9-0743-12db4739dc02\"},\"reference\":\"EX0287979\",\"status\":\"Submitted\",\"sentat\":\"2020-02-18T17:29:39Z\",\"laststatusat\":\"2020-02-18T17:29:39Z\",\"submittedat\":\"2020-02-18T17:29:39Z\",\"receivedat\":\"2020-02-18T17:29:39Z\",\"type\":\"SMS\",\"to\":{\"phonenumber\":\"36035\"},\"from\":{\"phonenumber\":\"33608896941\"},\"summary\":\"Mon adjoint sera pr\\u00e9sent \\nBien cordialement \\nDa...\",\"body\":{\"@attributes\":{\"id\":\"dd4a21b3-9045-17f9-0743-12db4739dc02\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/dd4a21b3-9045-17f9-0743-12db4739dc02\\/body\"}},\"direction\":\"Inbound\",\"parts\":\"1\"}'),
(100, 63, 'esendex_v1', 'e77127be-5e29-1d01-01a3-12fc51a16c02', 0, NULL, NULL, 0, NULL, NULL, '33671014870', '36035', '2020-03-02 13:27:19', 'Je serai prÃ©sent avec mon supplÃ©ant bonne journÃ©e ', 'Je serai prÃ©sent avec mon supplÃ©ant bonne journÃ©e ', 1, '{\"@attributes\":{\"id\":\"e77127be-5e29-1d01-01a3-12fc51a16c02\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/e77127be-5e29-1d01-01a3-12fc51a16c02\"},\"reference\":\"EX0287979\",\"status\":\"Submitted\",\"sentat\":\"2020-03-02T13:27:19Z\",\"laststatusat\":\"2020-03-02T13:27:19Z\",\"submittedat\":\"2020-03-02T13:27:19Z\",\"receivedat\":\"2020-03-02T13:27:19Z\",\"type\":\"SMS\",\"to\":{\"phonenumber\":\"36035\"},\"from\":{\"phonenumber\":\"33671014870\"},\"summary\":\"Je serai pr\\u00e9sent avec mon suppl\\u00e9ant bonne journ\\u00e9e \",\"body\":{\"@attributes\":{\"id\":\"e77127be-5e29-1d01-01a3-12fc51a16c02\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/e77127be-5e29-1d01-01a3-12fc51a16c02\\/body\"}},\"direction\":\"Inbound\",\"parts\":\"1\"}'),
(101, 63, 'esendex_v1', '93c22dbe-cd47-1ad1-083e-12fc5191cc02', 0, NULL, NULL, 0, NULL, NULL, '33670006750', '36035', '2020-03-02 13:27:11', 'Bonjour, je confirme ma prÃ©sence pour mercredi ...', 'Bonjour, je confirme ma prÃ©sence pour mercredi 18h30 Ã  PEPIEUX.\nBonne journÃ©e \nRaphaÃ«l PIEDRA dÃ©lÃ©guÃ© de TREBES', 2, '{\"@attributes\":{\"id\":\"93c22dbe-cd47-1ad1-083e-12fc5191cc02\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/93c22dbe-cd47-1ad1-083e-12fc5191cc02\"},\"reference\":\"EX0287979\",\"status\":\"Submitted\",\"sentat\":\"2020-03-02T13:27:11Z\",\"laststatusat\":\"2020-03-02T13:27:11Z\",\"submittedat\":\"2020-03-02T13:27:11Z\",\"receivedat\":\"2020-03-02T13:27:11Z\",\"type\":\"SMS\",\"to\":{\"phonenumber\":\"36035\"},\"from\":{\"phonenumber\":\"33670006750\"},\"summary\":\"Bonjour, je confirme ma pr\\u00e9sence pour mercredi ...\",\"body\":{\"@attributes\":{\"id\":\"93c22dbe-cd47-1ad1-083e-12fc5191cc02\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/93c22dbe-cd47-1ad1-083e-12fc5191cc02\\/body\"}},\"direction\":\"Inbound\",\"parts\":\"2\"}'),
(102, 63, 'esendex_v1', '0e9e95ab-fdda-1e4a-0854-12fc50da3402', 0, NULL, NULL, 0, NULL, NULL, '33682630375', '36035', '2020-03-02 13:25:37', 'PrÃ©sent ', 'PrÃ©sent ', 1, '{\"@attributes\":{\"id\":\"0e9e95ab-fdda-1e4a-0854-12fc50da3402\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/0e9e95ab-fdda-1e4a-0854-12fc50da3402\"},\"reference\":\"EX0287979\",\"status\":\"Submitted\",\"sentat\":\"2020-03-02T13:25:37Z\",\"laststatusat\":\"2020-03-02T13:25:37Z\",\"submittedat\":\"2020-03-02T13:25:37Z\",\"receivedat\":\"2020-03-02T13:25:37Z\",\"type\":\"SMS\",\"to\":{\"phonenumber\":\"36035\"},\"from\":{\"phonenumber\":\"33682630375\"},\"summary\":\"Pr\\u00e9sent \",\"body\":{\"@attributes\":{\"id\":\"0e9e95ab-fdda-1e4a-0854-12fc50da3402\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/0e9e95ab-fdda-1e4a-0854-12fc50da3402\\/body\"}},\"direction\":\"Inbound\",\"parts\":\"1\"}'),
(103, 63, 'esendex_v1', '2a11c839-0536-1ebd-0cee-12fc4f0d4402', 0, NULL, NULL, 0, NULL, NULL, '33786143638', '36035', '2020-03-02 13:21:41', 'Barbaira excuse dÃ©solÃ© pÃ©riode compliquÃ©e cdlt', 'Barbaira excuse dÃ©solÃ© pÃ©riode compliquÃ©e cdlt', 1, '{\"@attributes\":{\"id\":\"2a11c839-0536-1ebd-0cee-12fc4f0d4402\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/2a11c839-0536-1ebd-0cee-12fc4f0d4402\"},\"reference\":\"EX0287979\",\"status\":\"Submitted\",\"sentat\":\"2020-03-02T13:21:41Z\",\"laststatusat\":\"2020-03-02T13:21:41Z\",\"submittedat\":\"2020-03-02T13:21:41Z\",\"receivedat\":\"2020-03-02T13:21:41Z\",\"type\":\"SMS\",\"to\":{\"phonenumber\":\"36035\"},\"from\":{\"phonenumber\":\"33786143638\"},\"summary\":\"Barbaira excuse d\\u00e9sol\\u00e9 p\\u00e9riode compliqu\\u00e9e cdlt\",\"body\":{\"@attributes\":{\"id\":\"2a11c839-0536-1ebd-0cee-12fc4f0d4402\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/2a11c839-0536-1ebd-0cee-12fc4f0d4402\\/body\"}},\"direction\":\"Inbound\",\"parts\":\"1\"}'),
(104, 63, 'esendex_v1', 'd3da0716-03ea-1a70-0822-12fc60997402', 0, NULL, NULL, 0, NULL, NULL, '33673503271', '36035', '2020-03-02 14:00:01', 'Bonjour je serai absent cause conseil municipal...', 'Bonjour je serai absent cause conseil municipal  18h30 guy caly ', 1, '{\"@attributes\":{\"id\":\"d3da0716-03ea-1a70-0822-12fc60997402\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/d3da0716-03ea-1a70-0822-12fc60997402\"},\"reference\":\"EX0287979\",\"status\":\"Submitted\",\"sentat\":\"2020-03-02T14:00:01Z\",\"laststatusat\":\"2020-03-02T14:00:01Z\",\"submittedat\":\"2020-03-02T14:00:01Z\",\"receivedat\":\"2020-03-02T14:00:01Z\",\"type\":\"SMS\",\"to\":{\"phonenumber\":\"36035\"},\"from\":{\"phonenumber\":\"33673503271\"},\"summary\":\"Bonjour je serai absent cause conseil municipal...\",\"body\":{\"@attributes\":{\"id\":\"d3da0716-03ea-1a70-0822-12fc60997402\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/d3da0716-03ea-1a70-0822-12fc60997402\\/body\"}},\"direction\":\"Inbound\",\"parts\":\"1\"}'),
(105, 63, 'esendex_v1', '0cf7043b-a664-112e-0d4a-12fc5d6cf402', 0, NULL, NULL, 0, NULL, NULL, '33614666566', '36035', '2020-03-02 13:53:05', 'Je serai lÃ ', 'Je serai lÃ ', 1, '{\"@attributes\":{\"id\":\"0cf7043b-a664-112e-0d4a-12fc5d6cf402\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/0cf7043b-a664-112e-0d4a-12fc5d6cf402\"},\"reference\":\"EX0287979\",\"status\":\"Submitted\",\"sentat\":\"2020-03-02T13:53:05Z\",\"laststatusat\":\"2020-03-02T13:53:05Z\",\"submittedat\":\"2020-03-02T13:53:05Z\",\"receivedat\":\"2020-03-02T13:53:05Z\",\"type\":\"SMS\",\"to\":{\"phonenumber\":\"36035\"},\"from\":{\"phonenumber\":\"33614666566\"},\"summary\":\"Je serai l\\u00e0\",\"body\":{\"@attributes\":{\"id\":\"0cf7043b-a664-112e-0d4a-12fc5d6cf402\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/0cf7043b-a664-112e-0d4a-12fc5d6cf402\\/body\"}},\"direction\":\"Inbound\",\"parts\":\"1\"}'),
(106, 63, 'esendex_v1', 'aa1b821a-3815-186b-0f4a-12fc5cf5d002', 0, NULL, NULL, 0, NULL, NULL, '33607990452', '36035', '2020-03-02 13:52:04', 'Je serais prÃ©sent Ã  Pepieux .\nJean Pierre ', 'Je serais prÃ©sent Ã  Pepieux .\nJean Pierre ', 1, '{\"@attributes\":{\"id\":\"aa1b821a-3815-186b-0f4a-12fc5cf5d002\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/aa1b821a-3815-186b-0f4a-12fc5cf5d002\"},\"reference\":\"EX0287979\",\"status\":\"Submitted\",\"sentat\":\"2020-03-02T13:52:04Z\",\"laststatusat\":\"2020-03-02T13:52:04Z\",\"submittedat\":\"2020-03-02T13:52:04Z\",\"receivedat\":\"2020-03-02T13:52:04Z\",\"type\":\"SMS\",\"to\":{\"phonenumber\":\"36035\"},\"from\":{\"phonenumber\":\"33607990452\"},\"summary\":\"Je serais pr\\u00e9sent \\u00e0 Pepieux .\\nJean Pierre \",\"body\":{\"@attributes\":{\"id\":\"aa1b821a-3815-186b-0f4a-12fc5cf5d002\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/aa1b821a-3815-186b-0f4a-12fc5cf5d002\\/body\"}},\"direction\":\"Inbound\",\"parts\":\"1\"}'),
(107, 63, 'esendex_v1', 'e078e075-9fdb-1d03-0521-12fc5bcf8902', 0, NULL, NULL, 0, NULL, NULL, '33614721346', '36035', '2020-03-02 13:49:33', 'Je serai prÃ©sent Ã  PEPIEUX  le 05 Mars amicalem...', 'Je serai prÃ©sent Ã  PEPIEUX  le 05 Mars amicalement  SANCHEZ DIDIER.\nðŸ˜‚ðŸ˜ŽðŸ¤©ðŸ¤”', 2, '{\"@attributes\":{\"id\":\"e078e075-9fdb-1d03-0521-12fc5bcf8902\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/e078e075-9fdb-1d03-0521-12fc5bcf8902\"},\"reference\":\"EX0287979\",\"status\":\"Submitted\",\"sentat\":\"2020-03-02T13:49:33.33Z\",\"laststatusat\":\"2020-03-02T13:49:33.33Z\",\"submittedat\":\"2020-03-02T13:49:33.33Z\",\"receivedat\":\"2020-03-02T13:49:33.33Z\",\"type\":\"SMS\",\"to\":{\"phonenumber\":\"36035\"},\"from\":{\"phonenumber\":\"33614721346\"},\"summary\":\"Je serai pr\\u00e9sent \\u00e0 PEPIEUX  le 05 Mars amicalem...\",\"body\":{\"@attributes\":{\"id\":\"e078e075-9fdb-1d03-0521-12fc5bcf8902\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/e078e075-9fdb-1d03-0521-12fc5bcf8902\\/body\"}},\"direction\":\"Inbound\",\"parts\":\"2\"}'),
(108, 63, 'esendex_v1', 'c92a9f32-0e0b-1bf6-0aa6-12fc59c75c02', 0, NULL, NULL, 0, NULL, NULL, '33658488370', '36035', '2020-03-02 13:45:07', 'Trausse prÃ©sent', 'Trausse prÃ©sent', 1, '{\"@attributes\":{\"id\":\"c92a9f32-0e0b-1bf6-0aa6-12fc59c75c02\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/c92a9f32-0e0b-1bf6-0aa6-12fc59c75c02\"},\"reference\":\"EX0287979\",\"status\":\"Submitted\",\"sentat\":\"2020-03-02T13:45:07Z\",\"laststatusat\":\"2020-03-02T13:45:07Z\",\"submittedat\":\"2020-03-02T13:45:07Z\",\"receivedat\":\"2020-03-02T13:45:07Z\",\"type\":\"SMS\",\"to\":{\"phonenumber\":\"36035\"},\"from\":{\"phonenumber\":\"33658488370\"},\"summary\":\"Trausse pr\\u00e9sent\",\"body\":{\"@attributes\":{\"id\":\"c92a9f32-0e0b-1bf6-0aa6-12fc59c75c02\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/c92a9f32-0e0b-1bf6-0aa6-12fc59c75c02\\/body\"}},\"direction\":\"Inbound\",\"parts\":\"1\"}'),
(109, 63, 'esendex_v1', '742d4b05-49c0-1a53-0fdd-12fc59021802', 0, NULL, NULL, 0, NULL, NULL, '33633846378', '36035', '2020-03-02 13:43:26', 'Bonjour, plusieurs rÃ©unions Ã  la mÃªme heure. DÃ©...', 'Bonjour, plusieurs rÃ©unions Ã  la mÃªme heure. DÃ©solÃ©. Je serai absent.\nMichel JAMMES', 2, '{\"@attributes\":{\"id\":\"742d4b05-49c0-1a53-0fdd-12fc59021802\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/742d4b05-49c0-1a53-0fdd-12fc59021802\"},\"reference\":\"EX0287979\",\"status\":\"Submitted\",\"sentat\":\"2020-03-02T13:43:26Z\",\"laststatusat\":\"2020-03-02T13:43:26Z\",\"submittedat\":\"2020-03-02T13:43:26Z\",\"receivedat\":\"2020-03-02T13:43:26Z\",\"type\":\"SMS\",\"to\":{\"phonenumber\":\"36035\"},\"from\":{\"phonenumber\":\"33633846378\"},\"summary\":\"Bonjour, plusieurs r\\u00e9unions \\u00e0 la m\\u00eame heure. D\\u00e9...\",\"body\":{\"@attributes\":{\"id\":\"742d4b05-49c0-1a53-0fdd-12fc59021802\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/742d4b05-49c0-1a53-0fdd-12fc59021802\\/body\"}},\"direction\":\"Inbound\",\"parts\":\"2\"}'),
(110, 63, 'esendex_v1', '90212ba9-77e9-1ef3-0071-12fc5774e182', 0, NULL, NULL, 0, NULL, NULL, '33768283171', '36035', '2020-03-02 13:40:02', 'Oui je serais present', 'Oui je serais present', 1, '{\"@attributes\":{\"id\":\"90212ba9-77e9-1ef3-0071-12fc5774e182\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/90212ba9-77e9-1ef3-0071-12fc5774e182\"},\"reference\":\"EX0287979\",\"status\":\"Submitted\",\"sentat\":\"2020-03-02T13:40:02.627Z\",\"laststatusat\":\"2020-03-02T13:40:02.627Z\",\"submittedat\":\"2020-03-02T13:40:02.627Z\",\"receivedat\":\"2020-03-02T13:40:02.627Z\",\"type\":\"SMS\",\"to\":{\"phonenumber\":\"36035\"},\"from\":{\"phonenumber\":\"33768283171\"},\"summary\":\"Oui je serais present\",\"body\":{\"@attributes\":{\"id\":\"90212ba9-77e9-1ef3-0071-12fc5774e182\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/90212ba9-77e9-1ef3-0071-12fc5774e182\\/body\"}},\"direction\":\"Inbound\",\"parts\":\"1\"}'),
(111, 63, 'esendex_v1', '3ea29881-5f80-1a51-00b6-12fc56e70802', 0, NULL, NULL, 0, NULL, NULL, '33627594156', '36035', '2020-03-02 13:38:50', 'Nous serons absents\nVeuillez nous en excuser \nC...', 'Nous serons absents\nVeuillez nous en excuser \nCHIFFRE et RIEUSSEC', 1, '{\"@attributes\":{\"id\":\"3ea29881-5f80-1a51-00b6-12fc56e70802\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/3ea29881-5f80-1a51-00b6-12fc56e70802\"},\"reference\":\"EX0287979\",\"status\":\"Submitted\",\"sentat\":\"2020-03-02T13:38:50Z\",\"laststatusat\":\"2020-03-02T13:38:50Z\",\"submittedat\":\"2020-03-02T13:38:50Z\",\"receivedat\":\"2020-03-02T13:38:50Z\",\"type\":\"SMS\",\"to\":{\"phonenumber\":\"36035\"},\"from\":{\"phonenumber\":\"33627594156\"},\"summary\":\"Nous serons absents\\nVeuillez nous en excuser \\nC...\",\"body\":{\"@attributes\":{\"id\":\"3ea29881-5f80-1a51-00b6-12fc56e70802\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/3ea29881-5f80-1a51-00b6-12fc56e70802\\/body\"}},\"direction\":\"Inbound\",\"parts\":\"1\"}'),
(112, 63, 'esendex_v1', 'a2175661-3af8-1993-000f-12fc54b87002', 0, NULL, NULL, 0, NULL, NULL, '33685725347', '36035', '2020-03-02 13:34:04', 'Je serai prÃ©sent \nG Dauzat ', 'Je serai prÃ©sent \nG Dauzat ', 1, '{\"@attributes\":{\"id\":\"a2175661-3af8-1993-000f-12fc54b87002\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/a2175661-3af8-1993-000f-12fc54b87002\"},\"reference\":\"EX0287979\",\"status\":\"Submitted\",\"sentat\":\"2020-03-02T13:34:04Z\",\"laststatusat\":\"2020-03-02T13:34:04Z\",\"submittedat\":\"2020-03-02T13:34:04Z\",\"receivedat\":\"2020-03-02T13:34:04Z\",\"type\":\"SMS\",\"to\":{\"phonenumber\":\"36035\"},\"from\":{\"phonenumber\":\"33685725347\"},\"summary\":\"Je serai pr\\u00e9sent \\nG Dauzat \",\"body\":{\"@attributes\":{\"id\":\"a2175661-3af8-1993-000f-12fc54b87002\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/a2175661-3af8-1993-000f-12fc54b87002\\/body\"}},\"direction\":\"Inbound\",\"parts\":\"1\"}'),
(113, 63, 'esendex_v1', 'afaaa72b-4a3b-1b43-0478-12fc54aeac02', 0, NULL, NULL, 0, NULL, NULL, '33626748346', '36035', '2020-03-02 13:33:59', 'Miraval ne sera pas reprÃ©sentÃ©. Cordialement. G...', 'Miraval ne sera pas reprÃ©sentÃ©. Cordialement. GÃ©rard Fernandez', 1, '{\"@attributes\":{\"id\":\"afaaa72b-4a3b-1b43-0478-12fc54aeac02\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/afaaa72b-4a3b-1b43-0478-12fc54aeac02\"},\"reference\":\"EX0287979\",\"status\":\"Submitted\",\"sentat\":\"2020-03-02T13:33:59Z\",\"laststatusat\":\"2020-03-02T13:33:59Z\",\"submittedat\":\"2020-03-02T13:33:59Z\",\"receivedat\":\"2020-03-02T13:33:59Z\",\"type\":\"SMS\",\"to\":{\"phonenumber\":\"36035\"},\"from\":{\"phonenumber\":\"33626748346\"},\"summary\":\"Miraval ne sera pas repr\\u00e9sent\\u00e9. Cordialement. G...\",\"body\":{\"@attributes\":{\"id\":\"afaaa72b-4a3b-1b43-0478-12fc54aeac02\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/afaaa72b-4a3b-1b43-0478-12fc54aeac02\\/body\"}},\"direction\":\"Inbound\",\"parts\":\"1\"}'),
(114, 63, 'esendex_v1', 'fc714146-4158-18ee-0b33-12fc54146002', 0, NULL, NULL, 0, NULL, NULL, '33676303285', '36035', '2020-03-02 13:32:40', 'Christiane gros ', 'Christiane gros ', 1, '{\"@attributes\":{\"id\":\"fc714146-4158-18ee-0b33-12fc54146002\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/fc714146-4158-18ee-0b33-12fc54146002\"},\"reference\":\"EX0287979\",\"status\":\"Submitted\",\"sentat\":\"2020-03-02T13:32:40Z\",\"laststatusat\":\"2020-03-02T13:32:40Z\",\"submittedat\":\"2020-03-02T13:32:40Z\",\"receivedat\":\"2020-03-02T13:32:40Z\",\"type\":\"SMS\",\"to\":{\"phonenumber\":\"36035\"},\"from\":{\"phonenumber\":\"33676303285\"},\"summary\":\"Christiane gros \",\"body\":{\"@attributes\":{\"id\":\"fc714146-4158-18ee-0b33-12fc54146002\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/fc714146-4158-18ee-0b33-12fc54146002\\/body\"}},\"direction\":\"Inbound\",\"parts\":\"1\"}'),
(115, 63, 'esendex_v1', 'f0e884d9-26e8-19b4-0756-12fc53705002', 0, NULL, NULL, 0, NULL, NULL, '33676303285', '36035', '2020-03-02 13:31:16', 'Je serais la', 'Je serais la', 1, '{\"@attributes\":{\"id\":\"f0e884d9-26e8-19b4-0756-12fc53705002\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/f0e884d9-26e8-19b4-0756-12fc53705002\"},\"reference\":\"EX0287979\",\"status\":\"Submitted\",\"sentat\":\"2020-03-02T13:31:16Z\",\"laststatusat\":\"2020-03-02T13:31:16Z\",\"submittedat\":\"2020-03-02T13:31:16Z\",\"receivedat\":\"2020-03-02T13:31:16Z\",\"type\":\"SMS\",\"to\":{\"phonenumber\":\"36035\"},\"from\":{\"phonenumber\":\"33676303285\"},\"summary\":\"Je serais la\",\"body\":{\"@attributes\":{\"id\":\"f0e884d9-26e8-19b4-0756-12fc53705002\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/f0e884d9-26e8-19b4-0756-12fc53705002\\/body\"}},\"direction\":\"Inbound\",\"parts\":\"1\"}'),
(116, 63, 'esendex_v1', '2869a8cd-5924-193b-0a00-12fc53668c02', 0, NULL, NULL, 0, NULL, NULL, '33676303285', '36035', '2020-03-02 13:31:11', 'Je serais la', 'Je serais la', 1, '{\"@attributes\":{\"id\":\"2869a8cd-5924-193b-0a00-12fc53668c02\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/2869a8cd-5924-193b-0a00-12fc53668c02\"},\"reference\":\"EX0287979\",\"status\":\"Submitted\",\"sentat\":\"2020-03-02T13:31:11Z\",\"laststatusat\":\"2020-03-02T13:31:11Z\",\"submittedat\":\"2020-03-02T13:31:11Z\",\"receivedat\":\"2020-03-02T13:31:11Z\",\"type\":\"SMS\",\"to\":{\"phonenumber\":\"36035\"},\"from\":{\"phonenumber\":\"33676303285\"},\"summary\":\"Je serais la\",\"body\":{\"@attributes\":{\"id\":\"2869a8cd-5924-193b-0a00-12fc53668c02\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/2869a8cd-5924-193b-0a00-12fc53668c02\\/body\"}},\"direction\":\"Inbound\",\"parts\":\"1\"}'),
(117, 63, 'esendex_v1', '01881dc0-62f5-1074-07d5-12fc5306d802', 0, NULL, NULL, 0, NULL, NULL, '33640896363', '36035', '2020-03-02 13:30:22', 'Bonjour \nJe ne suis pas disponible ce jour lÃ . ...', 'Bonjour \nJe ne suis pas disponible ce jour lÃ . Bon conseil syndical et surtout, bon appÃ©tit \nLe Ph.Phalip', 1, '{\"@attributes\":{\"id\":\"01881dc0-62f5-1074-07d5-12fc5306d802\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/01881dc0-62f5-1074-07d5-12fc5306d802\"},\"reference\":\"EX0287979\",\"status\":\"Submitted\",\"sentat\":\"2020-03-02T13:30:22Z\",\"laststatusat\":\"2020-03-02T13:30:22Z\",\"submittedat\":\"2020-03-02T13:30:22Z\",\"receivedat\":\"2020-03-02T13:30:22Z\",\"type\":\"SMS\",\"to\":{\"phonenumber\":\"36035\"},\"from\":{\"phonenumber\":\"33640896363\"},\"summary\":\"Bonjour \\nJe ne suis pas disponible ce jour l\\u00e0. ...\",\"body\":{\"@attributes\":{\"id\":\"01881dc0-62f5-1074-07d5-12fc5306d802\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/01881dc0-62f5-1074-07d5-12fc5306d802\\/body\"}},\"direction\":\"Inbound\",\"parts\":\"1\"}');
INSERT INTO `sms_inbox` (`id`, `client_id`, `source`, `foreignKey`, `read`, `readAt`, `readby`, `delete`, `deleteAt`, `deleteBy`, `tel_from`, `tel_to`, `received_at`, `summary`, `body`, `count`, `return_api`) VALUES
(118, 63, 'esendex_v1', 'c71d55e4-9cdb-12cb-0e58-12fc7a054402', 0, NULL, NULL, 0, NULL, NULL, '33609568240', '36035', '2020-03-02 14:55:33', 'Il me semble que j\'ai rÃ©pondu mais dans le dout...', 'Il me semble que j\'ai rÃ©pondu mais dans le doute je confirme que le serai prÃ©sent. O. Coassin ', 1, '{\"@attributes\":{\"id\":\"c71d55e4-9cdb-12cb-0e58-12fc7a054402\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/c71d55e4-9cdb-12cb-0e58-12fc7a054402\"},\"reference\":\"EX0287979\",\"status\":\"Submitted\",\"sentat\":\"2020-03-02T14:55:33Z\",\"laststatusat\":\"2020-03-02T14:55:33Z\",\"submittedat\":\"2020-03-02T14:55:33Z\",\"receivedat\":\"2020-03-02T14:55:33Z\",\"type\":\"SMS\",\"to\":{\"phonenumber\":\"36035\"},\"from\":{\"phonenumber\":\"33609568240\"},\"summary\":\"Il me semble que j\'ai r\\u00e9pondu mais dans le dout...\",\"body\":{\"@attributes\":{\"id\":\"c71d55e4-9cdb-12cb-0e58-12fc7a054402\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/c71d55e4-9cdb-12cb-0e58-12fc7a054402\\/body\"}},\"direction\":\"Inbound\",\"parts\":\"1\"}'),
(119, 63, 'esendex_v1', '2e49efc7-ff2c-1e13-0e85-12fc7225a402', 0, NULL, NULL, 0, NULL, NULL, '33683880972', '36035', '2020-03-02 14:38:21', 'Je serai absent \nBien cordialement ', 'Je serai absent \nBien cordialement ', 1, '{\"@attributes\":{\"id\":\"2e49efc7-ff2c-1e13-0e85-12fc7225a402\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/2e49efc7-ff2c-1e13-0e85-12fc7225a402\"},\"reference\":\"EX0287979\",\"status\":\"Submitted\",\"sentat\":\"2020-03-02T14:38:21Z\",\"laststatusat\":\"2020-03-02T14:38:21Z\",\"submittedat\":\"2020-03-02T14:38:21Z\",\"receivedat\":\"2020-03-02T14:38:21Z\",\"type\":\"SMS\",\"to\":{\"phonenumber\":\"36035\"},\"from\":{\"phonenumber\":\"33683880972\"},\"summary\":\"Je serai absent \\nBien cordialement \",\"body\":{\"@attributes\":{\"id\":\"2e49efc7-ff2c-1e13-0e85-12fc7225a402\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/2e49efc7-ff2c-1e13-0e85-12fc7225a402\\/body\"}},\"direction\":\"Inbound\",\"parts\":\"1\"}'),
(120, 63, 'esendex_v1', '32b6273d-af94-1db5-0276-12fc71fca002', 0, NULL, NULL, 0, NULL, NULL, '33608523474', '36035', '2020-03-02 14:38:00', 'Absent', 'Absent', 1, '{\"@attributes\":{\"id\":\"32b6273d-af94-1db5-0276-12fc71fca002\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/32b6273d-af94-1db5-0276-12fc71fca002\"},\"reference\":\"EX0287979\",\"status\":\"Submitted\",\"sentat\":\"2020-03-02T14:38:00Z\",\"laststatusat\":\"2020-03-02T14:38:00Z\",\"submittedat\":\"2020-03-02T14:38:00Z\",\"receivedat\":\"2020-03-02T14:38:00Z\",\"type\":\"SMS\",\"to\":{\"phonenumber\":\"36035\"},\"from\":{\"phonenumber\":\"33608523474\"},\"summary\":\"Absent\",\"body\":{\"@attributes\":{\"id\":\"32b6273d-af94-1db5-0276-12fc71fca002\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/32b6273d-af94-1db5-0276-12fc71fca002\\/body\"}},\"direction\":\"Inbound\",\"parts\":\"1\"}'),
(121, 63, 'esendex_v1', '9d5c7e27-b862-144c-0357-12fc708d7002', 0, NULL, NULL, 0, NULL, NULL, '33685065381', '36035', '2020-03-02 14:34:52', 'Bonjour je suis sincÃ¨rement dÃ©solÃ© mais je ne s...', 'Bonjour je suis sincÃ¨rement dÃ©solÃ© mais je ne suis pas disponible pour le comitÃ© syndical Ã  PEPIEUX le 4 mars cordialement \nPaul RamonÃ©da ', 1, '{\"@attributes\":{\"id\":\"9d5c7e27-b862-144c-0357-12fc708d7002\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/9d5c7e27-b862-144c-0357-12fc708d7002\"},\"reference\":\"EX0287979\",\"status\":\"Submitted\",\"sentat\":\"2020-03-02T14:34:52Z\",\"laststatusat\":\"2020-03-02T14:34:52Z\",\"submittedat\":\"2020-03-02T14:34:52Z\",\"receivedat\":\"2020-03-02T14:34:52Z\",\"type\":\"SMS\",\"to\":{\"phonenumber\":\"36035\"},\"from\":{\"phonenumber\":\"33685065381\"},\"summary\":\"Bonjour je suis sinc\\u00e8rement d\\u00e9sol\\u00e9 mais je ne s...\",\"body\":{\"@attributes\":{\"id\":\"9d5c7e27-b862-144c-0357-12fc708d7002\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/9d5c7e27-b862-144c-0357-12fc708d7002\\/body\"}},\"direction\":\"Inbound\",\"parts\":\"1\"}'),
(122, 63, 'esendex_v1', '7df5cd60-a70f-17c0-040e-12fc8893d402', 0, NULL, NULL, 0, NULL, NULL, '33688173047', '36035', '2020-03-02 15:27:21', 'Bonjour, je serai prÃ©sent', 'Bonjour, je serai prÃ©sent', 1, '{\"@attributes\":{\"id\":\"7df5cd60-a70f-17c0-040e-12fc8893d402\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/7df5cd60-a70f-17c0-040e-12fc8893d402\"},\"reference\":\"EX0287979\",\"status\":\"Submitted\",\"sentat\":\"2020-03-02T15:27:21Z\",\"laststatusat\":\"2020-03-02T15:27:21Z\",\"submittedat\":\"2020-03-02T15:27:21Z\",\"receivedat\":\"2020-03-02T15:27:21Z\",\"type\":\"SMS\",\"to\":{\"phonenumber\":\"36035\"},\"from\":{\"phonenumber\":\"33688173047\"},\"summary\":\"Bonjour, je serai pr\\u00e9sent\",\"body\":{\"@attributes\":{\"id\":\"7df5cd60-a70f-17c0-040e-12fc8893d402\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/7df5cd60-a70f-17c0-040e-12fc8893d402\\/body\"}},\"direction\":\"Inbound\",\"parts\":\"1\"}'),
(123, 63, 'esendex_v1', 'ccb9cae6-db59-1e0f-07bb-12fc90c77002', 0, NULL, NULL, 0, NULL, NULL, '33680023154', '36035', '2020-03-02 15:45:16', 'Toutes mes excuses mais je ne puis Ãªtre prÃ©sent...', 'Toutes mes excuses mais je ne puis Ãªtre prÃ©sent. Cordialement. Alain Mouly ', 2, '{\"@attributes\":{\"id\":\"ccb9cae6-db59-1e0f-07bb-12fc90c77002\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/ccb9cae6-db59-1e0f-07bb-12fc90c77002\"},\"reference\":\"EX0287979\",\"status\":\"Submitted\",\"sentat\":\"2020-03-02T15:45:16Z\",\"laststatusat\":\"2020-03-02T15:45:16Z\",\"submittedat\":\"2020-03-02T15:45:16Z\",\"receivedat\":\"2020-03-02T15:45:16Z\",\"type\":\"SMS\",\"to\":{\"phonenumber\":\"36035\"},\"from\":{\"phonenumber\":\"33680023154\"},\"summary\":\"Toutes mes excuses mais je ne puis \\u00eatre pr\\u00e9sent...\",\"body\":{\"@attributes\":{\"id\":\"ccb9cae6-db59-1e0f-07bb-12fc90c77002\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/ccb9cae6-db59-1e0f-07bb-12fc90c77002\\/body\"}},\"direction\":\"Inbound\",\"parts\":\"2\"}'),
(124, 63, 'esendex_v1', 'f31c858c-add7-17d0-0396-12fc9c5cad02', 0, NULL, NULL, 0, NULL, NULL, '33622986996', '36035', '2020-03-02 16:10:34', 'Bonjour\nJe ne pourrai pas Ãªtre prÃ©sent Ã  cette ...', 'Bonjour\nJe ne pourrai pas Ãªtre prÃ©sent Ã  cette rÃ©union\nCordialement', 1, '{\"@attributes\":{\"id\":\"f31c858c-add7-17d0-0396-12fc9c5cad02\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/f31c858c-add7-17d0-0396-12fc9c5cad02\"},\"reference\":\"EX0287979\",\"status\":\"Submitted\",\"sentat\":\"2020-03-02T16:10:34.203Z\",\"laststatusat\":\"2020-03-02T16:10:34.203Z\",\"submittedat\":\"2020-03-02T16:10:34.203Z\",\"receivedat\":\"2020-03-02T16:10:34.203Z\",\"type\":\"SMS\",\"to\":{\"phonenumber\":\"36035\"},\"from\":{\"phonenumber\":\"33622986996\"},\"summary\":\"Bonjour\\nJe ne pourrai pas \\u00eatre pr\\u00e9sent \\u00e0 cette ...\",\"body\":{\"@attributes\":{\"id\":\"f31c858c-add7-17d0-0396-12fc9c5cad02\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/f31c858c-add7-17d0-0396-12fc9c5cad02\\/body\"}},\"direction\":\"Inbound\",\"parts\":\"1\"}'),
(125, 63, 'esendex_v1', '758ccff2-6e2f-1394-03fc-12fc9c1bd402', 0, NULL, NULL, 0, NULL, NULL, '33630411769', '36035', '2020-03-02 16:10:01', 'Bonsoir je vous confirme ma prÃ©sence au comitÃ© ...', 'Bonsoir je vous confirme ma prÃ©sence au comitÃ© syndical de PEPIEUX du mercredi 4 mars 2020 .RIBA  Albert \nRieux Minervois', 1, '{\"@attributes\":{\"id\":\"758ccff2-6e2f-1394-03fc-12fc9c1bd402\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/758ccff2-6e2f-1394-03fc-12fc9c1bd402\"},\"reference\":\"EX0287979\",\"status\":\"Submitted\",\"sentat\":\"2020-03-02T16:10:01Z\",\"laststatusat\":\"2020-03-02T16:10:01Z\",\"submittedat\":\"2020-03-02T16:10:01Z\",\"receivedat\":\"2020-03-02T16:10:01Z\",\"type\":\"SMS\",\"to\":{\"phonenumber\":\"36035\"},\"from\":{\"phonenumber\":\"33630411769\"},\"summary\":\"Bonsoir je vous confirme ma pr\\u00e9sence au comit\\u00e9 ...\",\"body\":{\"@attributes\":{\"id\":\"758ccff2-6e2f-1394-03fc-12fc9c1bd402\",\"uri\":\"https:\\/\\/api.esendex.com\\/v1.0\\/messageheaders\\/758ccff2-6e2f-1394-03fc-12fc9c1bd402\\/body\"}},\"direction\":\"Inbound\",\"parts\":\"1\"}');

-- --------------------------------------------------------

--
-- Structure de la table `sms_listes`
--

CREATE TABLE `sms_listes` (
  `id` int(11) NOT NULL,
  `name` varchar(120) NOT NULL,
  `client_id` int(11) NOT NULL,
  `sms_listes_source_id` int(11) DEFAULT NULL,
  `foreign_key` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `sms_listes`
--

INSERT INTO `sms_listes` (`id`, `name`, `client_id`, `sms_listes_source_id`, `foreign_key`) VALUES
(1, 'Liste Test AudeCentre', 63, NULL, NULL),
(2, 'CA Grand Narbonne Titulaires', 63, 1, '9'),
(3, 'CA Grand Narbonne Suppleants', 63, 1, '10'),
(4, 'Carca Agglo Titulaires', 63, 1, '11'),
(5, 'Carca Agglo Suppleants', 63, 1, '12'),
(6, 'CDC Montagne Noire Titulaires', 63, 1, '13'),
(7, 'CDC Montagne Noire Suppleants', 63, 1, '14'),
(8, 'CDC Sud Herault Titulaires', 63, 1, '15'),
(9, 'CDC Sud Herault Suppleants', 63, 1, '16'),
(10, 'CDC Lezignan Corbieres et Minervois Titulaires', 63, 1, '17'),
(11, 'CDC Lezignan Corbiere et Minervois Suppleants', 63, 1, '19'),
(12, 'CDC Minervois en Caroux Titulaires', 63, 1, '20'),
(13, 'CDC Minvervois en Caroux Suppleants', 63, 1, '21'),
(14, 'Mairies', 63, 1, '23'),
(15, 'DT OK envoi convoc mail', 63, 1, '24'),
(16, 'CAO Titulaires', 63, 1, '25'),
(17, 'DT CB sud minervois', 63, 1, '26'),
(21, 'Personnel AUDE CENTRE', 63, NULL, NULL),
(22, 'AtaDemo', 63, NULL, NULL),
(26, 'CS du 17/12/2019', 63, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `sms_listes_sources`
--

CREATE TABLE `sms_listes_sources` (
  `id` int(11) NOT NULL,
  `name` varchar(120) NOT NULL,
  `client_id` int(11) NOT NULL,
  `db_host` varchar(120) NOT NULL,
  `db_name` varchar(80) NOT NULL,
  `db_user` varchar(120) NOT NULL,
  `db_pass` varchar(120) NOT NULL,
  `db_query_listes` text NOT NULL,
  `db_query_recipients` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `sms_listes_sources`
--

INSERT INTO `sms_listes_sources` (`id`, `name`, `client_id`, `db_host`, `db_name`, `db_user`, `db_pass`, `db_query_listes`, `db_query_recipients`) VALUES
(1, 'Aude Centre DB PhpList', 63, 'mailing.ataraxie.fr', 'phplistSMAC', 'SMAC_ro', 'PIlSRPqHlfGh4dP0', 'SELECT phplist_list.id as list_id, \r\n phplist_list.name as list_name,\r\n phplist_listuser.userid as user_id, \r\n phplist_user_user_attribute.value as user_tel, \r\n phplist_user_user.email as user_name \r\nFROM phplist_user_user_attribute, phplist_listuser, phplist_list, phplist_user_user\r\nWHERE phplist_user_user_attribute.attributeid = 5 \r\nand phplist_user_user_attribute.userid = phplist_listuser.userid\r\nand phplist_listuser.listid = phplist_list.id\r\nand phplist_user_user.id = phplist_user_user_attribute.userid\r\nand phplist_user_user_attribute.value IS NOT NULL\r\nand LENGTH(TRIM(phplist_user_user_attribute.value)) > 0\r\nORDER BY `list_id` ASC', 'SELECT phplist_list.id as list_id, \r\n phplist_list.name as list_name,\r\n phplist_listuser.userid as user_id, \r\n phplist_user_user_attribute.value as user_tel, \r\n phplist_user_user.email as user_name \r\nFROM phplist_user_user_attribute, phplist_listuser, phplist_list, phplist_user_user\r\nWHERE phplist_user_user_attribute.attributeid = 5 \r\nand phplist_user_user_attribute.userid = phplist_listuser.userid\r\nand phplist_listuser.listid = phplist_list.id\r\nand phplist_user_user.id = phplist_user_user_attribute.userid\r\nand phplist_user_user_attribute.value IS NOT NULL\r\nand LENGTH(TRIM(phplist_user_user_attribute.value)) > 0\r\nORDER BY `list_id` ASC');

-- --------------------------------------------------------

--
-- Structure de la table `sms_packages`
--

CREATE TABLE `sms_packages` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `client_id` int(11) NOT NULL,
  `type` enum('PACK','COUNTER') NOT NULL,
  `value` int(11) NOT NULL,
  `active` int(11) NOT NULL DEFAULT '1',
  `outbound` varchar(60) NOT NULL,
  `outbound_auth` varchar(250) DEFAULT NULL,
  `outbound_account` varchar(120) DEFAULT NULL,
  `outbound_inbox` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `sms_packages`
--

INSERT INTO `sms_packages` (`id`, `name`, `client_id`, `type`, `value`, `active`, `outbound`, `outbound_auth`, `outbound_account`, `outbound_inbox`) VALUES
(1, 'Pack au compteur', 63, 'COUNTER', 0, 1, 'esendex_v1', 'Authorization: Basic eWFpemEuYm91cmRvbkBhdGFyYXhpZS5mcjpXSnFuZExlYXc4MA==', 'EX0287979', 1),
(3, 'Pack 3000 SMS', 83, 'PACK', 3000, 1, 'mailjet_v4', 'Authorization: Bearer 67fea7ec62bd4f21ae8a5355da21e2b1', 'mailjet', 0);

-- --------------------------------------------------------

--
-- Structure de la table `sms_packages_histories`
--

CREATE TABLE `sms_packages_histories` (
  `id` int(11) NOT NULL,
  `sms_package_id` int(11) NOT NULL,
  `history` datetime NOT NULL,
  `value` int(11) NOT NULL,
  `comment` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `sms_packages_histories`
--

INSERT INTO `sms_packages_histories` (`id`, `sms_package_id`, `history`, `value`, `comment`) VALUES
(1, 1, '2019-05-01 00:00:00', 0, 'Stats Mai 2019'),
(2, 3, '2019-05-12 10:15:23', 3000, 'Recharge');

-- --------------------------------------------------------

--
-- Structure de la table `sms_recipients`
--

CREATE TABLE `sms_recipients` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `tel` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `sms_recipients`
--

INSERT INTO `sms_recipients` (`id`, `client_id`, `name`, `tel`) VALUES
(1, 63, 'didierlaure.mairie@gmail.com', '+33603105762'),
(2, 63, 'alain.fabre11120@gmail.com', '+33784563678'),
(3, 63, 'schivardi.gerard@orange.fr', '+33640154053'),
(4, 63, 'bernard-les-vignes@orange.fr', '+33632925787'),
(5, 63, 'g.dauzat@yahoo.fr', '+33685725347'),
(6, 63, 'hubert.bou@wanadoo.fr', '+33673391641'),
(7, 63, 'michel.jammes0171@orange.fr', '+33633846378'),
(8, 63, 'gabriel.laso@wanadoo.fr', '+33688798098'),
(9, 63, 'E-mail invalide 3', '+33645178756'),
(10, 63, 'jeandupeyroux.mairie@gmail.com', '+33619909881'),
(11, 63, 'patrickresplandy@orange.fr', '+33613255781'),
(12, 63, 'maire@ginestas.fr', '+33675781648'),
(13, 63, 'lecourrierdeamj@orange.fr', '+33624313419'),
(14, 63, 'rogersanchez11120@gmail.com', '+33688195857'),
(15, 63, 'claude.guibbert0932@orange.fr', '+33670688333'),
(16, 63, 'bru_jeanpaul@yahoo.fr', '+33616726822'),
(17, 63, 'huggege@gmail.com', '+33608279649'),
(18, 63, 'quignon.serge@sfr.fr', '+33663624130'),
(19, 63, 'jgkfr11@gmail.com', '+33611085013'),
(20, 63, 'jocelyne.pages11@gmail.com', '+33686168127'),
(21, 63, 'mairie-de-citou@wanadoo.fr', '+33685273012'),
(22, 63, 'mairie-aiguesvives@wanadoo.fr', '+33683283842'),
(23, 63, 'limousis@wanadoo.fr', '+33684844034'),
(24, 63, 'mairie-de-berriac@wanadoo.fr', '+33674439753'),
(25, 63, 'pradellesenval@wanadoo.fr', '+33689391954'),
(26, 63, 'm.e.loubet@wanadoo.fr', '+33672505490'),
(27, 63, 'sige.jean@orange.fr', '+33670221747'),
(28, 63, 'estival.a@laposte.net', '+33607114372'),
(29, 63, 'jacques.fabre11800@gmail.com', '+33786143638'),
(30, 63, 'jo-gonzales@orange.fr', '+33674866962'),
(31, 63, 'jean.turchetto@orange.fr', '+33685912744'),
(32, 63, 'philippe.clergue@wanadoo.fr', '+33627173853'),
(33, 63, 'josettesabata@gmail.com', '+33679792229'),
(34, 63, 'arnaudalbarel@gmail.com', '+33683880972'),
(35, 63, 'yolpiton@orange.fr', '+33661526132'),
(36, 63, 'adiveze.denis@gmail.com', '+33677101624'),
(37, 63, 'galibertjeanlouis@gmail.com', '+33662738477'),
(38, 63, 'jf.juste@free.fr', '+33673035388'),
(39, 63, 'ph-phalip@orange.fr', '+33640896363'),
(40, 63, 'mairie.fontiesdaude@wanadoo.fr', '+33671014870'),
(41, 63, 'magro.audecentre@orange.fr', '+33687937035'),
(42, 63, 'max.amouroux@orange.fr', '+33617080402'),
(43, 63, 'bernadettesire@gmail.com', '+33658851776'),
(44, 63, 'ottocoassin@gmail.com', '+33609568240'),
(45, 63, 'michel.branchereau@gmail.com', '+33674246177'),
(46, 63, 'jp.pelix@wanadoo.fr', '+33679990720'),
(47, 63, 'flo.cathary@hotmail.fr', '+33681454540'),
(48, 63, 'paul.ramoneda@mairie-palaja.fr', '+33685065381'),
(49, 63, 'monier.denis@free.fr', '+33663329383'),
(50, 63, 'philippe.maynadie1@orange.fr', '+33611415196'),
(51, 63, 'srd11@sfr.fr', '+33680037532'),
(52, 63, 'g.n.peyrot@orange.fr', '+33624925406'),
(53, 63, 'aline.vaujany@orange.fr', '+33689486469'),
(54, 63, 'jean-claude.pujol8@orange.fr', '+33676851553'),
(55, 63, 'r.jouve@orange.fr', '+33658488370'),
(56, 63, 'raphael.piedra@neuf.fr', '+33670006750'),
(57, 63, 'paul.malric@club-internet.fr', '+33688156063'),
(58, 63, 'chrislaineloze@yahoo.fr', '+33624308606'),
(59, 63, 'marc.rofes@hotmail.fr', '+33682630375'),
(60, 63, 'eveline.sanchez@orange.fr', '+33614721346'),
(61, 63, 'amvillegly@wanadoo.fr', '+33681870948'),
(62, 63, 'pierre.ceneda@gmail.com', '+33624485194'),
(63, 63, 'alain.vaissieres0887@orange.fr', '+33676323043'),
(64, 63, 'PITIE', '+33609992094'),
(65, 63, 'maireadjointrieuxminervois@orange.fr', '+33630411769'),
(66, 63, 'bertolottirobert@yahoo.fr', '+33675056299'),
(67, 63, 'claude.cansino@gmail.com', '+33648784958'),
(68, 63, 'laurent.gamis@orange.fr', '+33603834413'),
(69, 63, 'jacquespiget@orange.fr', '+33776113322'),
(70, 63, 'jeanfrancoisbellocq.11@gmail.com', '+33685620703'),
(71, 63, 'teamgonzalez1@hotmail.com', '+33671054470'),
(72, 63, 'patrick.subias@sfr.fr', '+33689393588'),
(73, 63, 'aurelie.combes@yahoo.fr', '+33611093503'),
(74, 63, 'sablephilippe11@gmail.com', '+33681269685'),
(75, 63, 'mp.centelles@orange.fr', '0468261385'),
(76, 63, 'mirallesrene@orange.fr', '+33678714459'),
(77, 63, 'audrey.duton@hotmail.fr', '+33664358466'),
(78, 63, 'houles.family@orange.fr', '+33669583349'),
(79, 63, 'amranekaci09@gmail.com', '+33680596706'),
(80, 63, 'pascalebelli@hotmail.com', '+33695877786'),
(81, 63, 'jean-pierre.solehac@orange.fr', '+33671319074'),
(82, 63, 'helenesiecuellar@gmail.com', '+33633376380'),
(83, 63, 'carbonnel.andre@gmail.com', '+33603561786'),
(84, 63, 'santoul.patrick@gmail.com', '+33604427276'),
(85, 63, 'gaec.montagne@gmail.com', '+33615308223'),
(86, 63, 'cnvalphonse@yahoo.fr', '+33681202961'),
(87, 63, 'james.graham@wanadoo.fr', '+33619020959'),
(88, 63, 'antoine.gay1955@yahoo.fr', '+33676936222'),
(89, 63, 'ggmontchauzou@hotmail.fr', '+33601380889'),
(90, 63, 'jacquesdimon@orange.fr', '+33676225659'),
(91, 63, 'bernard.holz59@orange.fr', '+33648684527'),
(92, 63, 'peltierjulien@orange.fr', '+33613505668'),
(93, 63, 'rene.sune11@orange.fr', '+33625290784'),
(94, 63, 'mairie-puicheric@wanadoo.fr', '+33675771729'),
(95, 63, 'yagues.bernard@neuf.fr', '+33627372249'),
(96, 63, 'henri.ruffel@gmail.com', '+33642270423'),
(97, 63, 'francoise.moreau13@wanadoo.fr', '+33608700308'),
(98, 63, 'didier.carbonnel@mairie-trebes.fr', '+33687978323'),
(99, 63, 'moulinbattant@orange.fr', '+33612517947'),
(100, 63, 'piotr.wolejszo@orange.fr', '+33610678558'),
(101, 63, 'mairie.villedubert@wanadoo.fr', '+33670976845'),
(102, 63, 'michelsgiarovello@gmail.com', '+33677133001'),
(103, 63, 'mic.pat@hotmail.fr', '+33672796091'),
(104, 63, 'rigaud.helene@gmail.com', '+33681606627'),
(105, 63, 'edmond.escourrou@orange.fr', '+33687661210'),
(106, 63, 'christaurel_11@hotmail.fr', '+33778246813'),
(107, 63, 'commune-de-les-ilhes@orange.fr', '0468770822'),
(108, 63, 'gaec.lesescoussols@orange.fr', '+33683716431'),
(109, 63, 'huc.marie-therese@orange.fr', '+33633794845'),
(110, 63, 'claude.bonnet16@wanadoo.fr', '+33675190986'),
(111, 63, 'batlle4950@live.fr', '+33621475573'),
(112, 63, 'germar.fernandez@orange.fr', '+33626748346'),
(113, 63, 'laetitia.icher@orange.fr', '+33614188341'),
(114, 63, 'bels.francis@wanadoo.fr', '+33680410327'),
(115, 63, 'stephane.barthas@gmail.com', '+33677921967'),
(116, 63, 'jeanclaude.christiane@wanadoo.fr', '+33676303285'),
(117, 63, 'crosregis@orange.fr', '+33662883864'),
(118, 63, 'guychiffre@free.fr', '+33627594156'),
(119, 63, 'jeromemarechalferrant@sfr.fr', '+33622986996'),
(120, 63, 'guycaly@sfr.fr', '+33673503271'),
(121, 63, 'sachadjo@orange.fr', '+33631793478'),
(122, 63, 'guy.jalabert11@orange.fr', '+33768582065'),
(123, 63, 'lassalle.nicolas@sfr.fr', '+33680108734'),
(124, 63, 'lasalimonde@orange.fr', '+33672896426'),
(125, 63, 'franck.g11@hotmail.fr', '+33679924377'),
(126, 63, 'denis-lecoz@orange.fr', '+33610518022'),
(127, 63, 'oberti.charles@orange.fr', '+33631521623'),
(128, 63, 'denislausse@gmail.com', '+33634135408'),
(129, 63, 'luc.lemazurier@orange.fr', '+33631382583'),
(130, 63, 'mireille11600@gmail.com', '+33615371463'),
(131, 63, 'jacques.augustin@wanadoo.fr', '+33608523474'),
(132, 63, 'pttjc@aol.com', '+33612776480'),
(133, 63, 'mairiedevillespassans@wanadoo.fr', '+33681385939'),
(134, 63, 'gautrand.jacques@wanadoo.fr', '+33622945181'),
(135, 63, 'juleswhitaker@yahoo.co.uk', '+33673170273'),
(136, 63, 'mairie.roubia@wanadoo.fr', '+33687019253'),
(137, 63, 'mairie.argens.garcia@orange.fr', '+33663006284'),
(138, 63, 'ar.alrang@wanadoo.fr', '+33615337040'),
(139, 63, 'emile.delpy@orange.fr', '+33633123581'),
(140, 63, 'glatieule@orange.fr', '+33611841319'),
(141, 63, 'odoricojp64@hotmail.com', '+33637180774'),
(142, 63, 'claude.onorre@bbox.fr', '+33674417547'),
(143, 63, 'lopez.genevieve@orange.fr', '+33643179325'),
(144, 63, 'mairie.agel@wanadoo.fr', '+33673258093'),
(145, 63, 'commune.aiguesvives-herault@orange.fr', '+33607990452'),
(146, 63, 'mairie.boisset@gmail.com', '+33607727231'),
(147, 63, 'mairiedecesseras@wanadoo.fr', '+33664091939'),
(148, 63, 'mairiedelaliviniere@wanadoo.fr', '+33687402721'),
(149, 63, 'mairie.oupia@wanadoo.fr', '+33640308581'),
(150, 63, 'mairie-de-pardailhan@wanadoo.fr', '+33643191931'),
(151, 63, 'mairie-sjm@orange.fr', '+33630567220'),
(152, 63, 'mairiedevelieux@laposte.net', '+33611798281'),
(153, 63, 'fraisse.yves602@orange.fr', '+33677180248'),
(154, 63, 'E-mail invalide 4', '+33768283171'),
(155, 63, 'jpierre.tourret1949@gmail.com', '+33688791923'),
(156, 63, 'harmoniegonzalez@gmail.com', '+33614666566'),
(157, 63, 'jeanpierrepastre45@orange.fr', '+33677149339'),
(158, 63, 'piva.daniel.enzo@gmail.com', '+33608896941'),
(159, 63, 'micheltailhades@orange.fr', '+33607148964'),
(160, 63, 'renemiralles34@gmail.com', '+33688173047'),
(161, 63, 'ams1.olonzac@wanadoo.fr', '+33631377443'),
(162, 63, 'alainmouly34@gmail.com', '+33680023154'),
(163, 63, 'sebastien.olivares@hotmail.fr', '+33622324432'),
(164, 63, 'mairie-aigne@wanadoo.fr', '+33683237624'),
(165, 63, 'mairieferralslesmontagnes@wanadoo.fr', '+33630958031'),
(166, 63, 'commune.minerve@orange.fr', '+33688341352'),
(167, 63, 'marie.lanet@orange.fr', '+33682694179'),
(168, 63, 'eric.fabre17@wanadoo.fr', '+33674437580'),
(169, 63, 'E-mail invalide 6', '+33651083682'),
(170, 63, 'pascal.gatti96@orange.fr', '+33632251592'),
(171, 63, 'mathiaspaicheler@hotmail.com', '+33788151819'),
(172, 63, 'andre.prade@orange.fr', '+33686082526'),
(173, 63, 'christian.roussel55@gmail.com', '+33620668973'),
(174, 63, 'jackyadragna@yahoo.fr', '+33620926845'),
(175, 63, 'lespinassiere@free.fr', '619431881'),
(176, 63, 'mairie.de.sallelescabardes@wanadoo.fr', '+33629572724'),
(177, 63, 'Ataraxie Julien', '+33652378142'),
(178, 63, 'lespinassiere@free.fr', '+33619431881'),
(181, 63, 'AnaÃ¯s', '0610656805'),
(182, 63, 'SÃ©verine ', '0627853880'),
(184, 63, 'PITIE JEAN LUC', '0609992094'),
(185, 63, 'DYE Alexandre', '0768283171'),
(186, 63, 'TARDIEU GERARD', '0645178756'),
(187, 63, 'PETIT JEAN CHRISTOPHE', '0612776480');

-- --------------------------------------------------------

--
-- Structure de la table `sms_recipients_lists`
--

CREATE TABLE `sms_recipients_lists` (
  `id` int(11) NOT NULL,
  `sms_liste_id` int(11) NOT NULL,
  `sms_recipient_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `sms_recipients_lists`
--

INSERT INTO `sms_recipients_lists` (`id`, `sms_liste_id`, `sms_recipient_id`) VALUES
(307, 1, 177),
(925, 2, 1),
(926, 2, 2),
(927, 2, 3),
(928, 2, 4),
(929, 2, 5),
(930, 2, 6),
(931, 2, 7),
(932, 2, 8),
(933, 2, 9),
(1288, 2, 186),
(934, 3, 10),
(935, 3, 11),
(936, 3, 12),
(937, 3, 13),
(938, 3, 14),
(939, 3, 15),
(940, 3, 16),
(941, 3, 17),
(942, 3, 18),
(943, 3, 19),
(944, 3, 20),
(945, 4, 21),
(946, 4, 22),
(947, 4, 23),
(948, 4, 24),
(949, 4, 25),
(950, 4, 26),
(951, 4, 27),
(952, 4, 28),
(953, 4, 29),
(954, 4, 30),
(955, 4, 31),
(956, 4, 32),
(957, 4, 33),
(958, 4, 34),
(959, 4, 35),
(960, 4, 36),
(961, 4, 37),
(962, 4, 38),
(963, 4, 39),
(964, 4, 40),
(965, 4, 41),
(966, 4, 42),
(967, 4, 43),
(968, 4, 44),
(969, 4, 45),
(970, 4, 46),
(971, 4, 47),
(972, 4, 48),
(973, 4, 49),
(974, 4, 50),
(975, 4, 51),
(976, 4, 52),
(977, 4, 53),
(978, 4, 54),
(979, 4, 55),
(980, 4, 56),
(981, 4, 57),
(982, 4, 58),
(983, 4, 59),
(984, 4, 60),
(985, 4, 61),
(986, 4, 62),
(987, 4, 63),
(988, 4, 64),
(989, 4, 65),
(1281, 4, 184),
(991, 5, 21),
(992, 5, 66),
(993, 5, 67),
(994, 5, 68),
(995, 5, 69),
(996, 5, 70),
(997, 5, 71),
(998, 5, 72),
(999, 5, 73),
(1000, 5, 74),
(1001, 5, 75),
(1002, 5, 76),
(1003, 5, 77),
(1004, 5, 78),
(1005, 5, 79),
(1006, 5, 80),
(1007, 5, 81),
(1008, 5, 82),
(1009, 5, 83),
(1010, 5, 84),
(1011, 5, 85),
(1012, 5, 86),
(1013, 5, 87),
(1014, 5, 88),
(1015, 5, 89),
(1016, 5, 90),
(1017, 5, 91),
(1018, 5, 92),
(1019, 5, 93),
(1020, 5, 94),
(1021, 5, 95),
(1022, 5, 96),
(1023, 5, 97),
(1024, 5, 98),
(1025, 5, 99),
(1026, 5, 100),
(1027, 5, 101),
(1028, 5, 102),
(1029, 5, 103),
(1030, 5, 104),
(1031, 5, 105),
(1032, 5, 106),
(1033, 6, 107),
(1034, 6, 108),
(1035, 6, 109),
(1036, 6, 110),
(1037, 6, 111),
(1038, 6, 112),
(1039, 6, 113),
(1040, 6, 114),
(1041, 6, 115),
(1042, 6, 116),
(1043, 6, 117),
(1044, 6, 118),
(1045, 6, 119),
(1046, 6, 120),
(1047, 7, 107),
(1048, 7, 121),
(1049, 7, 122),
(1050, 7, 123),
(1051, 7, 124),
(1052, 7, 125),
(1053, 7, 126),
(1054, 7, 127),
(1055, 7, 128),
(1056, 7, 129),
(1057, 7, 130),
(1058, 8, 131),
(1059, 8, 132),
(1295, 8, 187),
(1060, 9, 133),
(1061, 9, 134),
(1062, 9, 135),
(1063, 10, 136),
(1064, 10, 137),
(1065, 10, 138),
(1067, 10, 139),
(1068, 11, 140),
(1069, 11, 141),
(1070, 11, 142),
(1071, 11, 143),
(1072, 12, 144),
(1073, 12, 145),
(1074, 12, 146),
(1075, 12, 147),
(1076, 12, 148),
(1077, 12, 149),
(1078, 12, 150),
(1079, 12, 151),
(1080, 12, 152),
(1081, 12, 153),
(1082, 12, 154),
(1083, 12, 155),
(1084, 12, 156),
(1085, 12, 157),
(1086, 12, 158),
(1087, 12, 159),
(1088, 12, 160),
(1089, 12, 161),
(1090, 12, 162),
(1091, 12, 163),
(1284, 12, 185),
(1101, 13, 147),
(1094, 13, 148),
(1096, 13, 149),
(1104, 13, 150),
(1107, 13, 152),
(1092, 13, 164),
(1093, 13, 165),
(1095, 13, 166),
(1097, 13, 167),
(1098, 13, 168),
(1099, 13, 169),
(1100, 13, 170),
(1102, 13, 171),
(1103, 13, 172),
(1105, 13, 173),
(1106, 13, 174),
(1124, 14, 9),
(1108, 14, 21),
(1110, 14, 22),
(1115, 14, 23),
(1131, 14, 24),
(1132, 14, 25),
(1112, 14, 32),
(1113, 14, 38),
(1111, 14, 64),
(1114, 14, 107),
(1130, 14, 133),
(1133, 14, 136),
(1117, 14, 144),
(1119, 14, 145),
(1121, 14, 146),
(1122, 14, 147),
(1125, 14, 148),
(1127, 14, 149),
(1128, 14, 150),
(1129, 14, 151),
(1120, 14, 154),
(1118, 14, 164),
(1123, 14, 165),
(1126, 14, 166),
(1116, 14, 176),
(1109, 14, 178),
(1181, 15, 2),
(1182, 15, 3),
(1183, 15, 5),
(1184, 15, 6),
(1185, 15, 8),
(1134, 15, 21),
(1135, 15, 22),
(1139, 15, 23),
(1143, 15, 24),
(1144, 15, 25),
(1153, 15, 26),
(1154, 15, 27),
(1155, 15, 28),
(1156, 15, 30),
(1157, 15, 31),
(1136, 15, 32),
(1158, 15, 33),
(1159, 15, 35),
(1160, 15, 36),
(1161, 15, 37),
(1137, 15, 38),
(1162, 15, 40),
(1163, 15, 41),
(1164, 15, 42),
(1198, 15, 43),
(1165, 15, 44),
(1166, 15, 45),
(1167, 15, 47),
(1168, 15, 48),
(1169, 15, 50),
(1170, 15, 51),
(1171, 15, 52),
(1172, 15, 53),
(1173, 15, 54),
(1174, 15, 55),
(1199, 15, 56),
(1175, 15, 57),
(1176, 15, 59),
(1177, 15, 60),
(1178, 15, 61),
(1179, 15, 62),
(1180, 15, 63),
(1186, 15, 65),
(1138, 15, 107),
(1145, 15, 109),
(1146, 15, 111),
(1147, 15, 112),
(1148, 15, 113),
(1149, 15, 114),
(1150, 15, 115),
(1151, 15, 116),
(1152, 15, 117),
(1189, 15, 118),
(1190, 15, 119),
(1191, 15, 120),
(1192, 15, 132),
(1187, 15, 137),
(1188, 15, 139),
(1197, 15, 144),
(1140, 15, 147),
(1141, 15, 148),
(1142, 15, 151),
(1193, 15, 155),
(1194, 15, 156),
(1195, 15, 159),
(1196, 15, 163),
(1204, 16, 2),
(1200, 16, 41),
(1201, 16, 52),
(1202, 16, 61),
(1203, 16, 63),
(1214, 17, 2),
(1215, 17, 3),
(1216, 17, 4),
(1217, 17, 5),
(1218, 17, 6),
(1219, 17, 8),
(1208, 17, 9),
(1213, 17, 50),
(1224, 17, 132),
(1212, 17, 136),
(1221, 17, 137),
(1222, 17, 138),
(1223, 17, 139),
(1230, 17, 144),
(1206, 17, 146),
(1207, 17, 147),
(1209, 17, 148),
(1210, 17, 149),
(1211, 17, 151),
(1220, 17, 152),
(1205, 17, 154),
(1225, 17, 155),
(1226, 17, 156),
(1227, 17, 159),
(1228, 17, 161),
(1229, 17, 163),
(616, 21, 181),
(617, 21, 182),
(1302, 26, 1),
(1303, 26, 3),
(1321, 26, 4),
(1301, 26, 6),
(1304, 26, 8),
(1300, 26, 21),
(1299, 26, 22),
(1305, 26, 23),
(1306, 26, 30),
(1297, 26, 32),
(1314, 26, 35),
(1307, 26, 46),
(1298, 26, 47),
(1308, 26, 49),
(1309, 26, 55),
(1310, 26, 57),
(1311, 26, 64),
(1313, 26, 73),
(1312, 26, 77),
(1319, 26, 78),
(1329, 26, 110),
(1328, 26, 113),
(1320, 26, 120),
(1330, 26, 126),
(1318, 26, 131),
(1317, 26, 136),
(1327, 26, 144),
(1325, 26, 146),
(1324, 26, 147),
(1323, 26, 149),
(1326, 26, 150),
(1316, 26, 163),
(1315, 26, 176),
(1322, 26, 185),
(1331, 26, 186);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `sms_campaigns`
--
ALTER TABLE `sms_campaigns`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `sms_campaigns_recipients`
--
ALTER TABLE `sms_campaigns_recipients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sms_campaign_id` (`sms_campaign_id`,`tel`);

--
-- Index pour la table `sms_inbox`
--
ALTER TABLE `sms_inbox`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `sms_listes`
--
ALTER TABLE `sms_listes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `sms_listes_sources`
--
ALTER TABLE `sms_listes_sources`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `sms_packages`
--
ALTER TABLE `sms_packages`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `sms_packages_histories`
--
ALTER TABLE `sms_packages_histories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `sms_recipients`
--
ALTER TABLE `sms_recipients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`client_id`,`tel`);

--
-- Index pour la table `sms_recipients_lists`
--
ALTER TABLE `sms_recipients_lists`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sms_list_id` (`sms_liste_id`,`sms_recipient_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `sms_campaigns`
--
ALTER TABLE `sms_campaigns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `sms_campaigns_recipients`
--
ALTER TABLE `sms_campaigns_recipients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=714;

--
-- AUTO_INCREMENT pour la table `sms_inbox`
--
ALTER TABLE `sms_inbox`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT pour la table `sms_listes`
--
ALTER TABLE `sms_listes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT pour la table `sms_listes_sources`
--
ALTER TABLE `sms_listes_sources`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `sms_packages`
--
ALTER TABLE `sms_packages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `sms_packages_histories`
--
ALTER TABLE `sms_packages_histories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `sms_recipients`
--
ALTER TABLE `sms_recipients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=188;

--
-- AUTO_INCREMENT pour la table `sms_recipients_lists`
--
ALTER TABLE `sms_recipients_lists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1332;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
