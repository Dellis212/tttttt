-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 20, 2021 at 05:16 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tutorial`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(11) NOT NULL,
  `username` text DEFAULT NULL,
  `password` varchar(32) NOT NULL,
  `salt` varchar(30) NOT NULL DEFAULT '1234567890',
  `email` varchar(100) NOT NULL,
  `registerdate` timestamp NULL DEFAULT current_timestamp(),
  `lastlogin` datetime DEFAULT NULL,
  `ip` text DEFAULT NULL,
  `admin` float NOT NULL DEFAULT 0,
  `supporter` float NOT NULL DEFAULT 0,
  `vct` float NOT NULL DEFAULT 0,
  `mapper` float NOT NULL DEFAULT 0,
  `scripter` float NOT NULL DEFAULT 0,
  `warn_style` int(1) NOT NULL DEFAULT 1,
  `hiddenadmin` tinyint(3) UNSIGNED DEFAULT 0,
  `adminjail` tinyint(3) UNSIGNED DEFAULT 0,
  `adminjail_time` int(11) DEFAULT NULL,
  `adminjail_by` text DEFAULT NULL,
  `adminjail_reason` text DEFAULT NULL,
  `muted` tinyint(3) UNSIGNED DEFAULT 0,
  `globalooc` tinyint(3) UNSIGNED DEFAULT 1,
  `friendsmessage` varchar(255) NOT NULL DEFAULT 'Hi!',
  `adminjail_permanent` tinyint(3) UNSIGNED DEFAULT 0,
  `adminreports` int(11) DEFAULT 0,
  `warns` tinyint(3) UNSIGNED DEFAULT 0,
  `chatbubbles` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `adminnote` text DEFAULT NULL,
  `appstate` tinyint(1) DEFAULT 0,
  `appdatetime` datetime DEFAULT NULL,
  `appreason` longtext DEFAULT NULL,
  `help` int(1) NOT NULL DEFAULT 1,
  `adblocked` int(1) NOT NULL DEFAULT 0,
  `newsblocked` int(1) DEFAULT 0,
  `mtaserial` text DEFAULT NULL,
  `d_addiction` text DEFAULT NULL,
  `loginhash` varchar(64) DEFAULT NULL,
  `credits` int(11) NOT NULL DEFAULT 0,
  `transfers` int(11) DEFAULT 0,
  `monitored` varchar(255) NOT NULL DEFAULT '',
  `autopark` int(1) NOT NULL DEFAULT 1,
  `forceUpdate` smallint(1) NOT NULL DEFAULT 0,
  `anotes` text DEFAULT NULL,
  `oldAdminRank` int(11) DEFAULT 0,
  `suspensionTime` bigint(20) DEFAULT NULL,
  `car_license` int(1) NOT NULL DEFAULT 0,
  `adminreports_saved` int(3) DEFAULT 0,
  `cpa_earned` double DEFAULT 0,
  `electionsvoted` int(11) NOT NULL DEFAULT 0,
  `referrer` int(11) DEFAULT 0,
  `activated` tinyint(1) NOT NULL DEFAULT 0,
  `serial_whitelist_cap` int(2) NOT NULL DEFAULT 2,
  `tc_backend` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `account_settings`
--

CREATE TABLE `account_settings` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `adminhistory`
--

CREATE TABLE `adminhistory` (
  `id` int(10) NOT NULL,
  `user` int(10) NOT NULL,
  `user_char` int(11) NOT NULL DEFAULT 0,
  `admin` int(10) NOT NULL DEFAULT 0,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `action` tinyint(3) NOT NULL DEFAULT 6,
  `duration` int(10) NOT NULL DEFAULT 0,
  `reason` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `advertisements`
--

CREATE TABLE `advertisements` (
  `id` int(11) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `advertisement` text NOT NULL,
  `start` int(11) NOT NULL,
  `expiry` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `section` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `advertisements`
--

INSERT INTO `advertisements` (`id`, `phone`, `name`, `address`, `advertisement`, `start`, `expiry`, `created_by`, `section`) VALUES
(181, '795741', 'Petcu Eduard', 'Bucuresti', 'Donez casa!Astept telefon pentru mai multe detalii!\n', 1592404912, 1592491312, 169, 3),
(182, '483813', 'Vlad Lates ', '.....', 'Vand/Schimb vw Passat B6 full tuning aspect 10/10 tehnic tot 10/10 astept oferte.\n', 1592475886, 1592562286, 123, 2),
(183, '570695', 'Vali Zanet', 'AD GARAGE', 'Ai masina urata si nu ai I.T.P la ea ? Vino la noi si te vom rezolva ! (OOC-Cheia rosie de pe harta)\n', 1592483900, 1592570300, 61, 1);

-- --------------------------------------------------------

--
-- Table structure for table `apb`
--

CREATE TABLE `apb` (
  `id` int(11) NOT NULL,
  `description` text NOT NULL,
  `doneby` int(11) NOT NULL,
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `apb`
--

INSERT INTO `apb` (`id`, `description`, `doneby`, `time`) VALUES
(6, 'Mercedes ML300 negru dat Ã®n urmÄƒrire.', 85, '2020-06-09 16:03:51');

-- --------------------------------------------------------

--
-- Table structure for table `applications`
--

CREATE TABLE `applications` (
  `id` int(11) NOT NULL,
  `applicant` int(11) NOT NULL DEFAULT 0,
  `dateposted` timestamp NOT NULL DEFAULT current_timestamp(),
  `datereviewed` datetime DEFAULT NULL,
  `reviewer` int(11) NOT NULL DEFAULT 0,
  `note` text DEFAULT NULL,
  `state` tinyint(1) NOT NULL DEFAULT 0,
  `question1` text DEFAULT NULL,
  `question2` text DEFAULT NULL,
  `question3` text DEFAULT NULL,
  `question4` text DEFAULT NULL,
  `answer1` text DEFAULT NULL,
  `answer2` text DEFAULT NULL,
  `answer3` text DEFAULT NULL,
  `answer4` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `applications_questions`
--

CREATE TABLE `applications_questions` (
  `id` int(4) NOT NULL,
  `question` text DEFAULT NULL,
  `answer1` text DEFAULT NULL,
  `answer2` text DEFAULT NULL,
  `answer3` text DEFAULT NULL,
  `key` tinyint(1) NOT NULL DEFAULT 1,
  `createdBy` int(8) NOT NULL DEFAULT 0,
  `updatedBy` int(8) NOT NULL DEFAULT 0,
  `createDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updateDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `part` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `atms`
--

CREATE TABLE `atms` (
  `id` int(11) NOT NULL,
  `x` decimal(10,6) DEFAULT 0.000000,
  `y` decimal(10,6) DEFAULT 0.000000,
  `z` decimal(10,6) DEFAULT 0.000000,
  `rotation` decimal(10,6) DEFAULT 0.000000,
  `dimension` int(5) DEFAULT 0,
  `interior` int(5) DEFAULT 0,
  `deposit` tinyint(3) UNSIGNED DEFAULT 0,
  `limit` int(10) UNSIGNED DEFAULT 5000
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `atm_cards`
--

CREATE TABLE `atm_cards` (
  `card_id` int(11) NOT NULL,
  `card_owner` int(11) DEFAULT NULL,
  `card_number` text DEFAULT NULL,
  `card_pin` varchar(4) NOT NULL DEFAULT '0000',
  `card_locked` tinyint(1) NOT NULL DEFAULT 0,
  `card_type` tinyint(1) NOT NULL DEFAULT 1,
  `limit_type` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bans`
--

CREATE TABLE `bans` (
  `id` int(11) NOT NULL,
  `serial` varchar(32) DEFAULT NULL,
  `ip` varchar(15) DEFAULT NULL,
  `account` int(11) DEFAULT NULL,
  `admin` int(11) DEFAULT NULL,
  `reason` text NOT NULL,
  `date` timestamp NULL DEFAULT current_timestamp(),
  `threadid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Handle serial bans instead of using MTA built-in / Maxime';

-- --------------------------------------------------------

--
-- Table structure for table `blips`
--

CREATE TABLE `blips` (
  `id` int(11) NOT NULL,
  `x` float NOT NULL,
  `y` float NOT NULL,
  `z` float NOT NULL,
  `icon` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `title` text DEFAULT NULL,
  `author` text DEFAULT NULL,
  `book` longtext DEFAULT NULL,
  `readOnly` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='This is used for the book system. // Chaos';

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `author`, `book`, `readOnly`) VALUES
(1, 'I.T.P', 'BMW- M5- E60', '* DeÈ›inÄƒtorul Vehiculului .\r: Popa Alexandru\n\r\n* Seria din buletin al proprietarului.\r: 11442\n\r\n* NumÄƒrul de Ã®nmatriculare a vehiculului .\r: 34 JV 6483[ TURCIA]\n\r\n* Anul de fabricaÈ›ie a vehiculului .\r2006\n\r\n* Numele firmei maÈ™ini .\rBMW\n\r\n* Èšara de provenienÈ›Äƒ a maÈ™ini .\rGERMANIA\n\r\n* NumÄƒrul de Kilometri .\r5500\n\r\n* Numele inspectorului I.T.P .\r Stefan Alexandru\n\r\n* Ziua È™i data in care a fost fÄƒcut I.T.P - ul.\r 22. 05 .2020\n\r\n* Ziua È™i data expirÄƒrii  I.T.P: 30.05.2020\n', 1),
(2, 'FISA-  I.T.P', 'GOLF 4', '* DeÈ›inÄƒtorul Vehiculului .\r: Kenny Jackson\n\r\n* Seria din buletin al proprietarului.\r124546\n\r\n* NumÄƒrul de Ã®nmatriculare a vehiculului .\r: KA 066 HX [ SERBIA]\n\r\n* Anul de fabricaÈ›ie a vehiculului .\r2001\n\r\n* Numele firmei maÈ™ini .\rWolkswagen\n\r\n* Èšara de provenienÈ›Äƒ a maÈ™ini .\rGermania\n\r\n* NumÄƒrul de Kilometri .\r6073\n\r\n* Numele inspectorului I.T.P .\rStefan Alexandru\n\r\n* Ziua È™i data in care a fost fÄƒcut I.T.P - ul\r 26.05. 2020\n\r\n* Ziua È™i data expirÄƒrii  I.T.P : 03.06.2020\n', 1),
(3, 'I.T.P', 'Mercedes-Benz ML300', '* DeÈ›inÄƒtorul Vehiculului .\rIonut Betoane\n\r\n* Seria din buletin al proprietarului.\r353222\n\r\n* NumÄƒrul de Ã®nmatriculare a vehiculului .\rOA79209\n\r\n* Anul de fabricaÈ›ie a vehiculului .\r2010\n\r\n* Numele firmei maÈ™ini .\rMercedes-Benz ML300\n\r\n* Èšara de provenienÈ›Äƒ a maÈ™ini .\rGermania\n\r\n* NumÄƒrul de Kilometri .\r2150\n\r\n* Numele inspectorului I.T.P .\r Stefan Alexandru\n\r\n* Ziua È™i data in care a fost fÄƒcut I.T.P - ul.\r26.05.2020\n\r\n* Ziua È™i data expirÄƒrii  I.T.P 03.06 . 2020\n', 1),
(4, 'R.A.R', 'Mercedes-Benz ML300', '* DETINATORUL VEHICULULUI : Ionut Betoane\n\n* NUMARUL DE INMATRICULARE AL VEHICULULUI :OA7 9209\n\n* ANUL DE FABRICATIE AL VEHICULULUI 2010\n\n* NUMELE FIRMEI MASINI : Mercedes-Benz ML300\n\n* NUMARUL DE MODIFICARI : 2\n\n* MODIFICARILE [ XENOANE  || SPOILER || ETC || : Xenoane Albastre, Culoare neagra \n\n* ZIUA SI DATA IN CARE A FOST FACUTA FISA R.A.R : 26.05.2020\n\n* ZIUA SI DATA IN CARE EXPIRA FISA R.A.R : 06.06.2020\n\n* NUMELE MECANICULUI CARE A FACUT INSPECTIA : Stefan Alexandru\n\n* NUMELE INSPECTORULUI CARE A FACUT FISA Stefan Alexandru\n', 1),
(5, 'FISA R.A.R', 'BMW M5 E60', '* DETINATORUL VEHICULULUI : Denis Marian\n\n* NUMARUL DE INMATRICULARE AL VEHICULULUI : 34 JV 6483 [ TURCIA[\n\n* ANUL DE FABRICATIE AL VEHICULULUI  2006\n\n* NUMELE FIRMEI MASINI :  BMW M5 E60\n\n* NUMARUL DE MODIFICARI : 3\n\n* MODIFICARILE [ XENOANE  || SPOILER || ETC || : Xenon [ albastru ] culoare alba [ culoare precedenta GRI ] , eleron\n\n* ZIUA SI DATA IN CARE A FOST FACUTA FISA R.A.R : 27  05 . 2020\n\n* ZIUA SI DATA IN CARE EXPIRA FISA R.A.R : 06. 06. 2020\n\n* NUMELE MECANICULUI CARE A FACUT INSPECTIA : Stefan Alexandru\n\n* NUMELE INSPECTORULUI CARE A FACUT FISA Stefan Alexandru\n', 1),
(6, 'FiSA ITP', 'BMW M5 E60', '* DeÈ›inÄƒtorul Vehiculului .\rDenis Marian\n\r\n* Seria din buletin al proprietarului.\r465668\n\r\n* NumÄƒrul de Ã®nmatriculare a vehiculului .\r34 JV 6483 [ TURCIA]\n\r\n* Anul de fabricaÈ›ie a vehiculului .\r2006\n\r\n* Numele firmei maÈ™ini .\r BMW M5 E60\n\r\n* Èšara de provenienÈ›Äƒ a maÈ™ini .\rGermania\n\r\n* NumÄƒrul de Kilometri .\r3635\n\r\n* Numele inspectorului I.T.P .\r Stefan Alexandru\n\r\n* Ziua È™i data in care a fost fÄƒcut I.T.P - ul.\r27.05.2020\n\r\n* Ziua È™i data expirÄƒrii  I.T.P  03. 06 . 2020\n', 1),
(7, 'Plangere', 'Fabi Betoane', 'Nume:Betoane \n\nPrenume:Fabian\n\nMotiv plangere: Nu stie sa conduca a doua oara, nu este atent la drum intrand frontal in mine,venind de pe contrasens!Nu se da jos din masina,etc!\n', 0),
(8, 'I.T.P', 'Madalin Georgescu', ' DeÈ›inÄƒtorul Vehiculului: Popa Alexandru\n\r\n* Seria din buletin al proprietarulu: 5522124\n\r\n* NumÄƒrul de Ã®nmatriculare a vehiculului: CJ 72 YAD\n\r\n* Anul de fabricaÈ›ie a vehiculului: 1992\n\r\n* Numele firmei maÈ™ini: Mercedes Benz\n\r\n* Èšara de provenienÈ›Äƒ a maÈ™ini: Germania\n\r\n* NumÄƒrul de Kilometri: :8519\n\r\n* Numele inspectorului I.T.P: Madalin Georgescu\n\r\n* Ziua È™i data in care a fost fÄƒcut I.T.P - ul: 26.05.2020\n\r\n* Ziua È™i data expirÄƒrii  I.T.P : 02.05.2020.\n\n', 1),
(9, 'I.T.P Mercedes Benz 600SEC', 'Necunoscut', ' DeÈ›inÄƒtorul Vehiculului: Popa Alexandru\n\r\n* Seria din buletin al proprietarulu: 5522124\n\r\n* NumÄƒrul de Ã®nmatriculare a vehiculului: CJ 72 YAD\n\r\n* Anul de fabricaÈ›ie a vehiculului: 1992\n\r\n* Numele firmei maÈ™ini: Mercedes Benz \n\r\n* Èšara de provenienÈ›Äƒ a maÈ™ini: Germania\n\r\n* NumÄƒrul de Kilometri: :8519\n\r\n* Numele inspectorului I.T.P: Madalin Georgescu\n\r\n* Ziua È™i data in care a fost fÄƒcut I.T.P - ul: 26.05.2020\n\r\n* Ziua È™i data expirÄƒrii  I.T.P : 02.05.2020.\n\n', 1),
(10, 'R.A.R Mercedes Benz 600SEC', 'Madalin Georgescu', '* DETINATORUL VEHICULULUI : Popa Alexandu\n\n* NUMARUL DE INMATRICULARE AL VEHICULULUI : CJ 72 YAD\n\n* ANUL DE FABRICATIE AL VEHICULULUI:1992\n\n* NUMELE FIRMEI MASINI : Mercedes Benz\n\n* NUMARUL DE MODIFICARI :3\n\n* MODIFICARILE :Xenoane,suspensii,jante\n\n* ZIUA SI DATA IN CARE A FOST FACUTA FISA R.A.R :27.05.2020\n\n* ZIUA SI DATA IN CARE EXPIRA FISA R.A.R :03.05.2020\n\n* NUMELE MECANICULUI CARE A FACUT INSPECTIA :Madalin Georgescu\n\n* NUMELE INSPECTORULUI CARE A FACUT FISA :Madalin Georgescu\n', 1),
(11, 'I.T.P', '', ' DeÈ›inÄƒtorul Vehiculului :Madalin Georgescu\n\r\n* Seria din buletin al proprietarului\n\r\n* NumÄƒrul de Ã®nmatriculare a vehiculului \n\r\n* Anul de fabricaÈ›ie a vehiculului .\r\n\r\n* Numele firmei maÈ™ini:Dacia\n\r\n* Èšara de provenienÈ›Äƒ a maÈ™ini:Romania\n\r\n* NumÄƒrul de Kilometri :\n\r\n* Numele inspectorului I.T.P: Madalin Georgescy\n\r\n* Ziua È™i data in care a fost fÄƒcut I.T.P - ul: 27.05.2020\n\r\n* Ziua È™i data expirÄƒrii  I.T.P: 03.05.2020\n\n', 0),
(12, 'I.T.P Dacia 1310', 'Madalin Georgescu', '* DeÈ›inÄƒtorul Vehiculului:Aditza Costelo\n\r\n* Seria din buletin al proprietarului: 244123\n\r\n* NumÄƒrul de Ã®nmatriculare a vehiculului: PL4 2666\n\r\n* Anul de fabricaÈ›ie a vehiculului:1989\n\r\n* Numele firmei maÈ™ini: Dacia\n\r\n* Èšara de provenienÈ›Äƒ a maÈ™ini: Romania\n\r\n* NumÄƒrul de Kilometri:10147\n\r\n* Numele inspectorului I.T.P: Madalin Georgescu\n\r\n* Ziua È™i data in care a fost fÄƒcut I.T.P - ul:27.05.2020\r\n\r\n* Ziua È™i data expirÄƒrii  I.T.P: 03.05.2020\n', 0),
(13, 'I.T.P BMW M3 E36 316I', 'Madalin Georgescu', '* DeÈ›inÄƒtorul Vehiculului:Vali Zanet\n\r\n* Seria din buletin al proprietarului: 245215\n\r\n* NumÄƒrul de Ã®nmatriculare a vehiculului:CT 03 ZGV\n\r\n* Anul de fabricaÈ›ie a vehiculului: 1997\n\r\n* Numele firmei maÈ™ini: BMW\n\r\n* Èšara de provenienÈ›Äƒ a maÈ™ini: Germania\n\r\n* NumÄƒrul de Kilometri:6808\n\r\n* Numele inspectorului I.T.P: Madalin Georgescu\n\r\n* Ziua È™i data in care a fost fÄƒcut I.T.P - ul: 28.05.2020\r\n\r\n* Ziua È™i data expirÄƒrii  I.T.P: 04.05.2020\n', 1),
(14, 'I.T.P Dacia 1310', 'Madalin Georgescu', '* DeÈ›inÄƒtorul Vehiculului: Madalin Georgescu\n\r\n* Seria din buletin al proprietarului: 442561\n\r\n* NumÄƒrul de Ã®nmatriculare a vehiculului:CL 22 DCM\n\r\n* Anul de fabricaÈ›ie a vehiculului: 1989\n\r\n* Numele firmei maÈ™ini: Dacia\n\r\n* Èšara de provenienÈ›Äƒ a maÈ™ini: Romania\n\r\n* NumÄƒrul de Kilometri: 7742\n\r\n* Numele inspectorului I.T.P: Madalin Georgescu\n\r\n* Ziua È™i data in care a fost fÄƒcut I.T.P - ul:28.05.2020\r\n\r\n* Ziua È™i data expirÄƒrii  I.T.P: 04.05.2020\n', 1),
(15, 'I.T.P Volkswagen Passat b6', '', '* DeÈ›inÄƒtorul Vehiculului: Stefan Cristian\n\r\n* Seria din buletin al proprietarului: 828161\n\r\n* NumÄƒrul de Ã®nmatriculare a vehiculului .\r\n\r\n* Anul de fabricaÈ›ie a vehiculului .\r\n\r\n* Numele firmei maÈ™ini:Volkswagen\n\r\n* Èšara de provenienÈ›Äƒ a maÈ™ini: Germania\n\r\n* NumÄƒrul de Kilometri .\r\n\r\n* Numele inspectorului I.T.P: Madalin Georgescu\n\r\n* Ziua È™i data in care a fost fÄƒcut I.T.P - ul: 28.05.2020\n\r\n* Ziua È™i data expirÄƒrii  I.T.P: 04.05.2020\n', 0),
(16, 'I.T.P', 'Aditza Costelo', '                                  I.T.P Periodic\n\n\n1.Detinatorul: Kenny_Jackson.\n\n2.Seria de Buletin:324156\n\n3.Numar De Inmatricular JJ1 1085\n\n4.Anul masini de fabricatie:2006\n\n5.Numele masinii firma:Audi\n\n6.Tara de provienta:Germania\n\n7.Kilometri:25km\n\n8.Numele inspectorului:Aditza Costelo\n\n9.Ziua Data: 28/05/2020\n\n10.Data expiraii ITP:Joia viitoare\n\n', 1),
(17, '1', 'Necunoscut', 'ÃŽnceputul la ceva plÄƒcut...', 0),
(18, '1', 'Necunoscut', 'ÃŽnceputul la ceva plÄƒcut...', 0),
(19, '1', 'Necunoscut', 'ÃŽnceputul la ceva plÄƒcut...', 0),
(20, 'I.T.P Volkswagen Passat B6', 'M.G', '* DeÈ›inÄƒtorul Vehiculului: Stefan Cristian\n\r\n* Seria din buletin al proprietarului: 929171\n\r\n* NumÄƒrul de Ã®nmatriculare a vehiculului: CL 22 CAS\n\r\n* Anul de fabricaÈ›ie a vehiculului: 2006\n\r\n* Numele firmei maÈ™ini: Volkswagen\n\r\n* Èšara de provenienÈ›Äƒ a maÈ™ini: Germania\n\r\n* NumÄƒrul de Kilometri: 2772\n\r\n* Numele inspectorului I.T.P: Madalin Georgescu\n\r\n* Ziua È™i data in care a fost fÄƒcut I.T.P - ul: 28.05.2020\r\n\r\n* Ziua È™i data expirÄƒrii  I.T.P: 04.05.2020\n', 0),
(21, 'I.T.P BMW M3 E46', 'Madalin Gergescu', '* DeÈ›inÄƒtorul Vehiculului: Madalin Georgescu\n\r\n* Seria din buletin al proprietarului: 477027\n\r\n* NumÄƒrul de Ã®nmatriculare a vehiculului: CL 23 DCM\n\r\n* Anul de fabricaÈ›ie a vehiculului: 2003\n\r\n* Numele firmei maÈ™ini: BMW\n\r\n* Èšara de provenienÈ›Äƒ a maÈ™ini: Germania\n\r\n* NumÄƒrul de Kilometri: 8\n\r\n* Numele inspectorului I.T.P: Madalin Georgescu\n\r\n* Ziua È™i data in care a fost fÄƒcut I.T.P - ul: 29.05.2020\r\n\r\n* Ziua È™i data expirÄƒrii  I.T.P: 05.05.2020\n', 1),
(22, 'I.T.P BMW I8', 'M.G', '* DeÈ›inÄƒtorul Vehiculului: Alin Mocanu\n\r\n* Seria din buletin al proprietarului: 556241\n\r\n* NumÄƒrul de Ã®nmatriculare a vehiculului: CL 11 ALY\n\r\n* Anul de fabricaÈ›ie a vehiculului: 2015\n\r\n* Numele firmei maÈ™ini: BMW\n\r\n* Èšara de provenienÈ›Äƒ a maÈ™ini: Germania\n\r\n* NumÄƒrul de Kilometri: 19\n\r\n* Numele inspectorului I.T.P: Madalin Georgescu\n\r\n* Ziua È™i data in care a fost fÄƒcut I.T.P - ul:  30.05.2020\r\n\r\n* Ziua È™i data expirÄƒrii  I.T.P: 06.05.2020\n', 1),
(23, '1', 'Necunoscut', 'ÃŽnceputul la ceva plÄƒcut...', 0),
(24, 'I.T.P', 'BMW M3 E36', '* DeÈ›inÄƒtorul Vehiculului .\r: Stefan Alexandru\n\r\n* Seria din buletin al proprietarului.\r987888\n\r\n* NumÄƒrul de Ã®nmatriculare a vehiculului .\rMB2 2127 [ LITUANIA ]\n\r\n* Anul de fabricaÈ›ie a vehiculului .\r1995\n\r\n* Numele firmei maÈ™ini .\rBMW M3 E36\n\r\n* Èšara de provenienÈ›Äƒ a maÈ™ini .\rGermania[ BAVARIA]\n\r\n* NumÄƒrul de Kilometri .\r6785\n\r\n* Numele inspectorului I.T.P .\rStefan Alexandru\n\r\n* Ziua È™i data in care a fost fÄƒcut I.T.P - ul.\r28.05.2020\n\r\n* Ziua È™i data expirÄƒrii  I.T.P: 8. 05. 2020\n', 0),
(25, '1', 'Necunoscut', '* DETINATORUL VEHICULULUI :Stefan Alexandru\n\n* NUMARUL DE INMATRICULARE AL VEHICULULUI :MB2 2127 [ LITUANIA]\n\n* ANUL DE FABRICATIE AL VEHICULULUI 1995\n\n* NUMELE FIRMEI MASINI : BMW M3 E36\n\n* NUMARUL DE MODIFICARI :5\n\n* MODIFICARILE [ XENOANE  || SPOILER || ETC || : XENOANE  Albastru, suspensie LOW  , eleron, jante , culoare alba\n\n* ZIUA SI DATA IN CARE A FOST FACUTA FISA R.A.R :\n28.05.2020\n* ZIUA SI DATA IN CARE EXPIRA FISA R.A.R :08.06.2020\n\n* NUMELE MECANICULUI CARE A FACUT INSPECTIA :Stefan Alexandru\n\n* NUMELE INSPECTORULUI CARE A FACUT FISA : Stefan Alexandru\n', 0),
(26, 'R.A.R', 'M3-E36', '* DETINATORUL VEHICULULUI :Vali Zanet\n\n* NUMARUL DE INMATRICULARE AL VEHICULULUI :RZ1 6210\n\n* ANUL DE FABRICATIE AL VEHICULULUI : 1995\n\n* NUMELE FIRMEI MASINI :  BMW M3 E35\n\n* NUMARUL DE MODIFICARI :4\n\n* MODIFICARILE [ XENOANE  || SPOILER || ETC || : Culoare [ GALBEN], Eleron , jante , suspensie [ LOW]\n\n* ZIUA SI DATA IN CARE A FOST FACUTA FISA R.A.R : 28: 05:2020\n\n* ZIUA SI DATA IN CARE EXPIRA FISA R.A.R : 08:06:2020\n\n* NUMELE MECANICULUI CARE A FACUT INSPECTIA : Stefan Alexandru\n\n* NUMELE INSPECTORULUI CARE A FACUT FISA: Stefan Alexandru\n', 1),
(27, '1', 'Necunoscut', 'ÃŽnceputul la ceva plÄƒcut...', 0),
(28, '1', 'Necunoscut', 'ÃŽnceputul la ceva plÄƒcut...', 0),
(29, 'New Book', 'Necunoscut', 'ÃŽnceputul la ceva plÄƒcut...', 0),
(30, 'New Book', 'ASA Ioan Pavel', 'Simion Lungu - MK9 5747 - Golf V alb\nCiujdel Marius - MY4 9742 - Golf V verde Ã®nchis - amendat vitezÄƒ\nÈ˜tefan Cristian - VP4 1000 - KTM 2005 - amendat fÄƒrÄƒ cascÄƒ\nVali Zanet - DR5 4506 - Skoda gri\n', 0),
(31, 'I.T.P.', 'Nedelcu Florin', '* DeÈ›inÄƒtorul Vehiculului .\rNedelcu Florin\n\r\n* Seria din buletin al proprietarului.\r KL 45543\n\r\n* NumÄƒrul de Ã®nmatriculare a vehiculului .\r\n\r\n* Anul de fabricaÈ›ie a vehiculului .\r 2002\n\r\n* Numele firmei maÈ™ini .\rDacia\n\r\n* Èšara de provenienÈ›Äƒ a maÈ™ini .\r Romania\n\r\n* NumÄƒrul de Kilometri .\r4478\n\r\n* Numele inspectorului I.T.P  Nedelcu Florin.\r\n\r\n* Ziua È™i data in care a fost fÄƒcut I.T.P - ul. 29.05.2020\r\n\r\n* Ziua È™i data expirÄƒrii  I.T.P 05.06.2020.\n\n', 1),
(32, 'R.A.R.', 'Nedelcu Forin', '* DETINATORUL VEHICULULUI : Nedelcu Forin\n\n* NUMARUL DE INMATRICULARE AL VEHICULULUI : IJ7 9937\n\n* ANUL DE FABRICATIE AL VEHICULULUI  2002\n\n* NUMELE FIRMEI MASINI :  Dacia\n\n* NUMARUL DE MODIFICARI : 0\n\n* MODIFICARILE [ XENOANE  || SPOILER || ETC || :\n\n* ZIUA SI DATA IN CARE A FOST FACUTA FISA R.A.R : 29.05.2020\n\n* ZIUA SI DATA IN CARE EXPIRA FISA R.A.R : 05.06.2020\n\n* NUMELE MECANICULUI CARE A FACUT INSPECTIA : Nedelcu Forin\n\n* NUMELE INSPECTORULUI CARE A FACUT FISA [ ACEASTA SECTIUNE ESTE DOAR PENTRU CEI CARE AU GRADUL DE  || INSPECTOR - REGISTRUL AUTO ROMAN || \n', 0),
(33, 'Dovada 15 zile drept circulatie', 'Furtwangler', '                   MINISTERUL ADMINISTRATIEI SI INTERNELOR\n                               SERVICIUL RUTIER \n               INSPECTORATUL GENERAL AL POLITIEI ROMANE\n\n\n\n                                       DOVADA \n\n    Subsemnat/a Ionut Betoane, domiciliat in San Andreas, avand ocupatia de -------, avand CNP ------------------, CUI--------------------\n    Ofiter constatator Chestor General de Politie Furtwangler Florin\n\n    Se elibereaza pentru a-i servi pentru punerea in miscare a autovehiculelor pe o durata de 15 zile de la data de 30 mai 2020, avand ca sanctiune retinerea permisului de conducere pe o durata de 90 de zile de la data de 30 mai 2020.\n\n\n\n                                    Sef Serviciu Rutier,\n                                Chestor General de Politie\n                                    Furtwangler Florin\n', 1),
(34, 'Dovada ', 'Furtwangler Florin', '                   MINISTERUL ADMINISTRATIEI SI INTERNELOR\n                               SERVICIUL RUTIER \n               INSPECTORATUL GENERAL AL POLITIEI ROMANE\n\n                           DUPLICAT-DUPLICAT-DUPLICAT\n\n                                       DOVADA \n\n    Subsemnat/a Ionut Betoane, domiciliat in San Andreas, avand ocupatia de -------, avand CNP ------------------, CUI--------------------\n    Ofiter constatator Chestor General de Politie Furtwangler Florin\n\n    Se elibereaza pentru a-i servi pentru punerea in miscare a autovehiculelor pe o durata de 15 zile de la data de 30 mai 2020, avand ca sanctiune retinerea permisului de conducere pe o durata de 90 de zile de la data de 30 mai 2020.\n\n\n\n                                    Sef Serviciu Rutier,\n                                Chestor General de Politie\n                                    Furtwangler Florin\n', 1),
(35, 'Fisa ITP', 'Nedelcu Florin', '* DeÈ›inÄƒtorul Vehiculului .\r Popa Alexandru\n\r\n* Seria din buletin al proprietarului.\r  KL 76176\n\r\n* NumÄƒrul de Ã®nmatriculare a vehiculului .\r CJ 24 YAD\n\r\n* Anul de fabricaÈ›ie a vehiculului .\r 2012\n\r\n* Numele firmei maÈ™ini .\r Kawasaki Nija HZR\n\r\n* Èšara de provenienÈ›Äƒ a maÈ™ini .\r Japonia\n\r\n* NumÄƒrul de Kilometri .\r 2683\n\r\n* Numele inspectorului I.T.P .\r Nedelcu Florin\n\r\n* Ziua È™i data in care a fost fÄƒcut I.T.P - ul. 30.05.2020\r\n\r\n* Ziua È™i data expirÄƒrii  I.T.P - 06.06.2020.\n\n\n', 1),
(36, 'Kawasaki Ninja HZR', 'Necunoscut', '* DeÈ›inÄƒtorul Vehiculului .\r Popa Alexandru\n\r\n* Seria din buletin al proprietarului.\r  KL 76176\n\r\n* NumÄƒrul de Ã®nmatriculare a vehiculului .\r CJ 24 YAD\n\r\n* Anul de fabricaÈ›ie a vehiculului .\r 2012\n\r\n* Numele firmei maÈ™ini .\r Kawasaki Nija HZR\n\r\n* Èšara de provenienÈ›Äƒ a maÈ™ini .\r Japonia\n\r\n* NumÄƒrul de Kilometri .\r 2683\n\r\n* Numele inspectorului I.T.P .\r Nedelcu Florin\n\r\n* Ziua È™i data in care a fost fÄƒcut I.T.P - ul. 30.05.2020\r\n\r\n* Ziua È™i data expirÄƒrii  I.T.P - 06.06.2020.\n\n\n', 1),
(37, 'New Book', 'Necunoscut', 'ÃŽnceputul la ceva plÄƒcut...', 0),
(38, 'New Book', 'Necunoscut', 'ÃŽnceputul la ceva plÄƒcut...', 0),
(39, 'New Book', 'Necunoscut', 'ÃŽnceputul la ceva plÄƒcut...', 0),
(40, 'Dacia 1310', 'Nedelcu Florin', '* DeÈ›inÄƒtorul Vehiculului .\r Simion Lungu\n\r\n* Seria din buletin al proprietarului.\r  OM 65772\n\r\n* NumÄƒrul de Ã®nmatriculare a vehiculului .\r IJ 01LNG\n\r\n* Anul de fabricaÈ›ie a vehiculului .\r1989\n\r\n* Numele firmei maÈ™ini .\r Dacia\n\r\n* Èšara de provenienÈ›Äƒ a maÈ™ini .\r Romania\n\r\n* NumÄƒrul de Kilometri .\r 7657\n\r\n* Numele inspectorului I.T.P .\r Nedelcu Florin\n\r\n* Ziua È™i data in care a fost fÄƒcut I.T.P - ul. 31.05.2020\r\n\r\n* Ziua È™i data expirÄƒrii  I.T.P- 07.06.2020.\n\n', 1),
(41, 'Volswagen Golf 5 ', 'Nedelcu Florin', '* DeÈ›inÄƒtorul Vehiculului .\r Simion Lungu \n\r\n* Seria din buletin al proprietarului.\r HJ 83712\n\r\n* NumÄƒrul de Ã®nmatriculare a vehiculului .\r IS 02 LVT\n\r \n* Anul de fabricaÈ›ie a vehiculului .\r 2006\n\r\n* Numele firmei maÈ™ini .\r        Volswagen\n\r\n* Èšara de provenienÈ›Äƒ a maÈ™ini .\r Germania \n\r\n* NumÄƒrul de Kilometri .\r 3606\n\r\n* Numele inspectorului I.T.P .\r Nedelcu Florin\n\r\n* Ziua È™i data in care a fost fÄƒcut I.T.P - ul. 31.05.2020\r\n\r\n* Ziua È™i data expirÄƒrii  I.T.P- 07.06.2020.\n\n', 1),
(42, 'Volswagen  Mk 4', 'Nedelcu Florin ', '* DeÈ›inÄƒtorul Vehiculului .\r Nedelcu Florin \n\r\n* Seria din buletin al proprietarului.\r JF 09882\n\r\n* NumÄƒrul de Ã®nmatriculare a vehiculului .\r  IS 03 TEL\n\r\n* Anul de fabricaÈ›ie a vehiculului .\r 2001\n\r\n* Numele firmei maÈ™ini .\r Volswagen\n\r\n* Èšara de provenienÈ›Äƒ a maÈ™ini .\r Germania \n\r\n* NumÄƒrul de Kilometri .\r 4041\n\r\n* Numele inspectorului I.T.P .\r  Nedelcu Florin\n\r\n* Ziua È™i data in care a fost fÄƒcut I.T.P - ul. 31.05.2020\r\n\r\n* Ziua È™i data expirÄƒrii  I.T.P  07.06.2020.\n\n', 1),
(43, '1', 'Necunoscut', 'ÃŽnceputul la ceva plÄƒcut...', 0),
(44, '1', 'Necunoscut', 'eu \n', 1),
(45, '1', 'Necunoscut', '#Detinatorul vehicolului: Mihai Tirian\n#Numarul de imatriculare al vehicolului:XFR 3312\n#Anul de fabricatie al masinii : 2003\n#Numele  firmei masinii:BMW\n#Numarul de modificari: Culoare \n#Data RAR Facut: 1.06.2020\n#data expirari : 08.06.2020\n', 1),
(46, '1', 'Necunoscut', '#detinatorul masinii : Mihai Tirian\n#seria de buletin : 364957\n# numarul de imatriculare :MB5816\n# anul de fabricatie: 2012\n# numele firmei maisnii: mercedes\n# tara de provienenta : romania\n# numarul de kilometri : 2439\n# numele inspectorului ITP : vlad lates \n# data facuta itp : 01.06.2020\n# data expirari itp : 08.06.2020\n', 1),
(47, '1', 'Necunoscut', '#Detinatorul masinii : Mihai Tirian\n#seria de buletin : 284924\n#numarul de imatriculare al masinii : XFR 3312\n#anul de fabricatie al masinii : 2003\n#numele firmei maisnii : bmw\n#tara de provenienta: romania\n#numarul de kilometrii : 5137\n#numele inspectorului de itp : Vlad Lates\n#data itp facut: 01.06.2020\n#data expirari itp 08.06.2020\n\n', 1),
(48, 'ITP', 'Necunoscut', '#detinatorul masinii: Kenny Jackson\n#seria de buletin:384924\n#numarul de imatriculare :PD13770\n#anul de fabricatie: 2006\n#numele firmei masinii: Mercedes\n#tara de provienenta : germania\n# numarul de kilometri: 4525\n#numele inspectorului: vlad lates\n# data itp ului : 01.06.2020\n# data expirari : 08.06.2020\n', 0),
(49, 'ITP', 'Necunoscut', '# detinatorul masinii: Kenny Jackson\n# seria de buletin:904873\n# numarul de imatriculare:YV4 2551\n# anul masinii: 2011\n# tara de provienenta: Germania\n# numarul de kilometri: 2802 \n# numele inspectorului itp : Vlad Lates\n# data itp facut : 01.06.2020\n# data expirari itp : 08.06.2020\n', 1),
(50, '1', 'Necunoscut', 'ÃŽnceputul la ceva plÄƒcut...', 0),
(51, '1', 'Necunoscut', 'ÃŽnceputul la ceva plÄƒcut...', 0),
(52, 'PV 02 din 2 iun.2020', 'Furtwangler', '                  MINISTERUL ADMINISTRATIEI SI INTERNELOR\n                INSPECTORATUL GENERAL AL POLITIEI ROMANE\n                                  SERVICIUL RUTIER\n\n                                                                       \n                                   PROCES VERBAL\n\n Agent constatator: Chestor General de Politie Furtwangler Florin\n Subsemnat/a Stefan Alexandru, domiciliat in Vinewood, avand CNP-----------------, CUI------------------, avand ocupatia de Patron firma tractari si reparatii auto AD GARAJE.\n     Contraventii/infractiuni:\n\n Stationare neregulamentara, sanctionata de 195/2002\n Sanctiune: 500 lei, adica cincisute lei.\n Nu se dispune retinerea permisului de conducere.\n Nu se elibereaza dovada.\n Nu se dispune stationarea voluntara/involuntara a vehiculului.\n\n   Mentiuni contravenient:\n\n Subsemnat/a Stefan Alexandru, declar urmatoarele: \"Am stationat ca am vrut sa ajut un cetatean care am crezut ca are probleme si cam atat.\"\n\n\n                                  Semnatura,\n                               Sef Serviciu Rutier\n                          Chestor General de Politie\n                                Furtwangler Florin\n\n', 1),
(53, 'PV 02 din 02iun2020', 'Furtwangler', '                  MINISTERUL ADMINISTRATIEI SI INTERNELOR\n                INSPECTORATUL GENERAL AL POLITIEI ROMANE\n                                  SERVICIUL RUTIER\n\n                                      DUPLICAT  (2)                                                            \n                                   PROCES VERBAL\n\n Agent constatator: Chestor General de Politie Furtwangler Florin\n Subsemnat/a Stefan Alexandru, domiciliat in Vinewood, avand CNP-----------------, CUI------------------, avand ocupatia de Patron firma tractari si reparatii auto AD GARAJE.\n     Contraventii/infractiuni:\n\n Stationare neregulamentara, sanctionata de 195/2002\n Sanctiune: 500 lei, adica cincisute lei.\n Nu se dispune retinerea permisului de conducere.\n Nu se elibereaza dovada.\n Nu se dispune stationarea voluntara/involuntara a vehiculului.\n\n   Mentiuni contravenient:\n\n Subsemnat/a Stefan Alexandru, declar urmatoarele: \"Am stationat ca am vrut sa ajut un cetatean care am crezut ca are probleme si cam atat.\"\n\n\n                                  Semnatura,\n                               Sef Serviciu Rutier\n                          Chestor General de Politie\n                                Furtwangler Florin\n\n', 1),
(54, '1', 'Necunoscut', 'ÃŽnceputul la ceva plÄƒcut...', 0),
(55, '1', 'Necunoscut', 'ÃŽnceputul la ceva plÄƒcut...', 0),
(56, '1', 'Necunoscut', 'ÃŽnceputul la ceva plÄƒcut...', 0),
(57, 'INSPECTIA - TEHNICA - PERIODICA (I.T.P)', 'Necunoscut', '* Marian Narcis \n* C435B35738195BCF298CBC573E0A0BC\n* IS 33 MBC\n* 2012 \n* Dacia Duster \n* Romania \n* 1987 \n* Vali Zanet \n* 7 Iunie 2020\n* 14 Iunie 2020\n', 1),
(58, 'I.T.P', 'Mercedes G500', '* Popa Alexandru \n* 11442\n* CJ 26 YAD\n* 2015\n* Mercedes G500\n* Germania\n* 989\n* Vali Zanet\n* 8 Iunie 2020\n* 15 Iunite 2020\n\n', 0),
(59, 'New Book', 'Necunoscut', 'ÃŽnceputul la ceva plÄƒcut...', 0),
(60, 'Fisa R.A.R ', 'Mercedes G500', '* Popa Alexandru \n* CJ 26 YAD\n* 2015\n* Mercedes G500\n* 2\n* Jante si Culoare\n* 8 Iunie 2020\n* 15 Iunie 2020 \n* Vali Zanet\n\n', 0),
(61, 'New Book', 'Necunoscut', 'ÃŽnceputul la ceva plÄƒcut...', 0),
(62, 'FISA I.T.P', 'BMW M6', '* Vali Zanet\n* \n', 0),
(63, 'i.t.p', 'Daniel Stefan', '* DeÈ›inÄƒtorul Vehiculului .\rAlexandru Stefan\n\r\n* Seria din buletin al proprietarului.\ri(nu am gasit)\n\r\n* NumÄƒrul de Ã®nmatriculare a vehiculului .\rFQ69078\n\r\n* Anul de fabricaÈ›ie a vehiculului 2016.\r\n\r\n* Numele firmei maÈ™ini .\rbmw\n\r\n* Èšara de provenienÈ›Äƒ a maÈ™ini .Germania\n\r\n* NumÄƒrul de Kilometri .\r614 mile\n\r\n* Numele inspectorului I.T.P Daniel Stefan.\r\n\r\n* Ziua È™i data in care a fost fÄƒcut I.T.P - ul.( DATA DIN VIAÈšA REALÄ‚)09.06.2020\r\n\r\n* Ziua È™i data expirÄƒrii  I.T.P ( Trebuie reÃ®nnoit o datÄƒ la o sÄƒptÄƒmÃ¢nÄƒ )16.06.2020.\n\n', 1),
(64, 'r.a.r', 'Daniel Stefan', '* DETINATORUL VEHICULULUI : Alexandru Stefan\n\n* NUMARUL DE INMATRICULARE AL VEHICULULUI : FQ 6 9078\n\n* ANUL DE FABRICATIE AL VEHICULULUI: 2016\n\n* NUMELE FIRMEI MASINI :BMW \n\n* NUMARUL DE MODIFICARI : 2\n\n', 1),
(65, 'Licenta arma ', 'Nicolaie', 'Aceasta este o fisa de completare pentru permisul de Port-Arma T1/T2 Dupa completarea ei fisa va fi trimisa la Bucuresti.\n Nume:Mawasi \n Prenume:Gabriel\n Adresa:Vinewood\n Varsta:25\n Pentru ce licenta doriti sa aplicati si ce v-a determinat sa aplicati de licenta:T1,T2 pentru vanat\n Pentru ce doriti sa aveti licenta de port Arma\n**** Semnatura celui care o elibereaza:ANFPA****\n****Semnatura celui care aplica pentru licenta: ****\nINFO:T1-35.000LEI\n       :T2 65.000LEI\n \n', 1),
(66, '1', 'Necunoscut', 'ÃŽnceputul la ceva plÄƒcut...', 0),
(67, '1', 'Necunoscut', 'ÃŽnceputul la ceva plÄƒcut...', 0),
(68, '1', 'Necunoscut', 'ÃŽnceputul la ceva plÄƒcut...', 0),
(69, '1', 'Necunoscut', 'ÃŽnceputul la ceva plÄƒcut...', 0),
(70, '1', 'Necunoscut', 'ÃŽnceputul la ceva plÄƒcut...', 0),
(71, '1', 'Necunoscut', 'ÃŽnceputul la ceva plÄƒcut...', 0),
(72, '1', 'Necunoscut', 'ÃŽnceputul la ceva plÄƒcut...', 0),
(73, 'New Book', 'Necunoscut', 'ÃŽnceputul la ceva plÄƒcut...', 0),
(74, 'New Book', 'Necunoscut', 'ÃŽnceputul la ceva plÄƒcut...', 0),
(75, 'New Book', 'Necunoscut', 'ÃŽnceputul la ceva plÄƒcut...', 0),
(76, 'New Book', 'Necunoscut', 'ÃŽnceputul la ceva plÄƒcut...', 0),
(77, 'DovadÄƒ fÄƒrÄƒ drept de circulaÈ›ie', 'Agent-È™ef principal Ioan Pavel', 'Subsemnatul Vali Zanet primeÈ™te dovadÄƒ fÄƒrÄƒ drept de circulaÈ›ie.\n', 1),
(78, 'New Book', 'Necunoscut', 'ÃŽnceputul la ceva plÄƒcut...\n', 1),
(79, '1', 'Necunoscut', 'ÃŽnceputul la ceva plÄƒcut...', 0),
(80, '1', 'Necunoscut', 'ÃŽnceputul la ceva plÄƒcut...', 0),
(81, '1', 'Necunoscut', 'ÃŽnceputul la ceva plÄƒcut...', 0);

-- --------------------------------------------------------

--
-- Table structure for table `businesses`
--

CREATE TABLE `businesses` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `bank_card` varchar(100) NOT NULL DEFAULT '0000 0000 0000 0000',
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `business_accounts`
--

CREATE TABLE `business_accounts` (
  `id` int(11) NOT NULL,
  `recipient` varchar(250) NOT NULL,
  `recipient_type` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `description` varchar(250) NOT NULL,
  `business` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `business_members`
--

CREATE TABLE `business_members` (
  `id` int(11) NOT NULL,
  `character` int(11) NOT NULL,
  `business` int(11) NOT NULL,
  `rank` varchar(200) NOT NULL,
  `wage` int(11) NOT NULL,
  `leader` int(11) NOT NULL,
  `phone` varchar(30) NOT NULL DEFAULT '0',
  `address` varchar(200) NOT NULL DEFAULT 'None',
  `date_hired` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `business_rentals`
--

CREATE TABLE `business_rentals` (
  `id` int(11) NOT NULL,
  `business` int(11) NOT NULL,
  `rental_id` int(11) NOT NULL,
  `rental_type` int(11) NOT NULL,
  `rental_price` int(11) NOT NULL,
  `rented_to` int(11) NOT NULL,
  `rented_time` int(11) NOT NULL,
  `rented_phone` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `characters`
--

CREATE TABLE `characters` (
  `id` int(11) NOT NULL,
  `charactername` text DEFAULT NULL,
  `account` int(11) DEFAULT 0,
  `x` float DEFAULT -1970.45,
  `y` float DEFAULT 438.274,
  `z` float DEFAULT 35.1719,
  `rotation` float DEFAULT 91.7125,
  `interior_id` int(5) DEFAULT 0,
  `dimension_id` int(5) DEFAULT 0,
  `health` float DEFAULT 100,
  `armor` float DEFAULT 0,
  `skin` int(3) DEFAULT 23,
  `money` bigint(20) DEFAULT 0,
  `gender` int(1) DEFAULT 0,
  `cuffed` int(11) DEFAULT 0,
  `duty` int(3) DEFAULT 0,
  `fightstyle` int(2) DEFAULT 4,
  `pdjail` int(1) DEFAULT 0,
  `pdjail_time` int(11) DEFAULT 0,
  `cked` int(1) DEFAULT 0,
  `lastarea` text DEFAULT NULL,
  `age` int(3) DEFAULT 18,
  `faction_id` int(11) DEFAULT -1,
  `faction_rank` int(2) DEFAULT 1,
  `faction_perks` text DEFAULT NULL,
  `faction_phone` int(3) UNSIGNED DEFAULT NULL,
  `skincolor` int(1) DEFAULT 0,
  `weight` int(3) DEFAULT 180,
  `height` int(3) DEFAULT 180,
  `description` text DEFAULT NULL,
  `deaths` int(11) DEFAULT 0,
  `faction_leader` int(1) DEFAULT 0,
  `fingerprint` text DEFAULT NULL,
  `casualskin` int(3) DEFAULT 0,
  `bankmoney` bigint(20) DEFAULT 500,
  `car_license` int(1) DEFAULT 0,
  `bike_license` int(1) DEFAULT 0,
  `pilot_license` int(1) DEFAULT 0,
  `fish_license` int(1) DEFAULT 0,
  `boat_license` int(1) DEFAULT 0,
  `gun_license` int(1) DEFAULT 0,
  `gun2_license` int(1) DEFAULT 0,
  `tag` int(3) DEFAULT 1,
  `hoursplayed` int(11) DEFAULT 0,
  `pdjail_station` int(1) DEFAULT 0,
  `timeinserver` int(2) DEFAULT 0,
  `restrainedobj` int(11) DEFAULT 0,
  `restrainedby` int(11) DEFAULT 0,
  `dutyskin` int(3) DEFAULT -1,
  `fish` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `blindfold` tinyint(4) NOT NULL DEFAULT 0,
  `lang1` tinyint(2) DEFAULT 1,
  `lang1skill` tinyint(3) DEFAULT 100,
  `lang2` tinyint(2) DEFAULT 0,
  `lang2skill` tinyint(3) DEFAULT 0,
  `lang3` tinyint(2) DEFAULT 0,
  `lang3skill` tinyint(3) DEFAULT 0,
  `currlang` tinyint(1) DEFAULT 1,
  `lastlogin` datetime DEFAULT NULL,
  `creationdate` timestamp NOT NULL DEFAULT current_timestamp(),
  `election_candidate` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `election_canvote` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `election_votedfor` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `marriedto` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `photos` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `maxvehicles` int(4) UNSIGNED NOT NULL DEFAULT 5,
  `ck_info` text DEFAULT NULL,
  `alcohollevel` float NOT NULL DEFAULT 0,
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `recovery` int(1) DEFAULT 0,
  `recoverytime` bigint(20) DEFAULT NULL,
  `walkingstyle` int(3) NOT NULL DEFAULT 0,
  `job` int(3) NOT NULL DEFAULT 0,
  `day` tinyint(2) NOT NULL DEFAULT 1,
  `month` tinyint(2) NOT NULL DEFAULT 1,
  `maxinteriors` int(4) NOT NULL DEFAULT 5,
  `clothingid` int(10) UNSIGNED DEFAULT NULL,
  `death_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `character_settings`
--

CREATE TABLE `character_settings` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `clothing`
--

CREATE TABLE `clothing` (
  `id` int(11) UNSIGNED NOT NULL,
  `skin` int(11) UNSIGNED NOT NULL,
  `url` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `commands`
--

CREATE TABLE `commands` (
  `id` int(11) NOT NULL,
  `command` text DEFAULT NULL,
  `hotkey` text DEFAULT NULL,
  `explanation` text DEFAULT NULL,
  `permission` int(3) NOT NULL DEFAULT 0,
  `category` int(2) NOT NULL DEFAULT 1,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Saves all info about all kinds of supported commands and con';

-- --------------------------------------------------------

--
-- Table structure for table `commands_library`
--

CREATE TABLE `commands_library` (
  `cmID` int(11) NOT NULL,
  `cmType` int(3) NOT NULL DEFAULT 1,
  `cmLevel` int(3) NOT NULL DEFAULT 0,
  `cmSubType` int(3) NOT NULL DEFAULT 0,
  `cmName` text DEFAULT NULL,
  `cmExplanation` text DEFAULT NULL,
  `cmCreationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Saves all info about all kinds of commands in /cmds, /gh and';

-- --------------------------------------------------------

--
-- Table structure for table `computers`
--

CREATE TABLE `computers` (
  `id` int(11) NOT NULL,
  `posX` float(10,5) NOT NULL,
  `posY` float(10,5) NOT NULL,
  `posZ` float(10,5) NOT NULL,
  `rotX` float(10,5) NOT NULL,
  `rotY` float(10,5) NOT NULL,
  `rotZ` float(10,5) NOT NULL,
  `interior` int(8) NOT NULL,
  `dimension` int(8) NOT NULL,
  `model` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `cpa_postbacks`
--

CREATE TABLE `cpa_postbacks` (
  `id` int(11) NOT NULL,
  `tracking_id` int(11) NOT NULL,
  `payout` double DEFAULT 0,
  `message` text DEFAULT NULL,
  `offer_id` int(11) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dancers`
--

CREATE TABLE `dancers` (
  `id` int(10) UNSIGNED NOT NULL,
  `x` float NOT NULL,
  `y` float NOT NULL,
  `z` float NOT NULL,
  `rotation` float NOT NULL,
  `skin` smallint(5) UNSIGNED NOT NULL,
  `type` tinyint(3) UNSIGNED NOT NULL,
  `interior` int(10) UNSIGNED NOT NULL,
  `dimension` int(10) UNSIGNED NOT NULL,
  `offset` tinyint(3) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `donates`
--

CREATE TABLE `donates` (
  `order_id` int(11) NOT NULL,
  `txn_id` varchar(19) NOT NULL,
  `payer_email` varchar(75) NOT NULL,
  `mc_gross` float(9,2) NOT NULL,
  `donor` int(11) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `donated_for` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `donators`
--

CREATE TABLE `donators` (
  `id` int(11) NOT NULL,
  `accountID` int(11) NOT NULL,
  `charID` int(11) NOT NULL DEFAULT -1,
  `perkID` int(4) NOT NULL,
  `perkValue` varchar(10) NOT NULL DEFAULT '1',
  `expirationDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `donators`
--

INSERT INTO `donators` (`id`, `accountID`, `charID`, `perkID`, `perkValue`, `expirationDate`) VALUES
(1, 1, -1, 11, '1', '2020-05-24 01:11:52'),
(2, 14, -1, 11, '1', '2020-05-24 01:12:14'),
(3, 14, -1, 10, '1', '2020-05-24 01:12:59'),
(4, 1, -1, 4, '1', '2020-06-24 20:31:48'),
(5, 1, -1, 5, '1', '2020-07-04 20:31:53'),
(6, 14, -1, 11, '1', '2020-05-28 15:43:01'),
(7, 7, -1, 10, '1', '2020-05-28 22:45:16'),
(8, 7, -1, 11, '1', '2020-05-28 22:45:20'),
(9, 14, -1, 11, '1', '2020-05-30 00:33:24'),
(10, 19, -1, 5, '1', '2020-07-08 22:58:50'),
(12, 144, -1, 11, '1', '2020-06-06 22:39:28'),
(13, 144, -1, 10, '1', '2020-06-06 22:39:39'),
(14, 144, -1, 11, '1', '2020-06-07 23:16:06'),
(15, 144, -1, 10, '1', '2020-06-07 23:47:03'),
(16, 14, -1, 11, '1', '2020-06-08 01:31:49'),
(17, 14, -1, 1, '0', '2020-06-27 02:44:06'),
(18, 14, -1, 10, '1', '2020-06-08 03:21:24'),
(19, 14, -1, 11, '1', '2020-06-10 12:26:11'),
(20, 1, -1, 11, '1', '2020-06-10 12:26:59'),
(21, 7, -1, 10, '1', '2020-06-10 22:32:22'),
(22, 7, -1, 11, '1', '2020-06-10 22:32:25'),
(23, 7, -1, 10, '1', '2020-06-12 09:03:45'),
(24, 7, -1, 11, '1', '2020-06-12 09:03:49'),
(25, 7, -1, 8, '1', '2020-06-21 09:03:51'),
(26, 14, -1, 7, '1', '2020-06-22 12:54:34'),
(27, 14, -1, 5, '1', '2020-07-22 12:54:38'),
(28, 155, -1, 10, '1', '2020-06-16 14:05:22'),
(29, 155, -1, 11, '1', '2020-06-16 14:05:26'),
(30, 155, -1, 7, '1', '2020-06-25 21:10:56'),
(31, 155, -1, 5, '1', '2020-07-25 21:11:06'),
(32, 155, -1, 4, '1', '2020-07-15 21:31:32'),
(33, 155, -1, 12, '1', '2020-07-01 08:49:56'),
(34, 155, -1, 37, '1', '2020-06-21 11:58:52'),
(36, 1, -1, 11, '1', '2020-06-17 23:19:57'),
(37, 155, -1, 1, '0', '2020-07-07 17:24:23');

-- --------------------------------------------------------

--
-- Table structure for table `don_purchases`
--

CREATE TABLE `don_purchases` (
  `id` int(11) NOT NULL,
  `name` text DEFAULT NULL,
  `cost` int(11) DEFAULT 0,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `account` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `don_transactions`
--

CREATE TABLE `don_transactions` (
  `id` int(11) NOT NULL,
  `transaction_id` varchar(64) NOT NULL,
  `donator_email` varchar(255) NOT NULL,
  `amount` double NOT NULL,
  `original_request` text DEFAULT NULL,
  `dt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp(),
  `handled` smallint(1) DEFAULT 0,
  `username` varchar(50) NOT NULL,
  `realamount` double NOT NULL DEFAULT 0,
  `item_number` int(11) NOT NULL DEFAULT 0,
  `validated` smallint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `don_transaction_failed`
--

CREATE TABLE `don_transaction_failed` (
  `id` int(11) NOT NULL,
  `output` text NOT NULL,
  `ip` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `duty_allowed`
--

CREATE TABLE `duty_allowed` (
  `id` int(11) NOT NULL,
  `faction` int(11) NOT NULL,
  `itemID` int(11) NOT NULL,
  `itemValue` varchar(45) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Used for an admin allow list.';

--
-- Dumping data for table `duty_allowed`
--

INSERT INTO `duty_allowed` (`id`, `faction`, `itemID`, `itemValue`) VALUES
(1, 1, 45, '1'),
(2, 1, 13, '3'),
(3, 1, 83, '1'),
(4, 1, 8, '3'),
(5, 1, -3, '1'),
(6, 1, -23, '100'),
(7, 1, -22, '100'),
(8, 1, -41, '500'),
(10, 1, 53, '1'),
(11, 1, 53, '2'),
(12, 1, 53, '1'),
(13, 1, 53, ' 1'),
(14, 1, 53, '1'),
(15, 1, 53, '1'),
(16, 1, 53, '1'),
(17, 1, 53, '1'),
(18, 1, -23, '0'),
(19, 4, 178, '1'),
(20, 4, 178, '1'),
(21, 4, 178, '1'),
(22, 4, 178, '1'),
(23, 4, 178, '1'),
(24, 4, 6, '1'),
(25, 4, 6, '1'),
(26, 4, 6, '1'),
(27, 4, 6, '1'),
(28, 4, 6, '1'),
(29, 4, 6, '1'),
(30, 3, -41, '200'),
(31, 3, -41, '200'),
(32, 3, -41, '200'),
(33, 5, -24, '50'),
(34, 5, -3, '1'),
(35, 3, -3, '100'),
(36, 8, -3, '900'),
(37, 8, -3, '900'),
(38, 8, -3, '900'),
(39, 8, -3, '900'),
(40, 8, -24, '300'),
(41, 8, -24, '300'),
(42, 8, -24, '300'),
(43, 8, -24, '300'),
(44, 8, -3, '1'),
(45, 8, -3, '1'),
(46, 8, -3, '1'),
(47, 8, -3, '1'),
(48, 8, -24, '100'),
(49, 1, -31, '100'),
(50, 1, -24, '50'),
(51, 8, -24, '50'),
(52, 8, -34, '20'),
(53, 8, -31, '100');

-- --------------------------------------------------------

--
-- Table structure for table `duty_custom`
--

CREATE TABLE `duty_custom` (
  `id` int(11) NOT NULL,
  `factionid` int(11) NOT NULL,
  `name` text NOT NULL,
  `skins` text NOT NULL,
  `locations` text NOT NULL,
  `items` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Used for custom duties.';

--
-- Dumping data for table `duty_custom`
--

INSERT INTO `duty_custom` (`id`, `factionid`, `name`, `skins`, `locations`, `items`) VALUES
(5, 2, 'Medic', '[ [ [ 275, \"N\\/A\" ] ] ]', '[ { \"70\": \"Duty Dillimore\", \"2\": \"Duty\" } ]', '[ { \"9\": [ 9, -42, 500, \"500\" ], \"15\": [ 15, -41, 500, \"500\" ], \"13\": [ 13, 83, \"\" ], \"12\": [ 12, 13, \"1\" ], \"11\": [ 11, 70, \"1\" ] } ]'),
(7, 2, 'C.E.O', '[ [ [ 275, \"N\\/A\" ] ] ]', '[ { \"70\": \"Duty Dillimore\", \"2\": \"Duty\" } ]', '[ { \"9\": [ 9, -42, 500, \"500\" ], \"15\": [ 15, -41, 500, \"500\" ], \"13\": [ 13, 83, \"\" ], \"12\": [ 12, 13, \"1\" ], \"11\": [ 11, 70, \"1\" ], \"10\": [ 10, 162, \"100\" ] } ]'),
(8, 2, 'Manager', '[ [ [ 186, \"N\\/A\" ] ] ]', '[ { \"70\": \"Duty Dillimore\", \"2\": \"Duty\" } ]', '[ { \"10\": [ 10, 162, \"100\" ], \"15\": [ 15, -41, 500, \"500\" ] } ]'),
(9, 2, 'Director', '[ [ [ 186, \"N\\/A\" ], [ 277, \"N\\/A\" ], [ 278, \"N\\/A\" ], [ 274, \"N\\/A\" ], [ 275, \"N\\/A\" ], [ 276, \"N\\/A\" ], [ 100, \"N\\/A\" ], [ 44, \"N\\/A\" ], [ 284, \"N\\/A\" ], [ 285, \"N\\/A\" ], [ 286, \"N\\/A\" ] ] ]', '[ { \"2\": \"Duty\", \"70\": \"Duty Dillimore\" } ]', '[ { \"10\": [ 10, 162, \"100\" ], \"15\": [ 15, -41, 500, \"500\" ] } ]'),
(11, 4, 'Student', '[ [ [ 23, \"N\\/A\" ], [ 8, \"N\\/A\" ] ] ]', '[ { \"3\": \"Duty\" } ]', '[ { \"20\": [ 20, 178, \"1\" ], \"24\": [ 24, 6, \"1\" ], \"19\": [ 19, 178, \"1\" ] } ]'),
(12, 4, 'Mecanic', '[ [ [ 50, \"N\\/A\" ] ] ]', '[ { \"3\": \"Duty\" } ]', '[ { \"20\": [ 20, 178, \"1\" ], \"24\": [ 24, 6, \"1\" ], \"19\": [ 19, 178, \"1\" ] } ]'),
(13, 4, 'Patron', '[ [ [ 186, \"N\\/A\" ], [ 50, \"N\\/A\" ] ] ]', '[ { \"3\": \"Duty\" } ]', '[ { \"20\": [ 20, 178, \"1\" ], \"24\": [ 24, 6, \"1\" ], \"19\": [ 19, 178, \"1\" ] } ]'),
(14, 4, 'Director', '[ [ [ 186, \"N\\/A\" ], [ 50, \"N\\/A\" ] ] ]', '[ { \"3\": \"Duty\" } ]', '[ { \"20\": [ 20, 178, \"1\" ], \"24\": [ 24, 6, \"1\" ], \"19\": [ 19, 178, \"1\" ] } ]'),
(15, 3, 'Sofer', '[ [ [ 61, \"N\\/A\" ] ] ]', '[ { \"4\": \"Duty\" } ]', '[ { \"9\": [ 9, -41, 500, \"500\" ] } ]'),
(16, 3, 'Bodyguard', '[ [ [ 71, \"N\\/A\" ] ] ]', '[ { \"4\": \"Duty\" } ]', '[ { \"31\": [ 31, -41, 200, \"200\" ], \"30\": [ 30, -41, 200, \"200\" ], \"32\": [ 32, -41, 200, \"200\" ], \"35\": [ 35, -3, 100, \"100\" ] } ]'),
(17, 3, 'Agent securitate', '[ [ [ 71, \"N\\/A\" ] ] ]', '[ { \"4\": \"Duty\" } ]', '[ [ ] ]'),
(18, 3, 'Sef securitate', '[ [ [ 186, \"N\\/A\" ] ] ]', '[ { \"4\": \"Duty\" } ]', '[ [ ] ]'),
(19, 3, 'Inspector', '[ [ [ 186, \"N\\/A\" ] ] ]', '[ { \"4\": \"Duty\" } ]', '[ [ ] ]'),
(20, 3, 'Purtator de cuvant', '[ [ [ 186, \"N\\/A\" ] ] ]', '[ { \"4\": \"Duty\" } ]', '[ [ ] ]'),
(21, 3, 'Secretar', '[ [ [ 186, \"N\\/A\" ] ] ]', '[ { \"4\": \"Duty\" } ]', '[ [ ] ]'),
(22, 3, 'Specialist in calculatoare', '[ [ [ 186, \"N\\/A\" ] ] ]', '[ { \"4\": \"Duty\" } ]', '[ [ ] ]'),
(23, 3, 'Deputat', '[ [ [ 186, \"N\\/A\" ] ] ]', '[ { \"4\": \"Duty\" } ]', '[ [ ] ]'),
(24, 3, 'Senator', '[ [ [ 186, \"N\\/A\" ] ] ]', '[ { \"4\": \"Duty\" } ]', '[ [ ] ]'),
(25, 3, 'Contabil', '[ [ [ 186, \"N\\/A\" ] ] ]', '[ { \"4\": \"Duty\" } ]', '[ [ ] ]'),
(26, 3, 'Vice primar', '[ [ [ 186, \"N\\/A\" ] ] ]', '[ { \"4\": \"Duty\" } ]', '[ [ ] ]'),
(27, 3, 'Primar', '[ [ [ 186, \"N\\/A\" ], [ 295, \"N\\/A\" ] ] ]', '[ { \"4\": \"Duty\" } ]', '[ [ ] ]'),
(29, 5, 'Student(a)', '[ [ [ 70, \"N\\/A\" ], [ 12, \"N\\/A\" ] ] ]', '[ { \"5\": \"Duty\" } ]', '[ [ ] ]'),
(30, 5, 'Reporter(a)', '[ [ [ 119, \"N\\/A\" ], [ 194, \"N\\/A\" ] ] ]', '[ { \"5\": \"Duty\" } ]', '[ [ ] ]'),
(31, 5, 'Jurnalist', '[ [ [ 258, \"N\\/A\" ] ] ]', '[ { \"5\": \"Duty\" } ]', '[ { \"19\": [ 19, 71, \"\" ] } ]'),
(32, 5, 'Prezentator(oare) meteo', '[ [ [ 290, \"N\\/A\" ], [ 169, \"N\\/A\" ] ] ]', '[ { \"5\": \"Duty\" } ]', '[ [ ] ]'),
(33, 5, 'Prezentator(oare) stiri', '[ [ [ 171, \"N\\/A\" ], [ 150, \"N\\/A\" ] ] ]', '[ { \"5\": \"Duty\" } ]', '[ [ ] ]'),
(34, 5, 'Stiri din sport ', '[ [ [ 272, \"N\\/A\" ] ] ]', '[ { \"5\": \"Duty\" } ]', '[ [ ] ]'),
(35, 5, 'Horoscop', '[ [ [ 299, \"N\\/A\" ] ] ]', '[ { \"5\": \"Duty\" } ]', '[ [ ] ]'),
(36, 5, 'Telejurnal', '[ [ [ 240, \"N\\/A\" ] ] ]', '[ { \"5\": \"Duty\" } ]', '[ [ ] ]'),
(37, 5, 'Tot ce trebuie stiut', '[ [ [ 289, \"N\\/A\" ] ] ]', '[ { \"5\": \"Duty\" } ]', '[ [ ] ]'),
(38, 5, 'O data-n viata', '[ [ [ 153, \"N\\/A\" ] ] ]', '[ { \"5\": \"Duty\" } ]', '[ [ ] ]'),
(39, 5, '5 Minute de istorie', '[ [ [ 156, \"N\\/A\" ] ] ]', '[ { \"5\": \"Duty\" } ]', '[ [ ] ]'),
(40, 5, 'Prezentator(oare)-drama', '[ [ [ 147, \"N\\/A\" ] ] ]', '[ { \"5\": \"Duty\" } ]', '[ [ ] ]'),
(41, 5, 'Stiri din sport', '[ [ [ 120, \"N\\/A\" ] ] ]', '[ { \"5\": \"Duty\" } ]', '[ [ ] ]'),
(42, 5, 'Totu despre Ceausescu', '[ [ [ 112, \"N\\/A\" ] ] ]', '[ { \"5\": \"Duty\" } ]', '[ [ ] ]'),
(43, 5, 'Masini romanesti', '[ [ [ 98, \"N\\/A\" ] ] ]', '[ { \"5\": \"Duty\" } ]', '[ [ ] ]'),
(44, 5, 'Vice Director/Directoare', '[ [ [ 186, \"N\\/A\" ], [ 141, \"N\\/A\" ] ] ]', '[ { \"5\": \"Duty\" } ]', '[ [ ] ]'),
(45, 5, 'Director/Directoare', '[ [ [ 295, \"N\\/A\" ], [ 76, \"N\\/A\" ] ] ]', '[ { \"5\": \"Duty\", \"67\": \"VEHICLE\" } ]', '[ [ ] ]'),
(46, 5, 'Vice patron', '[ [ [ 186, \"N\\/A\" ] ] ]', '[ { \"5\": \"Duty\" } ]', '[ [ ] ]'),
(47, 5, 'Patron', '[ [ [ 186, \"N\\/A\" ] ] ]', '[ { \"5\": \"Duty\" } ]', '[ [ ] ]'),
(64, 6, 'Patron', '[ [ [ 127, \"N\\/A\" ], [ 47, \"N\\/A\" ] ] ]', '[ { \"68\": \"Duty\" } ]', '[ [ ] ]'),
(65, 6, 'Paznic', '[ [ [ 33, \"N\\/A\" ] ] ]', '[ { \"68\": \"Duty\" } ]', '[ [ ] ]'),
(66, 6, 'Manager', '[ [ [ 258, \"N\\/A\" ], [ 186, \"N\\/A\" ], [ 187, \"N\\/A\" ], [ 10, \"N\\/A\" ] ] ]', '[ { \"68\": \"Duty\" } ]', '[ [ ] ]'),
(67, 6, 'Taximetrist', '[ [ [ 255, \"N\\/A\" ], [ 253, \"N\\/A\" ], [ 240, \"N\\/A\" ], [ 12, \"N\\/A\" ], [ 34, \"N\\/A\" ], [ 84, \"N\\/A\" ] ] ]', '[ { \"68\": \"Duty\" } ]', '[ [ ] ]'),
(68, 6, 'F Manager', '[ [ [ 169, \"N\\/A\" ], [ 150, \"N\\/A\" ], [ 10, \"N\\/A\" ] ] ]', '[ { \"68\": \"Duty\" } ]', '[ [ ] ]'),
(69, 7, 'Director', '[ [ [ 186, \"N\\/A\" ] ] ]', '[ [ ] ]', '[ [ ] ]'),
(82, 1, 'Student', '[ [ [ 265, \"N\\/A\" ] ] ]', '[ { \"71\": \"Sectie 3\", \"38\": \"Sectie PD\", \"32\": \"Sectia de Politie nr.1 Montgomery\" } ]', '[ { \"1\": [ \"1\", 45, \"1\" ], \"3\": [ \"3\", 83, \"1\" ], \"2\": [ \"2\", 13, \"3\" ], \"5\": [ \"5\", -3, 1, \"1\" ], \"4\": [ \"4\", 8, \"3\" ], \"7\": [ \"7\", -22, 90, \"100\" ], \"6\": [ \"6\", -23, 90, \"100\" ], \"8\": [ \"8\", -41, 90, \"500\" ], \"50\": [ 50, -24, 50, \"50\" ], \"10\": [ 10, 53, \"1\" ] } ]'),
(83, 1, 'Inspectori', '[ [ [ 267, \"N\\/A\" ], [ 71, \"N\\/A\" ], [ 288, \"N\\/A\" ], [ 265, \"N\\/A\" ], [ 280, \"N\\/A\" ], [ 282, \"N\\/A\" ] ] ]', '[ { \"71\": \"Sectie 3\", \"29\": \"VEHICLE\", \"26\": \"VEHICLE\", \"28\": \"VEHICLE\", \"38\": \"Sectie PD\", \"31\": \"VEHICLE\", \"30\": \"VEHICLE\", \"27\": \"VEHICLE\", \"32\": \"Sectia de Politie nr.1 Montgomery\" } ]', '[ { \"1\": [ \"1\", 45, \"1\" ], \"3\": [ \"3\", 83, \"1\" ], \"2\": [ \"2\", 13, \"3\" ], \"5\": [ \"5\", -3, 1, \"1\" ], \"4\": [ \"4\", 8, \"3\" ], \"7\": [ \"7\", -22, 100, \"100\" ], \"6\": [ \"6\", -23, 90, \"100\" ], \"8\": [ \"8\", -41, 500, \"500\" ], \"13\": [ 13, 53, \" 1\" ], \"50\": [ 50, -24, 50, \"50\" ], \"49\": [ 49, -31, 100, \"100\" ], \"10\": [ 10, 53, \"1\" ] } ]'),
(84, 1, 'Chestori', '[ [ [ 288, \"N\\/A\" ], [ 282, \"N\\/A\" ] ] ]', '[ { \"53\": \"VEHICLE\", \"95\": \"VEHICLE\", \"85\": \"VEHICLE\", \"97\": \"VEHICLE\", \"47\": \"VEHICLE\", \"55\": \"VEHICLE\", \"91\": \"VEHICLE\", \"35\": \"VEHICLE\", \"29\": \"VEHICLE\", \"89\": \"VEHICLE\", \"27\": \"VEHICLE\", \"31\": \"VEHICLE\", \"33\": \"VEHICLE\", \"94\": \"VEHICLE\", \"52\": \"VEHICLE\", \"96\": \"VEHICLE\", \"50\": \"VEHICLE\", \"82\": \"VEHICLE\", \"64\": \"VEHICLE\", \"56\": \"VEHICLE\", \"66\": \"VEHICLE\", \"28\": \"VEHICLE\", \"38\": \"Sectie PD\", \"88\": \"VEHICLE\", \"92\": \"VEHICLE\", \"71\": \"Sectie 3\", \"54\": \"VEHICLE\", \"36\": \"VEHICLE\", \"34\": \"VEHICLE\", \"57\": \"VEHICLE\", \"65\": \"VEHICLE\", \"63\": \"VEHICLE\", \"93\": \"VEHICLE\", \"37\": \"VEHICLE\", \"26\": \"VEHICLE\", \"72\": \"Sectia 3\", \"30\": \"VEHICLE\", \"90\": \"VEHICLE\", \"32\": \"Sectia de Politie nr.1 Montgomery\" } ]', '[ { \"1\": [ \"1\", 45, \"1\" ], \"3\": [ \"3\", 83, \"1\" ], \"2\": [ \"2\", 13, \"3\" ], \"5\": [ \"5\", -3, 1, \"1\" ], \"4\": [ \"4\", 8, \"3\" ], \"7\": [ \"7\", -22, 100, \"100\" ], \"6\": [ \"6\", -23, 90, \"100\" ], \"8\": [ \"8\", -41, 500, \"500\" ], \"50\": [ 50, -24, 50, \"50\" ], \"49\": [ 49, -31, 100, \"100\" ], \"10\": [ 10, 53, \"1\" ] } ]'),
(86, 1, 'Agent', '[ [ [ 267, \"N\\/A\" ], [ 265, \"N\\/A\" ], [ 280, \"N\\/A\" ], [ 71, \"N\\/A\" ], [ 282, \"N\\/A\" ] ] ]', '[ { \"71\": \"Sectie 3\", \"32\": \"Sectia de Politie nr.1 Montgomery\", \"38\": \"Sectie PD\" } ]', '[ { \"1\": [ \"1\", 45, \"1\" ], \"3\": [ \"3\", 83, \"1\" ], \"2\": [ \"2\", 13, \"3\" ], \"5\": [ \"5\", -3, 1, \"1\" ], \"4\": [ \"4\", 8, \"3\" ], \"7\": [ \"7\", -22, 100, \"100\" ], \"6\": [ \"6\", -23, 90, \"100\" ], \"8\": [ \"8\", -41, 500, \"500\" ], \"50\": [ 50, -24, 50, \"50\" ], \"11\": [ 11, 53, \"2\" ], \"10\": [ 10, 53, \"1\" ] } ]'),
(87, 1, 'Comisar', '[ [ [ 267, \"N\\/A\" ], [ 265, \"N\\/A\" ], [ 280, \"N\\/A\" ], [ 71, \"N\\/A\" ], [ 282, \"N\\/A\" ] ] ]', '[ { \"71\": \"Sectie 3\", \"95\": \"VEHICLE\", \"85\": \"VEHICLE\", \"97\": \"VEHICLE\", \"93\": \"VEHICLE\", \"55\": \"VEHICLE\", \"91\": \"VEHICLE\", \"57\": \"VEHICLE\", \"29\": \"VEHICLE\", \"89\": \"VEHICLE\", \"27\": \"VEHICLE\", \"31\": \"VEHICLE\", \"33\": \"VEHICLE\", \"94\": \"VEHICLE\", \"52\": \"VEHICLE\", \"96\": \"VEHICLE\", \"50\": \"VEHICLE\", \"36\": \"VEHICLE\", \"92\": \"VEHICLE\", \"34\": \"VEHICLE\", \"90\": \"VEHICLE\", \"28\": \"VEHICLE\", \"38\": \"Sectie PD\", \"88\": \"VEHICLE\", \"56\": \"VEHICLE\", \"53\": \"VEHICLE\", \"82\": \"VEHICLE\", \"72\": \"Sectia 3\", \"64\": \"VEHICLE\", \"65\": \"VEHICLE\", \"47\": \"VEHICLE\", \"63\": \"VEHICLE\", \"37\": \"VEHICLE\", \"35\": \"VEHICLE\", \"26\": \"VEHICLE\", \"66\": \"VEHICLE\", \"30\": \"VEHICLE\", \"54\": \"VEHICLE\", \"32\": \"Sectia de Politie nr.1 Montgomery\" } ]', '[ { \"1\": [ \"1\", 45, \"1\" ], \"3\": [ \"3\", 83, \"1\" ], \"2\": [ \"2\", 13, \"3\" ], \"5\": [ \"5\", -3, 1, \"1\" ], \"4\": [ \"4\", 8, \"3\" ], \"7\": [ \"7\", -22, 50, 100 ], \"6\": [ \"6\", -23, 100, \"100\" ], \"8\": [ \"8\", -41, 500, \"500\" ], \"50\": [ 50, -24, 50, \"50\" ], \"49\": [ 49, -31, 100, \"100\" ], \"11\": [ 11, 53, \"2\" ], \"10\": [ 10, -29, 300, 300 ] } ]'),
(88, 7, 'Tractari', '[ [ [ 50, \"N\\/A\" ] ] ]', '[ { \"13\": \"Duty\" } ]', '[ [ ] ]'),
(90, 2, 'Pompierii', '[ [ [ 279, \"N\\/A\" ], [ 277, \"N\\/A\" ], [ 278, \"N\\/A\" ], [ 68, \"N\\/A\" ], [ 76, \"N\\/A\" ] ] ]', '[ { \"70\": \"Duty Dillimore\", \"2\": \"Duty\" } ]', '[ [ ] ]'),
(91, 2, 'PARAMEDIC', '[ [ [ 275, \"N\\/A\" ], [ 276, \"N\\/A\" ] ] ]', '[ { \"70\": \"Duty Dillimore\", \"2\": \"Duty\" } ]', '[ [ ] ]'),
(92, 2, 'ASISTENT MEDICAL', '[ [ [ 275, \"N\\/A\" ], [ 276, \"N\\/A\" ] ] ]', '[ { \"70\": \"Duty Dillimore\", \"2\": \"Duty\" } ]', '[ [ ] ]'),
(93, 2, 'Om de serviciu', '[ [ [ 144, \"N\\/A\" ], [ 146, \"N\\/A\" ] ] ]', '[ { \"70\": \"Duty Dillimore\", \"2\": \"Duty\" } ]', '[ [ ] ]'),
(94, 5, 'Paznic', '[ [ [ 164, \"N\\/A\" ] ] ]', '[ { \"5\": \"Duty\" } ]', '[ { \"31\": [ 31, -3, 1, \"1\" ], \"30\": [ 30, -24, 50, \"50\" ] } ]'),
(95, 10, 'Brigada AntiTero', '[ [ [ 285, \"N\\/A\" ] ] ]', '[ { \"80\": \"Jandarmi\" } ]', '[ { \"53\": [ 53, -31, 100, \"100\" ], \"52\": [ 52, -34, 20, \"20\" ], \"51\": [ 51, -24, 50, \"50\" ] } ]'),
(96, 10, 'Locotenent SRI', '[ [ ] ]', '[ { \"80\": \"Jandarmi\" } ]', '[ { \"53\": [ 53, -31, 100, \"100\" ], \"52\": [ 52, -34, 20, \"20\" ], \"51\": [ 51, -24, 50, \"50\" ] } ]'),
(97, 10, 'Colonel SRI', '[ [ [ 283, \"N\\/A\" ] ] ]', '[ { \"80\": \"Jandarmi\" } ]', '[ { \"53\": [ 53, -31, 100, \"100\" ], \"52\": [ 52, -34, 20, \"20\" ], \"51\": [ 51, -24, 50, \"50\" ] } ]'),
(98, 10, 'General SRI', '[ [ ] ]', '[ { \"80\": \"Jandarmi\" } ]', '[ { \"51\": [ 51, -24, 50, \"50\" ], \"52\": [ 52, -34, 20, \"20\" ] } ]');

-- --------------------------------------------------------

--
-- Table structure for table `duty_locations`
--

CREATE TABLE `duty_locations` (
  `id` int(11) NOT NULL,
  `factionid` int(11) NOT NULL,
  `name` text NOT NULL,
  `x` int(11) DEFAULT NULL,
  `y` int(11) DEFAULT NULL,
  `z` int(11) DEFAULT NULL,
  `radius` int(11) DEFAULT NULL,
  `dimension` int(11) DEFAULT 0,
  `interior` int(11) DEFAULT 0,
  `vehicleid` int(11) DEFAULT NULL,
  `model` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Used for custom duty locations.';

--
-- Dumping data for table `duty_locations`
--

INSERT INTO `duty_locations` (`id`, `factionid`, `name`, `x`, `y`, `z`, `radius`, `dimension`, `interior`, `vehicleid`, `model`) VALUES
(2, 2, 'Duty', 1581, 1793, 2083, 10, 131, 10, NULL, NULL),
(3, 4, 'Duty', -2031, -115, 1035, 10, 251, 3, NULL, NULL),
(4, 3, 'Duty', -2137, 644, 1206, 10, 0, 0, NULL, NULL),
(5, 5, 'Duty', 2139, -1637, 390, 8, 271, 56, NULL, NULL),
(13, 7, 'Duty', -2031, -115, 1035, 5, 184, 3, NULL, NULL),
(33, 1, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 89, 597),
(34, 1, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 105, 589),
(35, 1, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 88, 597),
(36, 1, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 87, 598),
(37, 1, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 86, 598),
(38, 1, 'Sectie PD', 256, 65, 1004, 10, 77, 6, NULL, NULL),
(39, 2, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 92, 416),
(41, 2, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 205, 466),
(42, 2, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 92, 416),
(43, 2, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 192, 466),
(44, 2, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 195, 407),
(45, 2, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 305, 596),
(46, 2, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 306, 410),
(47, 1, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 106, 589),
(48, 2, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 90, 416),
(49, 2, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 304, 596),
(50, 1, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 85, 598),
(51, 2, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 294, 416),
(52, 1, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 511, 597),
(53, 1, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 510, 597),
(54, 1, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 512, 597),
(55, 1, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 88, 597),
(56, 1, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 514, 427),
(57, 1, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 508, 427),
(63, 1, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 574, 599),
(64, 1, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 508, 427),
(65, 1, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 516, 598),
(66, 1, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 515, 598),
(67, 5, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 743, 482),
(68, 6, 'Duty', 2139, -1638, 390, 5, 257, 56, NULL, NULL),
(70, 2, 'Duty Dillimore', 1581, 1788, 2083, 10, 0, 0, NULL, NULL),
(72, 1, 'Sectia 3', 282, 173, 1007, 10, 278, 3, NULL, NULL),
(80, 10, 'SRI', 297, 75, 1029, 10, 0, 0, NULL, NULL),
(82, 1, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 859, 497),
(85, 1, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 947, 597),
(88, 1, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 861, 601),
(89, 1, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 39, 490),
(90, 1, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 39, 490),
(91, 1, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 58, 596),
(92, 1, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 59, 596),
(93, 1, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 60, 596),
(94, 1, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 5, 427),
(95, 1, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 6, 599),
(96, 1, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 57, 596),
(97, 1, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 37, 490),
(98, 1, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 7, 597),
(99, 1, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 46, 599),
(100, 1, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 200, 526),
(101, 1, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 232, 597),
(102, 2, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 278, 499),
(103, 2, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 343, 479),
(104, 5, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 435, 550),
(106, 2, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 48, 416),
(108, 1, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 234, 596),
(109, 1, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 9, 597);

-- --------------------------------------------------------

--
-- Table structure for table `elections`
--

CREATE TABLE `elections` (
  `idelections` varchar(45) NOT NULL,
  `Votes` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `elevators`
--

CREATE TABLE `elevators` (
  `id` int(11) NOT NULL,
  `x` decimal(10,6) DEFAULT 0.000000,
  `y` decimal(10,6) DEFAULT 0.000000,
  `z` decimal(10,6) DEFAULT 0.000000,
  `tpx` decimal(10,6) DEFAULT 0.000000,
  `tpy` decimal(10,6) DEFAULT 0.000000,
  `tpz` decimal(10,6) DEFAULT 0.000000,
  `dimensionwithin` int(5) DEFAULT 0,
  `interiorwithin` int(5) DEFAULT 0,
  `dimension` int(5) DEFAULT 0,
  `interior` int(5) DEFAULT 0,
  `car` tinyint(3) UNSIGNED DEFAULT 0,
  `disabled` tinyint(3) UNSIGNED DEFAULT 0,
  `rot` decimal(10,6) DEFAULT 0.000000,
  `tprot` decimal(10,6) DEFAULT 0.000000,
  `oneway` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `emailaccounts`
--

CREATE TABLE `emailaccounts` (
  `id` int(11) NOT NULL,
  `username` text DEFAULT NULL,
  `password` text DEFAULT NULL,
  `creator` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emailaccounts`
--

INSERT INTO `emailaccounts` (`id`, `username`, `password`, `creator`) VALUES
(1, 'J.narcis@whiz.sa', '54239ed98069b4e8a9bc2495c85db274', 144),
(2, 'Ardelean Dani@saonline.sa', 'd47268e9db2e9aa3827bba3afb7ff94a', 140);

-- --------------------------------------------------------

--
-- Table structure for table `emails`
--

CREATE TABLE `emails` (
  `id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `sender` text DEFAULT NULL,
  `receiver` text DEFAULT NULL,
  `subject` text DEFAULT NULL,
  `message` text DEFAULT NULL,
  `inbox` int(1) NOT NULL DEFAULT 0,
  `outbox` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `factions`
--

CREATE TABLE `factions` (
  `id` int(11) NOT NULL,
  `name` text DEFAULT NULL,
  `bankbalance` bigint(20) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `rank_1` text DEFAULT NULL,
  `rank_2` text DEFAULT NULL,
  `rank_3` text DEFAULT NULL,
  `rank_4` text DEFAULT NULL,
  `rank_5` text DEFAULT NULL,
  `rank_6` text DEFAULT NULL,
  `rank_7` text DEFAULT NULL,
  `rank_8` text DEFAULT NULL,
  `rank_9` text DEFAULT NULL,
  `rank_10` text DEFAULT NULL,
  `rank_11` text DEFAULT NULL,
  `rank_12` text DEFAULT NULL,
  `rank_13` text DEFAULT NULL,
  `rank_14` text DEFAULT NULL,
  `rank_15` text DEFAULT NULL,
  `rank_16` text DEFAULT NULL,
  `rank_17` text DEFAULT NULL,
  `rank_18` text DEFAULT NULL,
  `rank_19` text DEFAULT NULL,
  `rank_20` text DEFAULT NULL,
  `wage_1` int(11) DEFAULT 100,
  `wage_2` int(11) DEFAULT 100,
  `wage_3` int(11) DEFAULT 100,
  `wage_4` int(11) DEFAULT 100,
  `wage_5` int(11) DEFAULT 100,
  `wage_6` int(11) DEFAULT 100,
  `wage_7` int(11) DEFAULT 100,
  `wage_8` int(11) DEFAULT 100,
  `wage_9` int(11) DEFAULT 100,
  `wage_10` int(11) DEFAULT 100,
  `wage_11` int(11) DEFAULT 100,
  `wage_12` int(11) DEFAULT 100,
  `wage_13` int(11) DEFAULT 100,
  `wage_14` int(11) DEFAULT 100,
  `wage_15` int(11) DEFAULT 100,
  `wage_16` int(11) DEFAULT 100,
  `wage_17` int(11) DEFAULT 100,
  `wage_18` int(11) DEFAULT 100,
  `wage_19` int(11) DEFAULT 100,
  `wage_20` int(11) DEFAULT 100,
  `motd` text DEFAULT NULL,
  `note` text DEFAULT NULL,
  `fnote` text DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `max_interiors` int(11) DEFAULT 20
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `factions`
--

INSERT INTO `factions` (`id`, `name`, `bankbalance`, `type`, `rank_1`, `rank_2`, `rank_3`, `rank_4`, `rank_5`, `rank_6`, `rank_7`, `rank_8`, `rank_9`, `rank_10`, `rank_11`, `rank_12`, `rank_13`, `rank_14`, `rank_15`, `rank_16`, `rank_17`, `rank_18`, `rank_19`, `rank_20`, `wage_1`, `wage_2`, `wage_3`, `wage_4`, `wage_5`, `wage_6`, `wage_7`, `wage_8`, `wage_9`, `wage_10`, `wage_11`, `wage_12`, `wage_13`, `wage_14`, `wage_15`, `wage_16`, `wage_17`, `wage_18`, `wage_19`, `wage_20`, `motd`, `note`, `fnote`, `phone`, `max_interiors`) VALUES
(1, 'Politia Romana', 10000364912219, 2, 'STAFF', 'Suspendat din functie', 'Student', 'Agent', 'Agent Principal', 'Agent Sef Adjunct', 'Agent Sef', 'Agent Sef Principal', 'Subinspector', 'Inspector', 'Inspector Principal', 'Subcomisar', 'Comisar', 'Comisar Sef', 'Sef Serviciu Ordine Publica', 'Sef Serviciu Rutier', 'Chestor', 'Chestor Principal', 'Chestor Sef', 'Chestor General', 0, 0, 220, 1650, 1700, 1750, 1800, 1850, 1900, 2000, 2050, 2100, 2200, 2250, 2250, 2250, 2300, 2350, 2400, 2500, 'Frecventa Radio Frecventa Radio   911.112911     CONDUCETI CAT MAI RP! CINE NU CONDUCE RP ARE OUT             3/3 WARN = OUT', 'Aceasta este o fisa de completare pentru permisul de Port-Arma T1/T2 Dupa completarea ei fisa va fi trimisa la Bucuresti.\n Nume: \n Prenume:\n Adresa:\n Numar de telefon:\n Varsta:\n Pentru ce licenta doriti sa aplicati si ce v-a determinat sa aplicati de licenta:\n Pentru ce doriti sa aveti licenta de port Arma:\n**** Semnatura celui care o elibereaza:****\n****Semnatura celui care aplica pentru licenta: ****\nINFO:T1-35.000LEI\n       :T2 65.000LEI\n \n*Pretu licentei de Port-Arma T1-90.000$\n                                        T2-140.000$\n\n*Model insigna Politie => t/issuebadge Id player || Rank-ul player-ului || Politia Romana ||\n\n gov Sectia nr.1 Politie Montgomery este in cautare de noi politisti! Doritorii sa se prezinte la sediul aflat in sat!\nBLACKLIST:\nFlorin Furtwangler\nLaurentiu Rusz\nVladislav Makarov\n\n\n', '==================================     P O L I T I A     R O M A N A     =================================\n\n--IDEI INTRODUCTIVE--\n\nBun venit in factiunea POLITIA ROMANA a server-ului Epoch Roleplay! Mai jos aveti toate informatiile si regulamentul ce trebuie respectate pentru buna functionare a factiunii!\nDiscord:              https://discord.gg/tPb5dMz\nDiscord Factiune: https://discord.gg/WRTNBR\n\nFrecventa Radio: 911.112911                         \n\n--CUPRINS F3 NOTA--\n\nI. Cod de procedura privind sanctiunile si contraventiile rutiere\n\nII. Codul de procedura privind sanctiunile si contraventiile pietonului/cetateanului\n\nIII. Regulament Intern\n\nIV. Coduri folosite pentru prescurtare\n\nV. Incadrarea gradelor\n\nVI. Bind-uri necesare\n\nVII. Comenzile factiunii\n\nVIII. Obligatiile ofiterului\n\nIX. Obligatiile subofiterului\n\nX. Drepturile Miranda\n\n\n\n    I.=========CODUL DE PROCEDURA PRIVIND INFRACTIUNILE SI CONTRAVENTIILE RUTIERE=================\n\n\n1. TRECEREA PE ROSU se sanctioneaza cu amenda in valoare de 600 LEI.\n\n2. VITEZA EXCESIVA se sanctioneaza cu amenda in valoare de 473 LEI.\n\n3. CONDUSUL NEREGULAMENTAR se sanctioneaza cu amenda in valoare de 786 LEI, retinerea permisului de conducere si inchisoare timp de 5 luni (5 minute).\n\n4. FURTUL UNUI AUTOVEHICUL se sanctioneaza cu inchisoare timp de 10 luni (10 minute).\n\n5. NEACORDAREA DE PRIORITATE se sanctioneaza cu retinerea permisului de conducere si amenda in valoare de 600 LEI.\n\n6. NERESPECTAREA DISTANTEI DE DEPLASARE se sanctioneaza cu amenda in valoare de 300 LEI.\n\n7. STATIONAREA NEREGULAMENTARA se sanctioneaza cu amenda in valoare de 400 LEI.\n\n8. CONDUCEREA MASINII FARA PERMIS se sanctioneaza cu amenda in valoare de 10500  LEI si inchisoare timp de 10 luni (10 minute).\n\n9. CONDUCEREA UNEI MOTOCICLETE FARA CASCA se sanctioneaza cu amenda in valoare de 400 LEI si retinerea permisului de conducere.\n\n10. CONDUCEREA UNUI VEHICUL CU FARURILE STINSE DUPA ORA 17:00 se sanctioneaza cu o amenda in valoare de 100 LEI.\n\n11. PUNEREA IN CIRCULATIE A UNUI VEHICUL FATA ITP se sanctioneaza cu amenda in valoare de 700 LEI.\n\n12. CONDUCEREA SUB INFLUENTA SUBSTANTELOR PSIHOACTIVE se sanctioneaza cu amenda in valoare de 5000 de LEI si ridicarea permisului.\n\n13. NEPURTAREA CENTURII DE SIGURANTA se sanctioneaza cu amenda in valoare de 700 de LEI.\n\n\n\n\n    II.=========CODUL DE PROCEDURA PRIVIND INFRACTIUNILE SI CONTRAVENTIILE PIETONILOR/CETATENILOR =================\n\n\n1. TRAVERSAREA NEREGULAMENTARA se sanctioneaza cu amenda in valoare de 150 LEI.\n\n2. JIGNIREA UNUI ORGAN DE POLITIE se sanctioneaza cu amenda in valoare de 150 LEI.\n\n3. FURTUL / TALHARIA se sanctioneaza cu inchisoare timp de 10 luni (10 minute) si amenda in valoare de 900 LEI.\n\n4. AMENINTAREA se sanctioneaza cu amenda in valoare de 300 de LEI.\n\n5. ULTRAJUL se sanctioneaza cu 1500 de LEI si inchisoare timp de 10 luni (10 minute).\n\n6. FUGA DE ORGANELE DE POLITIE se sanctioneaza cu amenda in valoare de 900 LEI si inchisoare timp de 10 luni (10 minute).\n\n7. VIOLUL se sanctioneaza cu inchisoare timp de 10 luni (10 minute) si amenda in valoare de 1000 LEI.\n\n8. DAREA DE MITA se sanctioneaza cu amenda in valoare de 600 LEI si inchisoare timp de 10 luni (10 minute).\n\n9. NERESPECTAREA INDICATIILOR POLITIEI se sanctioneaza cu amenda in valoare de 200 LEI.\n\n10. PORTUL ILEGAL DE ARMA se sanctioneaza cu amenda in valoare de 1000 LEI si inchisoare 10 luni (10 minute).\n\n\n\n\n   III.==============REGULAMENT INTERN===============\n\n\n 1. Nu se admit injuriile/jignirile/amenintarile OOC, cat si IC intre membrii factiunii.\n\n 2. Nu se cere RANK-UP nici RANK-DOWN. Se sanctioneaza cu kick si blacklist 2 luni.\n\n 3. Toate vehiculele factiunii se iau pe baza de aprobare a unui superior, iar intrarea pe tura, respectiv iesirea se fac tot pe baza de aprobare.\n\n 4. Membrii cu grad mai mare trebuie respectati, intrucat acestia va pot da ordine.\n\n 5. Orice fel de tradare adusa factiunii atat OOC cat si IC se sanctioneaza cu kick din factiune, blacklist 3 luni si cel mai probabil o lichidare.\n\n 6. In patrula vor fi minim 2 membrii pe vehicul. Doar in cazul in care nu sunt disponibili, se poate merge 1 pe vehicul.\n\n 7. De fiecare data cand sunteti solicitati la un apel, aveti obligatia de-al prelua. Preluarea apelului se face prin anuntare pe statia de emisie-receptie din dotare.\n\n 8. Membrii factiunii trebuie sa cunoasca regulamentul factiunii, cat si cel al server-ului.\n\n 9. Persoanele ce au comis o contraventie, nu se sanctioneaza peste limita amenzii. Aceasta se va sanctiona conform amenzilor trecute mai jos.\n\n10. Conducerea unui vehicul se va face intr-o maniera Roleplay, pentru a nu se produce HD (haotic driving). Cine realizeaza HD primeste WARN/KICK din factiune.\n\n11. Cand la interventie se necesita echipaje superioare, se va anunta pe statie, dandu-se /bk.\n\n12. Membrii ce au 3 zile inactivitate vor primi KICK, daca nu au invoire! Invoirea se face pe server-ul de Discord al factiunii.\n\n13. Membrii noi ai factiunii au obligatia sa citeasca F3 Nota si sa se conformeze regulamentului.\n\n14. Reclamatiile pentru membrii factiunii se vor face pe discord, la sectiunea #reclamatii-membrii.\n\n15. Ordinul dat de un superior (peste Subcomisar), se va executa intotdeauna.\n\n16. Membrii factiunii trebuie sa aiba un comportament adecvat intre ei si fata de cetateni.\n\n17. Toti membrii factiunii trebuie sa fie pe server-ul de discord.\n\n18. Invoirile se vor face pe Discord-ul factiunii, la sectiunea #anunta-invoirea\n\n19. Membrii factiunii nu au voie sa isi aplice sanctiuni unii altora, in timpul serviciului.\n\n20. Membrii factiunii se vor adresa superiorilor cu \"domnule/doamna\".\n\n21. Iesirea din tura se face prin anuntarea pe statia radio, respectiv scoaterea duty-ului de la sectie. \n\n22. Cand membrii se afla pe tura, va trebui ca pe F3 sa apara \"de serviciu\". Cand membrii nu se afla in tura, va trebui sa apara pe F3 \"in pauza\".\n\n23. Fiecare membru este obligat sa aiba bind-urile impuse de conducerea factiunii.\n\n24. Nu se baga la /arrest mai mult de 10 minute. (0.1)\n\n25. Sirena se foloseste doar in caz de urgenta! Abuzul de sirena se sanctioneaza cu WARN/KICK.\n\n26. Cand un membru ia JAIL, va primi totodata si WARN la factiune. La 3 WARN-uri acumulate se primeste KICK si BLACKLIST timp de 3 luni.\n\n27. Nu se modifica descrierea masinilor factiunii! Se pedepseste cu KICK.\n\n28. Iesirea intr-un mod NON-RP din factiune se sanctioneaza cu BAN, KICK factiune si BLACKLIST Permanent.\n\n29. Cand un membru coboara din masina, aceasta trebuie sa fie in permanenta incuiata, pentru a nu fi furata! Motorul se opreste de fiecare data cand ea este parcata! \n\n\n\n   IV.===========CODURI FOLOSITE PENTRU PRESCURTARE================\n\n             1. CODURI IN BAZA \"10\":\n\n\n\n             10-1 â€” Regrupare. (Acest cod poate fii folosit doar de un superios.)\r\n\n             10-2 â€” Receptionat.\r\n             \n             10-3 â€” Nu mai transmite pe statia radio. (Acest cod poate fii folosit doar de un superior.)\n\n             10-4 â€” Da/Afirmativ.\n\r\n             10-5 â€” Repeta ultima transmisie.\r\n             \n             10-6 â€” Ignora ultima transmisie.\r\n              \n             10-7 â€” Ies din tura.\n             \n             10-8 â€” ÃŽn patrula/Disponibil pentru apeluri si situatii. (A nu se confunda cu intrarea Ã®n tura.)\r\n             \n             10-9 â€” Ocupat/Indisponibil pentru apeluri si situatii. (A nu se confunda cu COD 6.)\n\r\n             10-20 â€” Locatie.\r\n\n             10-25 --- MDC Check\n             \n             10-55 â€” Traffic stop.\n\r\n             10-66 â€” Felony stop.\n\r\n             10-70 â€” Nevoie de asistenta/Ã®ntariri.\r\n             \n             10-99 â€” Situatie conclusa, unitatile pot sa revina disponibile.\r\n\n\n\r\n           2. CODURI SIMPLE:\r\n\n\n\n            COD 0 â€” Situatie de criza.\r\n             \n            COD 1 â€”Folosit de catre un supervizor Ã®n momentul Ã®n care o unitate nu raspunde pe statie. Unitatea trebuie sa raspunda imediat cum aude solicitarea facuta de catre superior (Subinspector+), Ã®n caz contrar, aceasta va fi declarata disparuta si posibil Ã®n pericol.\r\n\n            COD 2 â€” Raspuns de rutina la apel sau situatie. (doar cu lumini de avertizare).\r\n             \n            COD 3 â€” Raspuns de urgenta la apel sau situatie. (lumini de avertizare si sirene).\r\n             \n            COD 4 â€” Situatie rezolvata.\n             \n            COD 5 [locatie] â€” Nicio unitate marcata sau ofiter Ã®n uniforma sa nu vina Ã®n zona. \r\n\n            COD 6 â€” Am ajuns la situatie sau apel si avem contact vizual. (A nu se confunda cu 10-9.)\r\n             \n            COD 7 â€” Pauza de masa.\n\r\n            COD 11 â€” Necesitam intariri.\r\n\r\n\n\n           3. CODURI DE IDENTITATE:\r\n\n\n\n             IC-1: Caucazian\n\r\n             IC-2: Afro-American\r\n             \n             IC-3: Hispanic\r\n\n             IC-4: Middle-Eastern\n\r\n             IC-5: Asiatic\r\n\r\n\n\n           4. CODURI CRIMINALISTICE:: \r\n             \n\n\n            148: Retinut in arest  \n           \r\n             187: Omucidere\n\r\n             192: Viol\r\n             \n             207: Rapire\n\r\n             211: Jaf\n\r\n             240: Asalt\n\r\n             245: Asalt cu o arma mortala\n\r\n             417: Posesia unei arme\n\r\n             459: Furt\r\n             \n             487: Grand Theft (furt masina de peste $400)\r\n\n             488: Petty Theft (furt masina sub $400)\r\n             \n             602: Incalcarea proprietatii/FraudA\n\n\n\n   V.===============INCADRAREA GRADELOR=================\n\n*Agenti: Agent, Agent Principal, Agent Sef Adjunct, Agent Sef, Agent Sef Principal\n*Ofiteri Inferiori: Subinspector, Inspector, Inspector Principal\n*Ofiteri Superiori: Subcomisar, Comisar, Comisar Sef\n*Chestori: Chestor, Chestor Principal, Chestor Sef, Chestor General\n\n\n   VI.===============BIND-URI NECESARE======================\n\n/bind 1 me duce mana la tocul pistolului, aflat in partea dreapta a centurii, scotandu-l.\n\n/bind 2 me pune pistolul la loc in tocul aflat in partea dreapta a centurii.\n\n/bind 6 m Aici Politia! Opreste autoturismul pe partea dreapta!\n\n/bind 7 s  Politia, stai pe loc!! Stai ca trag!!\n\n/bind 5 m Aici Politia, circula!\n\n\n   VII.=============COMENZILE FACTIUNII===============\n\n/ticket - amendezi un jucator. (Atentie, se roleaza procesul verbal!)\n\n/carry - iei in brate un jucator. (Atentie, se roleaza!)\n\n/drop - lasi jos jucatorul pe care l-ai luat in brate. (Atentie, se roleaza!)\n\n/m - vorbesti pe megafon. (Atentie, nu fa abuz! Abuzul se sanctioneaza cu WARN!)\n\n/bk - transmiti locatia ta catre Militie sau celelalte institutii.\n\n/arrest - bagi pe cineva la inchisoare.\n\n/takelicense - iei permisul cuiva.\n\n\n\n   VIII.=========OBLIGATIILE OFITERULUI (Subinspector+)==========\n\n1. Membrii din randul ofiterilor nu au voie sa abuzeze de inferiori, in mod contrat vor primi WARN/KICK.\n2. Ofiterii vor asculta de superiorii lor.\n3. Abuzurile intre ofiteri se sanctioneaza cu KICK.\n\n\n\n\n   IX.=========OBLIGATIILE SUBOFITERULUI (Agent+)==========\n\n1. Membrii din randul subofiterilor trebuie sa asculte de membrii din randul ofiterilor.\n2. Daca ofiterii abuzeaza atat IC cat si OOC de inferiori, subofiterii au dreptul de a face un screenshot, folosind tasta F12. Dovezile foto se vor publica pe Discord-ul factiunii la sectiunea #reclamatii, sau unui lider.\n\n\n\n   X.==========DREPTURILE  MIRANDA===============\n\n     \r\n      Atunci cand un suspect este retinut, acesta are niste drepturi despre care, obligatoriu, trebuie informat de catre\r\n      ofiterul care face arestarea, asa ca formula arata in felul urmator :\r\n\r\n        ,,Ai dreptul sa nu spui nimic, orice vei spune poate fi folosit impotriva ta la instanta judecatoreasca\'\'\r\n\r\n      Dupa aceasta, formula de baza, urmeaza inca doua formule ce pot fi folosite. Prima este folosita doar atunci cand,suspectul\r\n      a comis infractiunea cu doar un singur martor ocular politist prin preajma. Aceasta este:\r\n\r\n       ,,pentru ca a fost numai un singur martor ocular ofiter, ai drept la aparare penala\'\'\r\n    \r\n      Iar daca , suspectul a fost surprins de mai multi ofiteri, formula de baza se va continua cu :\r\n\r\n       ,,pentru ca au fost mai multi martori oculari ofiteri, nu ai drept la aparare penala\'\'\r\n\r\n      Intr-un final, acesta va trebui intrebat in felul urmator : ,,Iti intelegi drepturile/ Va intelegeti drepturile?\'\'\r\n      Astfel putem evita o mare greseala care ar putea aduce la scaparea suspectilor de sanctiune.\n\n\n\nBy Florin\nActualizat in data de 29.02.2020\n\n', NULL, 20),
(2, 'S M U R D', 10000134353922, 4, 'STAFF', 'Suspendat din functie', 'Voluntar', 'Paramedic Debutant', 'Paramedic I', 'Paramedic II', 'Paramedic III', 'Paramedic IV', 'Asistent Medical Debutant', 'Asistent Medical I', 'Asistent Medical II', 'Asistent Medical III', 'Asistent Medical IV', 'Medic Debutant', 'Medic Sef Echipaj', 'Pompier', 'Pompier Sef Batalion', 'Medic Comandant Regional', 'Director Adjunct', 'Director General', 0, 250, 450, 550, 600, 650, 700, 750, 900, 950, 1000, 1100, 1200, 1900, 2000, 1200, 1500, 2300, 2400, 2500, 'Servicile de interventie. Radio #985.112 || La 3 zile de inactivitate OUT || Cine nu citeste cu atentie F3 OUT || Cine nu este pe discord OUT -> https://discord.gg/hee2md9', '*Model insigna S.M.U.R.Dl => t/issuebadge S.M.U.R.D || <rank> || #<cod de identificare> \n\n\n\nWARN: Alexandru Popa - 1 Warn (Motiv: Jail 30 minute pentru Abuz de sirena si Haotic Driving)\n\n\n\nBLACKLIST:\nRaul Diaconescu - iesit din factiune fara rp\n\n\n\nExclus din factiune PERMANENT\n\nBogdan Marius - Furt bani din factiune\nDaniel Mendez/Daniel Marius - Furt bani din factiune\n\nEXEMPLU GOV: \n\n\ngov Serviciul Mobil de Urgenta, Reanimare si Descarcerare este in cautare de noi paramedici. Salarii atractive! Doritorii sunt asteptati la Dispensarul Montgomery cu un C.V!\ngov Serviciul Mobil de Urgenta, Reanimare si Descarcerare si Inspectoratul General pentru Situatii de Urgenta sunt in cautare de no\ni angajati. Salarii cuprinse intre 35.000 si 50.000 lei! Doritorii sunt asteptati la SMURD Dillimore cu un C.V!\ngov Angajarile continua, doritorii sunt asteptati la spital!\ngov Angajarile au luat sfarsit, felicitari noiilor studentii!\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n', 'Bine ai venit in Serviciul Mobil de Urgenta, Reanimare si Descarcerare (S.M.U.R.D)\n\nDiscord: https://discord.gg/hee2md9       (OBLIGATORIU)\n\nStatia este: 985.112\r\n\nSalariu saptamanal: de la 15.000 lei la 60.000 lei\nSalariile se primesc in fiecare Sambata la ora 18:00\n\n_______________________<<<ATENTIE>>>______________________________________________________________________________\nSediul IGSU se afla la Dispensarul Montgomery!\n----- Doar cei care au primit insigna IGSU au voie sa conduca acele autospeciale-----\n\n____________________________________________________________________________________________________________________\nSediul SMURD se afla la Dispensarul Dillimore!\n----- Doar cei care au primit insigna SMURD au voie sa conduca acele autospeciale----\n\n____________________________________________________________________________________________________________________\nCei care au mai primit un rang pe langa cel principal, Exemplu:SMURD || Paramedic-Pompier || #xyzc au voie sa conduca si celelalte autospeciale \n____________________________________________________________________________________________________________________\n\r\nCOD-uri in baza 10i:\n 10-2 Receptionat\n 10-3 Negativ\n 10-4 Afirmativ\n 10-5 Pauza de masa\n 10-6 Nu citi ultimul mesaj de pe statie\n 10-7 Ies din tura\n 10-8 Intru in tura\n 10-20 Locatie\n\nCand intrati in patrula cu Duster, puneti urmatorul anunt pe statie: Aici <rank> <nume>, 10-8 cu o autospeciala Duster, 10-20 <locatia unde va aflati>\n\nNU SE MERGE LA URGENTE CU DUSTER-UL, ACESTA ESTE DOAR PENTRU PATRULA SI CONTROALE.\n\n  By Stanciu Andrei 07.04.2020\n', NULL, 20),
(3, 'Primarie', 9998896805602, 3, 'STAFF', 'Concediu', 'Suspendat din functie', 'Sofer', 'Referent ', 'Referent Superior', 'Consilier Asistent', 'Consilier Local', 'Consilier Comunal', 'Consilier Principal', 'Sercretar Comunal', 'Secretar Local', 'Secretar', 'Inspector Public', 'Inspector Forestier', 'Inspector Protectia Mediului', 'Manager Administratie Publica', 'Purtator de cuvant', 'Vice-Primar', 'Primar', 5, 10, 0, 263, 100, 150, 160, 170, 200, 250, 250, 300, 330, 350, 550, 700, 2000, 1500, 2500, 2500, 'Bun venit la primarie! Tuneradio 511.115! 3 zile inactive vom fi nevoiti sa va dam afara! O zi frumoasa tuturor!', ' *Model insigna Primarie => t/issuebadge Id player || Rank-ul player-ului || Primarie ||\n\nBLACKLIST\n\n\n\n\n', '                                                                          ||  Buna ziua ||\n\n\n\n\nPe /dep vorbiti doar in cazut exceptionale\n\n\nREGULI :\n\n\n\nPirvu Remus-Primar\n\n\n\n\nRegula(1):Trebe sa respecti liderul si ceilalti colegi.\n\nRegula(2):Nu aduceti masinile stricate.\n\nRegula(3):Sa faceti RP si sa nu impuscati in primarie sa nu se auda focuri de arme.\n\nRegula(4):Sa nu aduceti playeri la angajari fara permisiune.\n\nRegula(5):Sa nu cereti rank up pana nu zic eu sau out.\n\nRegula(6):Sa nu cereti bani la Lideri.\n\nRegula(7):Sa aveti un roleplay cat mai bun.      \n\nRegula(8):Sa nu dati park la masinile personale la guvern alfel out.\n\nRegula(9):Sa nu inselati ceilalti colegi si ceilalti playeri sau out.\nRegula(10): Cine ia jail primeste automat si warn pe factiune\n\n\n                                                                 \n                                                                      \n\n        \n', NULL, 20),
(4, 'AD-GARAGE', 10000035236219, 7, 'Student Anu I', 'Student Mecanic I', 'Student-Mecanic II', 'Student-Mecanic III', 'Mecanic I', 'Mecanic II', 'Mecanic III', 'Mecanic-Profesionist', 'Student-Tunner', 'Inspector- R.A.R', 'Tunner I', 'Tunner II', 'Tunner III', 'Secretar(a)-Tunning', 'Patron-Adjunct', 'Patron-General', 'Patron-Principal', 'Director-Adjunct', 'Director-General', 'Director-Principal', 100, 198, 231, 298, 312, 389, 414, 478, 501, 5, 620, 650, 700, 712, 791, 831, 889, 1000, 1000, 1000, 'Inactivitate - 3 zile = out || Cerere UP = Down || Statie 565656', '*Model insigna Reparatii => t/issuebadge Id player || Rank-ul player-ului || Reparatii Masini ||\n\n-=-=-=-=-=-=-=-=-=-=-=-=-\n          Preturi:\n1.Repara => 231 Lei\n2.Jante noi =>10 Lei\n3.Vopsea masina => 753 Lei\n4.Faruri colorate => 532 Lei\n5.Roti => 453 lei\n-=-=-=-=-=-=-=-=-=-=-=-=\n\n\n=-=-=-=-=-=-=-=-=-=-=-=\n          Vacante:\n    \n\n=-=-=-=-=-=-=-=-=-=-=-=\n', '-=-=-=-=-=-=-=-=-=-=-=-=-\n          Preturi:\n\nFaruri = 4000\nCuloare masina = 500\nReparatie = 300\nSchimbare roti = 50x4\nPreturi Jante : 1000\nPreturi Spoiler : 1000\nLasatul suspensiei mai jos/sus : 1000\nStereo - 900\nINSPECTIA TEHNICA PERIODICA [ I . T . P]  : 1000 LEI\n\nFISA REGISTRUL AUTO ROMAN [ R. A .R ] : 3000 LEI\n\n Pret tractari :\nPOLITIE : 250 lei\nPRIMARIE : 150 lei \nPietoni : 500 lei\nS.M.U.R.D :100\n-=-=-=-=-=-=-=-=-=-=-=-=-\n            REGULAMENT:\nCine face SKIP-RP la modificarea/repararea masini se sanctioneaza cu Faction Warn Permanent + Jail 20 minute \n\nSe cere voie cand se ia masina , sau cand se iese din tura [ Cand este liderul on]= Sanctiune Faction Warn - o zi\n\nUn limbaj adegvat, atat OOC  cat si IC = Sanctiune Faction Warn  o saptamana\n\nCondus regulamentar , mers cu viteza legala [ asta in exceptia interventiilor cerute de spital / primarie / Politie] = Sanctiune Faction Warn Permanent\n\nNeprezentarea la comanda liderului , se sanctioneaza cu Faction warn permanent , sau OUT.\n\nAtentie nu se cere up prin PM/Chat Factiune se primeste OUT fara discutii.\n\n\n\n                                                                                 LA 3  FACTION WARN SE PRIMESTE OUT + BLACK LIST O LUNA\n\nEXEMPLU FISA INSPECTIA - TEHNICA - PERIODICA [ I . T .P] :\n\r\n* DeÈ›inÄƒtorul Vehiculului .\r\n\r\n* Seria din buletin al proprietarului.\r\n\r\n* NumÄƒrul de Ã®nmatriculare a vehiculului .\r\n\r\n* Anul de fabricaÈ›ie a vehiculului .\r\n\r\n* Numele firmei maÈ™ini .\r\n\r\n* Èšara de provenienÈ›Äƒ a maÈ™ini .\r\n\r\n* NumÄƒrul de Kilometri .\r\n\r\n* Numele inspectorului I.T.P .\r\n\r\n* Ziua È™i data in care a fost fÄƒcut I.T.P - ul.( DATA DIN VIAÈšA REALÄ‚)\r\n\r\n* Ziua È™i data expirÄƒrii  I.T.P ( Trebuie reÃ®nnoit o datÄƒ la o sÄƒptÄƒmÃ¢nÄƒ ).\n\n\n\nEXEMPLU FISA  REGISTRUL - AUTO - ROMAN [ R. A. R ] :\n\n* DETINATORUL VEHICULULUI :\n\n* NUMARUL DE INMATRICULARE AL VEHICULULUI :\n\n* ANUL DE FABRICATIE AL VEHICULULUI \n\n* NUMELE FIRMEI MASINI : \n\n* NUMARUL DE MODIFICARI :\n\n* MODIFICARILE [ XENOANE  || SPOILER || ETC || :\n\n* ZIUA SI DATA IN CARE A FOST FACUTA FISA R.A.R :\n\n* ZIUA SI DATA IN CARE EXPIRA FISA R.A.R :\n\n* NUMELE MECANICULUI CARE A FACUT INSPECTIA :\n\n* NUMELE INSPECTORULUI CARE A FACUT FISA [ ACEASTA SECTIUNE ESTE DOAR PENTRU CEI CARE AU GRADUL DE  || INSPECTOR - REGISTRUL AUTO ROMAN || \n', NULL, 20),
(5, 'Pro TV', 10000027512471, 6, 'Staff', 'Concediu Medical', 'Om de servici', 'Paznic', 'Paznic È˜ef', 'Jurnalist Incepator', 'Jurnalist Expert', 'Report Incepator', 'Reporter Expert', 'Prezentator Meteo', 'Prezentator Horoscop', 'Prezentator Sport', 'Prezentator ', 'Prezentator Dragoste Eterna', 'Contabil', 'Avocat', 'LiveWatch', 'Manager', 'Vice-Director', 'Director', 0, 400, 500, 500, 550, 550, 600, 550, 700, 700, 700, 700, 700, 700, 750, 860, 900, 1500, 2000, 2500, 'Bine ai venit in  Radio Tv !', '*Model insigna Radio Tv => t/issuebadge Id player || Rank-ul player-ului || TVR ||# Nr de insigna                  \n\ngov TVR Cauta noi cameramani bine dispusi si priceputi , va asteptam la sediul pro tv cu un Curriculum Vitae!\n\nBLACKLIST\nDaniel Stefan\n', 'Radio: 123.4\n------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------\nComenzi:\n/interview id - acorzi cuiva un interviu\n/i  - chatul live\n/endinterviu - inchizi live\n\n    ** Reguli: **\n1: Nu aveti voie sa incalcati regulamentul F1.\n2: Nu aveti voie sa injurati / certati cu membrii factiunii. - 1 Faction Warn\n3:Nu aveti voie sa abuzati de functie. - Ban - 1 FW in functie de gravitate.\n4: Nu aveti voie sa faceti afaceri pe \"/f\". 1 FW\n5: Nu aveti voie sa cereti rank up sau sa spuneti ca X nu merita functia Y - 1 FW.\n6: Nu aveti voie sa lasati pe cineva care face caterinca pe live ( scrie prost gramatical de x 3 ori+ / limbaj neadecvat / rasism / glume de prost gust) - 1 FW\n7: Nu aveti voie sa acordat live persoanelor cautate de politie / infractori cunoscuti - 1 FW\n8: Nu aveti voie sa cereti la 1 live mai mult de 500 lei per persoana. (aveti voie cu maxim 2 persoane per live) - 1 FW\n9: Nu aveti voie sa lasati masinile pe drum neregulamentar - 1 FW\n10: Nu aveti voie sa fiti on duty si cu skin personal / fara insigna. 1 FW.\n11: Nu aveti voie sa acordati live adminilor / persoanelor O.O.C - 1 FW\n', NULL, 20),
(6, 'Taxi', 9999965591082, 5, 'Concediu Medical', 'Paznic', 'Taximetrist an I', 'Taximetrist an II', 'Taximetrist an III', 'Taximetrist IV', 'Taximetrist V', 'Taximetrist VI', 'Taximetrist VII', 'Taximetrist VIII', 'Taximetrist IX', 'Taximetrist X', 'Taximetrist XI', 'Taximetrist XII', 'Taximetrist Sef', 'Contabil', 'Manager Adjunct', 'Manager', 'Vice Patron', 'Patron', 0, 200, 250, 300, 350, 400, 450, 1000, 550, 600, 650, 700, 750, 800, 850, 900, 1500, 2500, 2500, 2500, 'Bine ati venit in Taxi ! Sedinta Vineri ora 20:00 | Frecventa radio: 123.124 || 3 zile inactivitate= OUT', '*Model insigna Taxi => t/issuebadge ID player || Rank-ul player-ului || Taxi ||\n\nModel anunt angajari: \n\nAi permis auto si nu gasesti un loc de munca bun? Hai la sediul taxi si noi te putem ajuta cu o cariera frumoasa sa iti cresti familia.Suna-ma daca esti interesat. \n\n------------------------------------------------------------------------------------------------------------------------------------------------------------- Blacklist:\n-Alexandru Pusca\n-\n-\n-\n-\n-\n------------------------------------------------------------------------------------------------------------------------------------------------------------- Warn Membri:\n-  \n-\n-\n-\n-\n-\n------------------------------------------------------------------------------------------------------------------------------------------------------------\n', 'Anunturi: Vineri ora 20:00  Sedinta!  \n\n discord:https://discord.gg/R65HkS\n\nMod de anunt in /ads: Ai ramas pe jos si nu ai cu ce te deplasa? Avem noi o solutie,  Compania Taxi S.R.L Iti sta la dispozitie,  Oricand numa suna la Numar si noi Venim.\n\n----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------\n                                                          * * * Regulament Intern * * *\n\n\n1: Mereu cand urcati in masina Taxi sa aveti /duty si insigna pusa.\n2: Nu veti cere bani factiunilor P.D, Guvern(Primarie) / restul factiunilor legale ( Radio Tv / Reparatii masini / Spital) veti impartii suma la 2.\n3: Nu aveti voie sa cereti bani membrilor factiunii decat daca pasagerul doreste sa va acorde banii.\n4: Nu aveti voie sa cereti bani peste cat spune taximetrul.\n5 Nu aveti voie sa incalcati regulamentul F1 !\n6: Nu aveti voie sa furati masina unui membru !\n7: Nu aveti voie sa spamati / stresati liderul / coliderul.\n8: Aveti voie sa dati anunturi I.C ca sunteti liberi pentru a putea prelua un client. (Anunturile sa fie roleplay)\n9: Nu aveti voie sa amenintati / loviti I.C clientul / alte persoane decat in cazuri speciale, precum: neplata transport / lovire masina ! (in aceste cazuri, trebuie sa rolati ca incercati sa imobilizati persoana respectiva si sa sunati la politie)\n10: Nu aveti voie sa va lasati masinile parcate non roleplay. Daca trebuie sa iesiti de pe server, lasati masina intr-un loc retras / cereti pe /f sa fie respawnata.\n11: Incercati sa dati dovada de intelegere.\n12: Incercati sa rolati cu clientul destinatia si modul de plata. Nu cereti bani inainte.\n13: Recomandat este sa faceti poza cand luati o persoana si daca respectivul va iesi de pe server pentru a evita plata, puteti sa il reclamati.\n14: Aveti voie sa va parcati masina la HQ, dar sa o luati dupa ce iesiti din tura pentru a evita lag-ul.\n15: Aveti voie sa stationati in zone populate precum, Spital / Reparatii masini / Sectia de Politie, desigur intr-o maniera roleplay, daca vi se spune de catre un organ al politiei ca nu aveti voie, cautati tot in acea zona alt loc de parcare)\n16: Nu aveti voie sa va luati alte masini decat cele din fata numelui vostru. (Pentru detalli uita-te mai jos la categoria \"Masini de serviciu\" ).\n17: Nu aveti voie sa va tunati masinile.\n18: Nu aveti voie sa merge cu o viteza mai mare decat ce-a admisa.\n19: Pentru toate regulile riscati sa fiti sanctionati cu: jail / warn al factiunii / amenda I.C / avertisment verbal / demitere.\n20: Nu aveti on duty in vehicule personale.\n21: La 3 zile inactivitate veti primi demitere.\n22: Mereu cand nu aveti client sa aveti \"Lumina\" aprinsa, iar cand aveti comanda / pasager sa fie oprita.\n23: Masinile sa fie parcate langa benzinarie.\n\n------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------\n     \n', NULL, 20),
(7, 'Tractari masini', 10000034478400, 5, 'Dynamic Rank #1', 'Dynamic Rank #2', 'Dynamic Rank #3', 'Dynamic Rank #4', 'Dynamic Rank #5', 'Dynamic Rank #6', 'Dynamic Rank #7', 'Dynamic Rank #8', 'Dynamic Rank #9', 'Dynamic Rank #10', 'Dynamic Rank #11', 'Dynamic Rank #12', 'Dynamic Rank #13', 'Dynamic Rank #14', 'Dynamic Rank #15', 'Dynamic Rank #16', 'Dynamic Rank #17', 'Dynamic Rank #18', 'Dynamic Rank #19', 'Dynamic Rank #20', 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 'Welcome to the faction.', '', NULL, NULL, 20),
(8, 'Russian Syndicate', 62411, 1, 'Slave', 'Newbie', 'Novice', 'Rookie', 'Street Fighter', 'Knife Fighter', 'The Head of Street Fighters', 'Hackers', 'The Head of Hackers', 'Dealer', 'The Head of Dealers', 'Killer', 'Serial Killer', 'The Head of Killers', 'Assassins', 'The Head of Assassins', 'The Left Hand', 'The Right Hand', 'The Son of The Boss', 'The Boss', 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, '|| Mafia Rusa || 3 zile inactive - OUT  || Frecventa Radio : 666.777 || Cititi Nota || Mafia Rusa || ', 'NOTA LIDER : \n\nWARN -> \n\nINTERDICTII -> \n\nALTELE ->\n', '------------------------------------------------------------------------------------------------------------------------------------------------------------------ISTORIE-----------------------------------------------------------------------------------------------------------------------------------------------------------------------\n\nIn toamna anului 1998 un grup de prieteni aflati in pragul saraciei aflandu-se intr-un mic oras aflat in aproprierea Moscovei si-au dat seama ca trebuie sa faca rost de bani urgent altfel risca sa sfarseasca intr-un mod tragic.\nYuri Sergeyev a propus grupului sa jefuiasca o benzinarie, zis si facut, dimineata ce a urmat, acestia s-au inarmat cu 4 sticle de tip Molotov, niste cutite gasite prin locuinta lor, si-au pus peste cap niste masti de ski gasite prin sifonier si au pornit catre benzinarie.\nAjunsi la fata locului, au scos cutitele din ghiozdane si au intrat grabiti in benzinarie capturand cei doi gardieni care pazeau linistiti incinta. Yuri Sergeyev a aprins o sticla de tip Molotov si a aruncat-o catre pompele pline cu benzine aflate in afara cladirii cauzand un imens dezastru.\nCasierul s-a speriat si a golot de indata casele de marcat punand toti banii intr-o punga mare si inmanand-o grupului. Acestia au luat punga cu bani, au iesit prin spatele cladirii evitand politia si haosul de afara si fugind prin iarba pana la locuinta lor.\nAnii treceau iar acestia continuau sa jefuiasca benzinarii, magazine si mici baruri din zona pana cand...intr-o zi, un partener de al grupului a fost prins si executat pe loc de catre politia orasului.\nGrupul de prieteni fiind plini de ura si de dorinta de razbunare, s-au inarmat cu arme de calibru mare precum AK-47, grenade si tot felul de arme care ar putea cauza cat mai mult haos, si-au pus veste antiglont si s-au pornit catre sectia micului oras in care traiau.\nAjunsi in fata sectiei, doi au scos armele si au inceput sa ucida orice fel de civil sau politist care se afla in zona, restul au inceput sa arunce cu grenade si sticle de tip molotov catre sectie distrugand intreaga cladire.\nDupa ce tot haosul a trecut, si-au facut identitati false, pasapoarte si buletine si s-au pornit catre aeroportul din Moscova urmand sa reuseasca sa paraseasca tara si sa aterizeze pe data de 19 Septembrie 2004 in Las Venturas.\nO data cu aterizarea lor, politia din oras a fost instiintata si s-a pus pe cautate insa fara rezultat. Grupul de prieteni a iesit din oras si s-a indreptat catre un mic sat din pustietate urmand sa puna stapanire pe acesta.\nIncepand cu 24 Septembrie 2004, acestia au incercat sa ocoleasca autoritatile insa au fost nevoiti sa le infrunte si sa supravietuiasca punand astfel bazele unei grupari rusesti in oras care a luat amploare o data cu inceperea recrutarii a noilor persoane doritoare sa se alature gruparii.\n\n\n-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------\n!-+=+-+=+-+=+-!! REGULAMENT !-+=+-+=+-+=+-!\n\n[ ! ] - Respectati-va intre voi ca si colegi si nu va certati.\n[ ! ] - Nu cereti mai mult de 3.000$  unei persoane pe care o jefuiti.\n[ ! ] - Nu cereti mai mult de 30.000$ pe un ostatic pe care l-ati capturat.\n[ ! ] - Nu va asumati roleplay-uri in numele factiunii fara acordul unui lider.\n[ ! ] - Nu atacati persoane fara un motiv intemeiat si fara sa va sfatuiti cu un lider inainte.\n\n\n\n.+* INFORMATII *+.\n\n[ ! ] Discord ->>> https://discord.gg/dfZSCBA\n[ ! ] SKINURI ->>> 2,9,12,13,14,31,32,33,38,44,45,46,47\n\n\n_____LIMBAJ CODAT_____\n\nM1 = Am nevoie de ajutor la [ locatie ] ->>> Exemplui: M1 Primarie\nM3 = Un echipaj de politie ma ataca la [ locatie ] ->>> Exemplu: M3 Banca\nM5 = Am capturat o persoana importanta la [ locatie ] ->>> Exemplu: M3 Cazino\nM7 = Am fost tradati de [ persoana ] ->>> Exemplu: M7 Yuri Sergeyev\nM9 = Sedinta de urgenta la [ locatie ] ->>> Exemplu: M9 Sediu\n\n~~~~~RUSA~~~~~\n\n[ ! ] - Salut = Priviet\n[ ! ] - Ce se intampla aici? = Chto zdes\' proiskhodit?\n[ ! ] - Ce faceti? = Chto delayesh\'?\n[ ! ] - Luati-i = Vzyat\' ikh\n[ ! ] - Faceti-va de cap = Obdumay eto\n\n', NULL, 20),
(10, 'SRI', 99890010, 2, 'Supraveghere/STAFF Epoch', 'Academie', 'Agent AntiTero', 'Comandant AntiTero', 'Sergent', 'Sergent Major', 'Plutonier', 'Plutonier Major', 'Plutonier Adjutant', 'Plutonier Adjutant È˜ef', 'Sublocotenent', 'Locotenent', 'Capitan', 'Maior', 'Locotenent Colonel', 'Colonel', 'General de Brigada', 'General Maior', 'General-Locotenent', 'General', 200, 850, 900, 950, 1050, 1100, 1200, 1300, 1400, 1500, 1600, 1700, 1800, 1900, 2000, 2100, 2200, 2300, 2400, 2500, 'Bun Venit in Factiunea SRI !  911.112 este fregventa radio. 3 Zile inactivi = OUT', '', '\n||Radio: /tuneradio 112.911119                                                                                                  Mergere cu masinile factiunii : \n                                                                                                                                             Duster Undercover- Spion [  sau mai sus ]\n                                                                                                                                             Elicopter: Pilot Elicopter , Lunetist [ sau mai sus ]\n                                                                                                                                            Mercedes Benz Vito Interventii SRI - Agent AntiTero [ sau mai sus ]\n                                                                                                                                            Colonel sau mai sus , chiar mai jos dar mai sus de Pilot, Lunetist - Toate masinile\n\n\n\n\n             1. CODURI IN BAZA \"10\":\n\n\n\n             10-1 â€” Regrupare. (Acest cod poate fii folosit doar de un superios.)\r\n\n             10-2 â€” Receptionat.\r\n             \n             10-3 â€” Nu mai transmite pe statia radio. (Acest cod poate fii folosit doar de un superior.)\n\n             10-4 â€” Da/Afirmativ.\n\r\n             10-5 â€” Repeta ultima transmisie.\r\n             \n             10-6 â€” Ignora ultima transmisie.\r\n              \n             10-7 â€” Ies din tura.\n             \n             10-8 â€” ÃŽn patrula/Disponibil pentru apeluri si situatii. (A nu se confunda cu intrarea Ã®n tura.)\r\n             \n             10-9 â€” Ocupat/Indisponibil pentru apeluri si situatii. (A nu se confunda cu COD 6.)\n\r\n             10-20 â€” Locatie.\r\n\n             10-25 --- MDC Check\n             \n             10-55 â€” Traffic stop.\n\r\n             10-66 â€” Felony stop.\n\r\n             10-70 â€” Nevoie de asistenta/Ã®ntariri.\r\n             \n             10-99 â€” Situatie conclusa, unitatile pot sa revina disponibile.\r\n\n\n\r\n           2. CODURI SIMPLE:\r\n\n\n\n            COD 0 â€” Situatie de criza.\r\n             \n            COD 1 â€”Folosit de catre un supervizor Ã®n momentul Ã®n care o unitate nu raspunde pe statie. Unitatea trebuie sa raspunda imediat cum aude solicitarea facuta de catre superior (Subinspector+), Ã®n caz contrar, aceasta va fi declarata disparuta si posibil Ã®n pericol.\r\n\n            COD 2 â€” Raspuns de rutina la apel sau situatie. (doar cu lumini de avertizare).\r\n             \n            COD 3 â€” Raspuns de urgenta la apel sau situatie. (lumini de avertizare si sirene).\r\n             \n            COD 4 â€” Situatie rezolvata.\n             \n            COD 5 [locatie] â€” Nicio unitate marcata sau ofiter Ã®n uniforma sa nu vina Ã®n zona. \r\n\n            COD 6 â€” Am ajuns la situatie sau apel si avem contact vizual. (A nu se confunda cu 10-9.)\r\n             \n            COD 7 â€” Pauza de masa.\n\r\n            COD 11 â€” Necesitam intariri.\r\n\r\n\n\n           3. CODURI DE IDENTITATE:\r\n\n\n\n             IC-1: Caucazian\n\r\n             IC-2: Afro-American\r\n             \n             IC-3: Hispanic\r\n\n             IC-4: Middle-Eastern\n\r\n             IC-5: Asiatic\r\n\r\n\n\n           4. CODURI CRIMINALISTICE:: \r\n             \n\n\n            148: Retinut in arest  \n           \r\n             187: Omucidere\n\r\n             192: Viol\r\n             \n             207: Rapire\n\r\n             211: Jaf\n\r\n             240: Asalt\n\r\n             245: Asalt cu o arma mortala\n\r\n             417: Posesia unei arme\n\r\n             459: Furt\r\n             \n             487: Grand Theft (furt masina de peste $400)\r\n\n             488: Petty Theft (furt masina sub $400)\r\n             \n             602: Incalcarea proprietatii/FraudA\n', NULL, 20),
(11, 'Hitman Agency', 0, 1, 'Dynamic Rank #1', 'Dynamic Rank #2', 'Dynamic Rank #3', 'Dynamic Rank #4', 'Dynamic Rank #5', 'Dynamic Rank #6', 'Dynamic Rank #7', 'Dynamic Rank #8', 'Dynamic Rank #9', 'Dynamic Rank #10', 'Dynamic Rank #11', 'Dynamic Rank #12', 'Dynamic Rank #13', 'Dynamic Rank #14', 'Dynamic Rank #15', 'FÃ¼hrer', 'ASFALT', 'INDIANUL', 'GHOST', 'STALIN', 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 'Welcome to the faction.', '', NULL, NULL, 20);

-- --------------------------------------------------------

--
-- Table structure for table `feedbacks`
--

CREATE TABLE `feedbacks` (
  `id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `from_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL DEFAULT 3,
  `comment` varchar(500) DEFAULT NULL,
  `date` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `force_apps`
--

CREATE TABLE `force_apps` (
  `id` int(11) NOT NULL,
  `account` int(11) DEFAULT NULL,
  `forceapp_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Save forceapped players information to keep them from resubm' ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `force_apps`
--

INSERT INTO `force_apps` (`id`, `account`, `forceapp_date`) VALUES
(1, 12, '2020-06-12 14:35:00'),
(3, 6, '2020-06-12 14:42:35');

-- --------------------------------------------------------

--
-- Table structure for table `friends`
--

CREATE TABLE `friends` (
  `id` int(10) UNSIGNED NOT NULL,
  `friend` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `fuelpeds`
--

CREATE TABLE `fuelpeds` (
  `id` int(11) NOT NULL,
  `posX` float NOT NULL,
  `posY` float NOT NULL,
  `posZ` float NOT NULL,
  `rotZ` float NOT NULL,
  `interior` int(11) NOT NULL DEFAULT 0,
  `dimension` int(11) NOT NULL DEFAULT 0,
  `skin` int(3) DEFAULT 50,
  `name` varchar(50) NOT NULL,
  `deletedBy` int(11) DEFAULT 0,
  `shop_link` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fuelstations`
--

CREATE TABLE `fuelstations` (
  `id` int(11) NOT NULL,
  `x` decimal(10,6) DEFAULT 0.000000,
  `y` decimal(10,6) DEFAULT 0.000000,
  `z` decimal(10,6) DEFAULT 0.000000,
  `interior` int(5) DEFAULT 0,
  `dimension` int(5) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `gates`
--

CREATE TABLE `gates` (
  `id` int(11) NOT NULL,
  `objectID` int(11) NOT NULL,
  `startX` float NOT NULL,
  `startY` float NOT NULL,
  `startZ` float NOT NULL,
  `startRX` float NOT NULL,
  `startRY` float NOT NULL,
  `startRZ` float NOT NULL,
  `endX` float NOT NULL,
  `endY` float NOT NULL,
  `endZ` float NOT NULL,
  `endRX` float NOT NULL,
  `endRY` float NOT NULL,
  `endRZ` float NOT NULL,
  `gateType` tinyint(3) UNSIGNED NOT NULL,
  `autocloseTime` int(4) NOT NULL,
  `movementTime` int(4) NOT NULL,
  `objectDimension` int(11) NOT NULL,
  `objectInterior` int(11) NOT NULL,
  `gateSecurityParameters` text DEFAULT NULL,
  `creator` varchar(50) NOT NULL DEFAULT '',
  `createdDate` timestamp NULL DEFAULT NULL,
  `adminNote` varchar(300) NOT NULL DEFAULT '',
  `triggerDistance` float DEFAULT NULL,
  `triggerDistanceVehicle` float DEFAULT NULL,
  `sound` varchar(50) DEFAULT 'metalgate'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `health_diagnose`
--

CREATE TABLE `health_diagnose` (
  `uniqueID` int(11) DEFAULT NULL,
  `int_diagnose` varchar(255) DEFAULT NULL,
  `ext_diagnose` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `informationicons`
--

CREATE TABLE `informationicons` (
  `id` int(10) DEFAULT NULL,
  `createdby` text DEFAULT NULL,
  `x` float DEFAULT NULL,
  `y` float DEFAULT NULL,
  `z` float DEFAULT NULL,
  `rx` float DEFAULT NULL,
  `ry` float DEFAULT NULL,
  `rz` float DEFAULT NULL,
  `interior` float DEFAULT NULL,
  `dimension` float DEFAULT NULL,
  `information` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `insurance_data`
--

CREATE TABLE `insurance_data` (
  `policyid` int(11) NOT NULL,
  `customername` varchar(45) NOT NULL,
  `vehicleid` int(11) NOT NULL,
  `protection` varchar(45) NOT NULL,
  `deductible` int(11) NOT NULL,
  `date` date NOT NULL,
  `claims` float NOT NULL,
  `cashout` float NOT NULL,
  `premium` int(11) NOT NULL,
  `insurancefaction` int(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `insurance_factions`
--

CREATE TABLE `insurance_factions` (
  `factionID` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `gen_maxi` float NOT NULL DEFAULT 0.005,
  `news` text DEFAULT NULL,
  `subscription` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `interiors`
--

CREATE TABLE `interiors` (
  `id` int(11) NOT NULL,
  `x` float DEFAULT 0,
  `y` float DEFAULT 0,
  `z` float DEFAULT 0,
  `type` int(1) DEFAULT 0,
  `owner` int(11) DEFAULT -1,
  `locked` int(1) DEFAULT 0,
  `cost` int(11) DEFAULT 0,
  `name` text DEFAULT NULL,
  `interior` int(5) DEFAULT 0,
  `interiorx` float DEFAULT 0,
  `interiory` float DEFAULT 0,
  `interiorz` float DEFAULT 0,
  `dimensionwithin` int(5) DEFAULT 0,
  `interiorwithin` int(5) DEFAULT 0,
  `angle` float DEFAULT 0,
  `angleexit` float DEFAULT 0,
  `supplies` int(11) DEFAULT 100,
  `safepositionX` float DEFAULT NULL,
  `safepositionY` float DEFAULT NULL,
  `safepositionZ` float DEFAULT NULL,
  `safepositionRZ` float DEFAULT NULL,
  `disabled` tinyint(3) UNSIGNED DEFAULT 0,
  `lastused` timestamp NULL DEFAULT NULL,
  `deleted` varchar(45) NOT NULL DEFAULT '0',
  `createdDate` timestamp NULL DEFAULT NULL,
  `creator` varchar(45) DEFAULT NULL,
  `isLightOn` tinyint(4) NOT NULL DEFAULT 0,
  `keypad_lock` int(11) DEFAULT NULL,
  `keypad_lock_pw` varchar(32) DEFAULT NULL,
  `keypad_lock_auto` tinyint(1) DEFAULT NULL,
  `uploaded_interior` datetime DEFAULT NULL,
  `faction` int(11) DEFAULT 0,
  `protected_until` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `interiors`
--

INSERT INTO `interiors` (`id`, `x`, `y`, `z`, `type`, `owner`, `locked`, `cost`, `name`, `interior`, `interiorx`, `interiory`, `interiorz`, `dimensionwithin`, `interiorwithin`, `angle`, `angleexit`, `supplies`, `safepositionX`, `safepositionY`, `safepositionZ`, `safepositionRZ`, `disabled`, `lastused`, `deleted`, `createdDate`, `creator`, `isLightOn`, `keypad_lock`, `keypad_lock_pw`, `keypad_lock_auto`, `uploaded_interior`, `faction`, `protected_until`) VALUES
(1, 2203.85, 62.2393, 28.4416, 0, -1, 1, 75000, 'Casa', 2, 446.97, 1397.22, 1084.3, 0, 0, 0, 89.6745, 100, NULL, NULL, NULL, NULL, 0, '2020-05-22 18:05:12', '0', '2020-05-21 23:32:50', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(2, 2205.86, 59.8623, 27.7805, 0, -1, 1, 15000, 'Garaj', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 86.1479, 100, NULL, NULL, NULL, NULL, 0, '2020-05-21 23:54:45', '0', '2020-05-21 23:33:47', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(3, 2203.85, 106.153, 28.4416, 0, -1, 1, 55000, 'Casa', 5, 226.56, 1114.19, 1080.99, 0, 0, 270, 90.3227, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-05-21 23:57:56', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(4, 2205.85, 108.488, 27.7809, 0, -1, 1, 15000, 'Garaj', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 90.1414, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-05-22 00:00:05', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(5, 2236.4, 168.302, 28.1535, 0, 90, 0, 62000, 'Casa', 5, 226.56, 1114.19, 1080.99, 0, 0, 270, 0.832245, 100, NULL, NULL, NULL, NULL, 0, '2020-06-09 19:41:33', '0', '2020-05-22 00:00:30', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(6, 2234.54, 168.324, 27.4838, 0, 90, 0, 15000, 'Garaj', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 89.9657, 100, NULL, NULL, NULL, NULL, 0, '2020-06-18 13:00:16', '0', '2020-05-22 00:01:14', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(7, 2257.99, 168.34, 28.1536, 0, -1, 1, 77000, 'Casa', 8, 2365.14, -1135.35, 1050.87, 0, 0, 0, 358.756, 100, NULL, NULL, NULL, NULL, 0, '2020-05-22 02:01:35', '0', '2020-05-22 00:23:33', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(8, 2266.4, 168.338, 28.1536, 0, -1, 1, 93000, 'Casa', 9, 260.67, 1237.32, 1084.25, 0, 0, 0, 0.925629, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-05-22 00:24:56', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(9, 2285.78, 161.769, 28.4416, 0, 198, 1, 55000, 'Casa', 5, 226.56, 1114.19, 1080.99, 0, 0, 270, 359.113, 100, NULL, NULL, NULL, NULL, 0, '2020-06-06 15:35:46', '0', '2020-05-22 02:02:12', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(10, 2288.38, 159.771, 27.781, 0, 198, 0, 15000, 'Garaj', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 0.288391, 100, 609.294, -21.0059, 1004.28, 281.298, 0, '2020-06-16 15:02:21', '0', '2020-05-22 02:02:22', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(11, 2269.49, 111.752, 28.4416, 0, -1, 1, 95000, 'Casa', 15, 295.05, 1472.36, 1080.25, 0, 0, 0, 0.694885, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-05-22 02:02:31', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(12, 2267.07, 109.771, 27.7825, 0, -1, 1, 15000, 'Garaj', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 0.694885, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-05-22 02:02:36', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(13, 2249.31, 111.771, 28.4416, 0, -1, 1, 77000, 'Casa', 8, 2365.14, -1135.35, 1050.87, 0, 0, 0, 358.349, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-05-22 02:02:48', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(14, 2251.65, 109.77, 27.7808, 0, -1, 1, 15000, 'Garaj', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 357.174, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-05-22 02:03:42', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(15, 2323.94, 116.218, 28.4416, 0, -1, 1, 55000, 'Casa', 5, 226.56, 1114.19, 1080.99, 0, 0, 270, 91.9487, 100, NULL, NULL, NULL, NULL, 0, '2020-05-31 12:30:05', '0', '2020-05-22 02:03:53', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(16, 2325.85, 118.557, 27.7807, 0, 27, 0, 15000, 'Garaj', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 90.1854, 100, NULL, NULL, NULL, NULL, 0, '2020-06-16 13:39:47', '0', '2020-05-22 02:03:59', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(17, 2323.85, 136.459, 28.4416, 0, 22, 0, 95000, 'Casa', 15, 295.05, 1472.36, 1080.25, 0, 0, 0, 89.0098, 100, NULL, NULL, NULL, NULL, 0, '2020-06-07 11:59:01', '0', '2020-05-22 02:05:31', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(18, 2325.85, 134.102, 27.7821, 0, 22, 0, 15000, 'Garaj', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 85.4887, 100, NULL, NULL, NULL, NULL, 0, '2020-06-16 13:40:13', '0', '2020-05-22 02:05:44', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(19, 2323.85, 162.288, 28.4416, 0, -1, 1, 62000, 'Casa', 5, 226.56, 1114.19, 1080.99, 0, 0, 270, 90.1854, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-05-22 02:05:55', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(20, 2325.85, 159.86, 27.7821, 0, -1, 1, 15000, 'Garaj', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 79.6109, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-05-22 02:06:00', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(21, 2323.85, 191.179, 28.4416, 0, -1, 1, 77000, 'Casa', 8, 2365.14, -1135.35, 1050.87, 0, 0, 0, 90.1854, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-05-22 02:06:14', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(22, 2325.85, 201.057, 27.7795, 0, -1, 1, 15000, 'Garaj', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 90.1854, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-05-22 02:06:27', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(23, 2364, 187.334, 28.4416, 0, 279, 1, 55000, 'Casa', 5, 226.56, 1114.19, 1080.99, 0, 0, 270, 269.804, 100, NULL, NULL, NULL, NULL, 0, '2020-06-18 15:14:11', '0', '2020-05-22 02:07:43', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(24, 2362, 184.837, 27.781, 0, 279, 1, 15000, 'Garaj', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 270.979, 100, NULL, NULL, NULL, NULL, 0, '2020-06-18 11:11:41', '0', '2020-05-22 02:07:52', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(25, 2363.97, 166.196, 28.4416, 0, -1, 1, 95000, 'Casa', 15, 295.05, 1472.36, 1080.25, 0, 0, 0, 270.391, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-05-22 02:08:42', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(26, 2362, 168.514, 27.782, 0, -1, 1, 15000, 'Garaj', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 266.865, 100, NULL, NULL, NULL, NULL, 0, '2020-05-30 16:55:06', '0', '2020-05-22 02:08:50', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(27, 2363.96, 142.062, 28.4416, 0, 169, 0, 62000, 'Casa', 5, 226.56, 1114.19, 1080.99, 0, 0, 270, 271.567, 100, NULL, NULL, NULL, NULL, 0, '2020-06-18 07:48:27', '0', '2020-05-22 02:10:10', 'adyady321', 0, 26, 'D47268E9DB2E9AA3827BBA3AFB7FF94A', NULL, NULL, 0, NULL),
(28, 2362, 144.273, 27.7824, 0, 169, 0, 15000, 'Garaj', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 267.453, 100, NULL, NULL, NULL, NULL, 0, '2020-06-16 13:40:56', '0', '2020-05-22 02:10:16', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(29, 2364, 116.122, 28.4416, 0, -1, 1, 77000, 'Casa', 8, 2365.14, -1135.35, 1050.87, 0, 0, 0, 266.277, 100, NULL, NULL, NULL, NULL, 0, '2020-06-08 23:45:23', '0', '2020-05-22 02:12:30', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(30, 2362, 118.514, 27.782, 0, 241, 0, 15000, 'Garaj', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 269.216, 100, NULL, NULL, NULL, NULL, 0, '2020-06-17 07:13:04', '0', '2020-05-22 02:12:35', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(31, 2398.3, 111.762, 28.4416, 0, -1, 1, 93000, 'Casa', 9, 260.67, 1237.32, 1084.25, 0, 0, 0, 359.701, 100, NULL, NULL, NULL, NULL, 0, '2020-06-09 10:18:41', '0', '2020-05-22 02:12:49', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(32, 2400.84, 109.762, 27.7809, 0, -1, 1, 15000, 'Garaj', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 359.113, 100, NULL, NULL, NULL, NULL, 0, '2020-06-09 10:18:26', '0', '2020-05-22 02:12:53', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(33, 2373.92, 71.1445, 28.4416, 0, 235, 0, 55000, 'Casa', 5, 226.56, 1114.19, 1080.99, 0, 0, 270, 93.5308, 100, NULL, NULL, NULL, NULL, 0, '2020-06-08 23:36:54', '0', '2020-05-22 02:12:59', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(34, 2375.85, 73.5029, 27.7802, 0, 235, 0, 15000, 'Garaj', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 89.4218, 100, NULL, NULL, NULL, NULL, 0, '2020-06-09 10:43:16', '0', '2020-05-22 02:13:04', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(35, 2373.85, 42.2227, 28.4416, 0, -1, 1, 95000, 'Casa', 15, 295.05, 1472.36, 1080.25, 0, 0, 0, 87.6585, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-05-22 02:13:15', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(36, 2375.85, 39.8535, 27.7817, 0, -1, 1, 15000, 'Garaj', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 85.7139, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-05-22 02:13:19', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(37, 2373.86, 21.998, 28.4416, 0, 61, 0, 62000, 'Casa', 5, 226.56, 1114.19, 1080.99, 0, 0, 270, 88.6528, 100, NULL, NULL, NULL, NULL, 0, '2020-06-11 14:34:16', '0', '2020-05-22 02:13:24', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(38, 2375.85, 24.4102, 27.7811, 0, 61, 0, 15000, 'Garaj', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 91.7729, 100, NULL, NULL, NULL, NULL, 0, '2020-06-18 13:33:54', '0', '2020-05-22 02:13:32', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(39, 2373.95, -8.67871, 28.4416, 0, 12, 0, 77000, 'Casa', 8, 2365.14, -1135.35, 1050.87, 0, 0, 0, 88.2463, 100, NULL, NULL, NULL, NULL, 0, '2020-06-17 13:15:00', '0', '2020-05-22 02:13:38', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(40, 2375.85, -10.9062, 27.7817, 0, 12, 1, 15000, 'Garaj', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 87.0707, 100, NULL, NULL, NULL, NULL, 0, '2020-06-13 06:25:28', '0', '2020-05-22 02:13:43', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(41, 2270.4, -7.57715, 28.1535, 0, -1, 1, 55000, 'Casa', 5, 226.56, 1114.19, 1080.99, 0, 0, 270, 358.756, 100, NULL, NULL, NULL, NULL, 0, '2020-06-01 10:24:11', '0', '2020-05-22 02:13:53', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(42, 2276.11, 12.6533, 27.4766, 0, 56, 0, 15000, 'Garaj', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 270.034, 100, NULL, NULL, NULL, NULL, 0, '2020-06-17 12:24:48', '0', '2020-05-22 02:14:08', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(43, 2245.46, -1.69922, 28.1536, 0, 90, 0, 95000, 'Casa', 15, 295.05, 1472.36, 1080.25, 0, 0, 0, 3.8645, 100, NULL, NULL, NULL, NULL, 0, '2020-06-10 19:15:30', '0', '2020-05-22 02:14:16', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(44, 2253.84, -1.6748, 28.1536, 0, 90, 0, 62000, 'Casa', 5, 226.56, 1114.19, 1080.99, 0, 0, 270, 357.987, 100, NULL, NULL, NULL, NULL, 0, '2020-06-10 19:16:33', '0', '2020-05-22 02:14:19', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(45, 2236.71, -1.66309, 27.4766, 0, 90, 0, 15000, 'Garaj', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 359.162, 100, NULL, NULL, NULL, NULL, 0, '2020-06-10 19:16:25', '0', '2020-05-22 02:14:26', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(46, 2199.95, -37.4277, 28.1535, 0, -1, 1, 77000, 'Casa', 8, 2365.14, -1135.35, 1050.87, 0, 0, 0, 91.2346, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-05-22 02:14:45', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(47, 2184.23, -43.0049, 27.4766, 0, 93, 0, 15000, 'Garaj', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 180.544, 100, NULL, NULL, NULL, NULL, 0, '2020-06-17 11:10:26', '0', '2020-05-22 02:14:53', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(48, 2197.29, -60.7842, 28.1535, 0, -1, 1, 93000, 'Casa', 9, 260.67, 1237.32, 1084.25, 0, 0, 0, 87.7079, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-05-22 02:15:06', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(49, 2197.27, -69.749, 27.4766, 0, 123, 0, 15000, 'Garaj', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 91.2346, 100, NULL, NULL, NULL, NULL, 0, '2020-06-18 10:58:36', '0', '2020-05-22 02:15:12', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(50, 2203.11, -89.1758, 28.1535, 0, 316, 0, 55000, 'Casa', 5, 226.56, 1114.19, 1080.99, 0, 0, 270, 90.0591, 100, NULL, NULL, NULL, NULL, 0, '2020-06-18 13:01:48', '0', '2020-05-22 02:15:17', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(51, 2183.03, -83.624, 27.4766, 0, 316, 0, 15000, 'Garaj', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 3.09543, 100, NULL, NULL, NULL, NULL, 0, '2020-06-18 13:02:05', '0', '2020-05-22 02:15:28', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(52, 2245.49, -122.291, 28.1535, 0, 8, 0, 55000, 'Casa', 5, 226.56, 1114.19, 1080.99, 0, 0, 270, 176.429, 100, NULL, NULL, NULL, NULL, 0, '2020-06-10 07:18:38', '0', '2020-05-22 02:15:53', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(53, 2251.11, -137.985, 27.4766, 0, 8, 0, 15000, 'Garaj', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 269.265, 100, NULL, NULL, NULL, NULL, 0, '2020-06-12 16:31:27', '0', '2020-05-22 02:16:00', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(54, 2272.37, -119.118, 28.1535, 0, -1, 1, 95000, 'Casa', 15, 295.05, 1472.36, 1080.25, 0, 0, 0, 184.07, 100, NULL, NULL, NULL, NULL, 0, '2020-06-06 12:57:53', '0', '2020-05-22 02:16:08', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(55, 2266.73, -139.287, 27.4766, 0, -1, 1, 15000, 'Garaj', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 91.4104, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-05-22 02:16:15', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(56, 2293.75, -124.964, 28.1535, 0, 58, 0, 62000, 'Casa', 5, 226.56, 1114.19, 1080.99, 0, 0, 270, 179.956, 100, NULL, NULL, NULL, NULL, 0, '2020-06-15 17:52:23', '0', '2020-05-22 02:16:23', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(57, 2302.72, -124.964, 27.4766, 0, 58, 0, 15000, 'Garaj', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 179.956, 100, NULL, NULL, NULL, NULL, 0, '2020-06-18 10:15:38', '0', '2020-05-22 02:16:27', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(58, 2313.87, -124.961, 28.1536, 0, -1, 1, 77000, 'Casa', 8, 2365.14, -1135.35, 1050.87, 0, 0, 0, 175.842, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-05-22 02:16:34', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(59, 2322.28, -124.95, 28.1536, 0, -1, 1, 93000, 'Casa', 9, 260.67, 1237.32, 1084.25, 0, 0, 0, 177.605, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-05-22 02:16:39', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(60, 2331.15, -124.964, 27.4766, 0, -1, 1, 15000, 'Garaj', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 181.719, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-05-22 02:16:44', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(61, 2367.41, -49.0391, 28.1535, 0, -1, 1, 55000, 'Casa', 5, 226.56, 1114.19, 1080.99, 0, 0, 270, 180.544, 100, NULL, NULL, NULL, NULL, 0, '2020-05-24 11:31:26', '0', '2020-05-22 02:16:51', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(62, 2361.73, -69.2412, 27.4766, 0, -1, 1, 15000, 'Garaj', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 88.2957, 100, NULL, NULL, NULL, NULL, 0, '2020-05-29 10:36:49', '0', '2020-05-22 02:16:57', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(63, 2392.42, -54.9316, 28.1536, 0, -1, 1, 95000, 'Casa', 15, 295.05, 1472.36, 1080.25, 0, 0, 0, 178.599, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-05-22 02:17:05', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(64, 2384, -54.9443, 28.1536, 0, -1, 1, 62000, 'Casa', 5, 226.56, 1114.19, 1080.99, 0, 0, 270, 173.902, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-05-22 02:17:08', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(65, 2401.4, -54.96, 27.4766, 0, -1, 1, 15000, 'Garaj', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 184.477, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-05-22 02:17:13', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(66, 2415.43, -52.2549, 28.1535, 0, -1, 1, 77000, 'Casa', 8, 2365.14, -1135.35, 1050.87, 0, 0, 0, 182.126, 100, NULL, NULL, NULL, NULL, 0, '2020-05-22 10:30:58', '0', '2020-05-22 02:17:19', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(67, 2421.11, -67.9521, 27.4766, 0, 5, 0, 15000, 'Garaj', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 265.563, 100, NULL, NULL, NULL, NULL, 0, '2020-06-16 13:43:53', '0', '2020-05-22 02:17:26', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(68, 2438.91, -54.959, 28.1535, 0, -1, 1, 93000, 'Casa', 9, 260.67, 1237.32, 1084.25, 0, 0, 0, 180.95, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-05-22 02:17:34', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(69, 2447.59, -54.9639, 27.4766, 0, -1, 1, 15000, 'Garaj', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 178.599, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-05-22 02:17:42', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(70, 2411.16, -5.60938, 27.6835, 0, -1, 1, 55000, 'Casa', 5, 226.56, 1114.19, 1080.99, 0, 0, 270, 273.198, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-05-22 02:17:51', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(71, 2419.87, -0.855469, 26.4844, 0, -1, 1, 15000, 'Garaj', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 3.09543, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-05-22 02:17:55', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(72, 2411.15, 21.7246, 27.6835, 0, -1, 1, 95000, 'Casa', 15, 295.05, 1472.36, 1080.25, 0, 0, 0, 273.198, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-05-22 02:18:04', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(73, 2417.15, 14.2266, 26.5146, 0, -1, 1, 15000, 'Garaj', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 186.24, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-05-22 02:18:16', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(74, 2446.63, 18.8711, 27.6835, 0, -1, 1, 62000, 'Casa', 5, 226.56, 1114.19, 1080.99, 0, 0, 270, 86.1754, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-05-22 02:18:27', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(75, 2438.02, 14.2246, 26.4844, 0, -1, 1, 15000, 'Garaj', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 173.133, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-05-22 02:18:32', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(76, 2448.42, -11.0254, 27.6835, 0, -1, 1, 77000, 'Casa', 8, 2365.14, -1135.35, 1050.87, 0, 0, 0, 0.387268, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-05-22 02:18:41', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(77, 2436.48, -4.96875, 26.5328, 0, -1, 1, 15000, 'Garaj', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 89.5207, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-05-22 02:18:47', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(78, 2484.38, -28.3311, 28.4416, 0, -1, 1, 55000, 'Casa', 5, 226.56, 1114.19, 1080.99, 0, 0, 270, 181.769, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-05-22 02:19:03', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(79, 2482.1, -26.4043, 27.7811, 0, -1, 1, 15000, 'Garaj', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 180.187, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-05-22 02:19:08', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(80, 2513.35, -28.3701, 28.4416, 0, -1, 1, 95000, 'Casa', 15, 295.05, 1472.36, 1080.25, 0, 0, 0, 173.721, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-05-22 02:19:12', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(81, 2523.38, -26.3975, 27.7815, 0, -1, 1, 15000, 'Garaj', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 179.011, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-05-22 02:19:18', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(82, 2488.45, 11.6807, 28.4416, 0, -1, 1, 62000, 'Casa', 5, 226.56, 1114.19, 1080.99, 0, 0, 270, 2.91965, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-05-22 02:19:25', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(83, 2490.87, 9.76172, 27.7808, 0, -1, 1, 15000, 'Garaj', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 0.162048, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-05-22 02:19:30', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(84, 2509.48, 11.7588, 28.4416, 0, -1, 1, 77000, 'Casa', 8, 2365.14, -1135.35, 1050.87, 0, 0, 0, 4.85876, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-05-22 02:19:36', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(85, 2507.09, 9.76074, 27.7821, 0, 128, 0, 15000, 'Garaj', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 357.811, 100, NULL, NULL, NULL, NULL, 0, '2020-06-17 18:09:07', '0', '2020-05-22 02:19:40', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(86, 2551.16, -5.44043, 27.6756, 0, -1, 1, 55000, 'Casa', 5, 226.56, 1114.19, 1080.99, 0, 0, 270, 263.799, 100, NULL, NULL, NULL, NULL, 0, '2020-05-22 22:33:31', '0', '2020-05-22 02:19:46', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(87, 2559.92, -0.765625, 26.4766, 0, -1, 1, 15000, 'Garaj', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 1.91989, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-05-22 02:19:51', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(88, 2549.23, 25.1895, 27.6756, 0, -1, 1, 95000, 'Casa', 15, 295.05, 1472.36, 1080.25, 0, 0, 0, 266.151, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-05-22 02:19:57', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(89, 2559.86, 17.0391, 27.0781, 0, -1, 1, 15000, 'Garaj', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 182.714, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-05-22 02:20:02', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(90, 2551.22, 57.1826, 27.6756, 0, -1, 1, 62000, 'Casa', 5, 226.56, 1114.19, 1080.99, 0, 0, 270, 272.435, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-05-22 02:20:08', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(91, 2557.23, 69.1465, 26.5243, 0, -1, 1, 15000, 'Garaj', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 355.685, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-05-22 02:20:14', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(92, 2551.17, 91.6787, 27.6756, 0, 94, 0, 77000, 'Casa', 8, 2365.14, -1135.35, 1050.87, 0, 0, 0, 266.964, 100, NULL, NULL, NULL, NULL, 0, '2020-06-16 16:26:46', '0', '2020-05-22 02:20:23', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(93, 2557.18, 84.2266, 26.5067, 0, 94, 0, 15000, 'Garaj', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 180.769, 100, NULL, NULL, NULL, NULL, 0, '2020-06-16 12:33:55', '0', '2020-05-22 02:20:30', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(94, 2536.22, 128.983, 27.6835, 0, 195, 1, 93000, 'Casa', 9, 260.67, 1237.32, 1084.25, 0, 0, 0, 2.73837, 100, 260.33, 1256.91, 1083.76, 482.159, 0, '2020-06-13 15:29:41', '0', '2020-05-22 02:20:38', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(95, 2531.47, 137.678, 26.4844, 0, 195, 0, 15000, 'Garaj', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 91.4598, 100, NULL, NULL, NULL, NULL, 0, '2020-06-11 12:10:10', '0', '2020-05-22 02:20:44', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(96, 2518.41, 128.917, 27.6756, 0, -1, 1, 55000, 'Casa', 5, 226.56, 1114.19, 1080.99, 0, 0, 270, 359.799, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-05-22 02:20:52', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(97, 2506.47, 134.882, 26.524, 0, -1, 1, 15000, 'Garaj', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 84.412, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-05-22 02:20:59', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(98, 2480.68, 126.986, 27.6756, 0, -1, 1, 95000, 'Casa', 15, 295.05, 1472.36, 1080.25, 0, 0, 0, 0.387268, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-05-22 02:21:09', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(99, 2488.67, 137.556, 27.0781, 0, -1, 1, 15000, 'Garaj', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 271.666, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-05-22 02:21:16', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(100, 2479.37, 94.4111, 27.6835, 0, -1, 1, 62000, 'Casa', 5, 226.56, 1114.19, 1080.99, 0, 0, 270, 182.944, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-05-22 02:21:25', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(101, 2491.39, 88.374, 26.5316, 0, -1, 1, 15000, 'Garaj', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 268.546, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-05-22 02:21:32', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(102, 2513.96, 94.3965, 27.6835, 0, -1, 1, 77000, 'Casa', 8, 2365.14, -1135.35, 1050.87, 0, 0, 0, 180.412, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-05-22 02:21:43', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(103, 2506.46, 88.5352, 26.5149, 0, -1, 1, 15000, 'Garaj', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 93.6297, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-05-22 02:21:52', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(104, 2518.62, 58.3076, 27.6835, 0, -1, 1, 93000, 'Casa', 9, 260.67, 1237.32, 1084.25, 0, 0, 0, 89.5207, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-05-22 02:22:02', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(105, 2507.95, 66.4287, 27.0859, 0, -1, 1, 15000, 'Garaj', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 356.097, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-05-22 02:22:09', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(106, 2443.92, 92.3154, 28.4416, 0, -1, 1, 55000, 'Casa', 5, 226.56, 1114.19, 1080.99, 0, 0, 270, 95.2172, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-05-22 02:22:20', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(107, 2445.85, 89.8477, 27.782, 0, -1, 1, 15000, 'Garaj', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 88.7516, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-05-22 02:22:24', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(108, 2458.87, 128.919, 27.6756, 0, -1, 1, 95000, 'Casa', 15, 295.05, 1472.36, 1080.25, 0, 0, 0, 1.96933, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-05-22 02:22:34', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(109, 2466.39, 134.967, 26.5067, 0, -1, 1, 15000, 'Garaj', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 271.666, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-05-22 02:22:41', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(110, 2443.46, 61.7256, 28.4416, 0, -1, 1, 62000, 'Casa', 5, 226.56, 1114.19, 1080.99, 0, 0, 270, 6.26505, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-05-22 02:23:01', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(111, 2453.28, 59.7598, 27.779, 0, -1, 1, 15000, 'Garaj', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 353.515, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-05-22 02:23:06', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(112, 2413.45, 61.752, 28.4416, 0, 3, 1, 77000, 'Casa', 8, 2365.14, -1135.35, 1050.87, 0, 0, 0, 356.454, 100, NULL, NULL, NULL, NULL, 0, '2020-06-17 16:45:06', '0', '2020-05-22 02:23:16', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(113, 2411.33, 59.7578, 27.7815, 0, 3, 0, 15000, 'Garaj', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 349.989, 100, NULL, NULL, NULL, NULL, 0, '2020-06-18 12:09:36', '0', '2020-05-22 02:23:25', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(114, 1760.96, 396.059, 22.3125, 0, 94, 0, 38532, 'Casa', 5, 226.56, 1114.19, 1080.99, 0, 0, 270, 266.964, 100, NULL, NULL, NULL, NULL, 0, '2020-06-16 12:39:23', '0', '2020-05-22 02:23:46', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(115, 1766.06, 396.038, 19.7673, 0, 95, 0, 15000, 'Garaj', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 353.515, 100, NULL, NULL, NULL, NULL, 0, '2020-06-17 17:58:15', '0', '2020-05-22 02:23:52', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(116, 1779.67, 395.018, 19.9688, 0, -1, 1, 43623, 'Casa', 15, 295.05, 1472.36, 1080.25, 0, 0, 0, 354.691, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-05-22 02:23:56', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(117, 1782.06, 394.581, 19.5252, 0, -1, 1, 15000, 'Garaj', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 7.79767, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-05-22 02:24:00', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(118, 1789.1, 392.509, 19.3878, 0, -1, 1, 48241, 'Casa', 5, 226.56, 1114.19, 1080.99, 0, 0, 270, 351.933, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-05-22 02:24:03', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(119, 1796.63, 392.449, 19.3199, 0, -1, 1, 15000, 'Garaj', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 351.933, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-05-22 02:24:08', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(120, 1808.86, 393.829, 21.9625, 0, -1, 1, 56532, 'Casa', 8, 2365.14, -1135.35, 1050.87, 0, 0, 0, 3.68323, 100, NULL, NULL, NULL, NULL, 0, '2020-06-08 22:52:17', '0', '2020-05-22 02:24:16', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(121, 1813.13, 389.571, 19.1794, 0, -1, 1, 15000, 'Garaj', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 350.17, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-05-22 02:24:21', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(122, 1824.13, 386.926, 19.286, 0, -1, 1, 43623, 'Casa', 9, 260.67, 1237.32, 1084.25, 0, 0, 0, 338.826, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-05-22 02:24:27', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(123, 1831.59, 384.299, 19.239, 0, -1, 1, 15000, 'Garaj', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 340.002, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-05-22 02:24:32', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(124, 1838.78, 381.046, 19.3589, 0, 244, 0, 27424, 'Casa', 5, 226.56, 1114.19, 1080.99, 0, 0, 270, 340.408, 100, NULL, NULL, NULL, NULL, 0, '2020-06-13 07:11:05', '0', '2020-05-22 02:24:38', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(125, 1847.34, 378.656, 19.5845, 0, 244, 0, 15000, 'Garaj', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 344.523, 100, NULL, NULL, NULL, NULL, 0, '2020-06-14 13:53:17', '0', '2020-05-22 02:24:41', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(126, 1860.21, 374.516, 19.9643, 0, -1, 1, 40415, 'Casa', 15, 295.05, 1472.36, 1080.25, 0, 0, 0, 341.584, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-05-22 02:24:46', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(127, 1862.24, 373.949, 20.015, 0, -1, 1, 15000, 'Garaj', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 337.475, 100, NULL, NULL, NULL, NULL, 0, '2020-06-03 10:27:12', '0', '2020-05-22 02:24:49', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(128, 1876.41, 369.101, 20.3359, 0, -1, 1, 40415, 'Casa', 5, 226.56, 1114.19, 1080.99, 0, 0, 270, 345.698, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-05-22 02:24:53', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(129, 1878.63, 369.831, 20.3945, 0, -1, 1, 15000, 'Garaj', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 348.637, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-05-22 02:24:57', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(130, 1780.98, 378.276, 19.4212, 0, 274, 0, 38532, 'Casa', 15, 295.05, 1472.36, 1080.25, 0, 0, 0, 171.37, 100, NULL, NULL, NULL, NULL, 0, '2020-06-12 13:52:11', '0', '2020-05-22 02:25:16', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(131, 1778.31, 375.771, 19.5195, 0, 274, 0, 15000, 'Garaj', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 171.37, 100, NULL, NULL, NULL, NULL, 0, '2020-06-12 14:07:07', '0', '2020-05-22 02:25:24', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(132, 1799.82, 373.788, 22.1125, 0, 208, 0, 56532, 'Casa', 5, 226.56, 1114.19, 1080.99, 0, 0, 270, 78.5342, 100, NULL, NULL, NULL, NULL, 0, '2020-06-12 10:00:39', '0', '2020-05-22 02:25:31', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(133, 1794.85, 373.547, 19.2944, 0, -1, 1, 15000, 'Garaj', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 167.437, 100, NULL, NULL, NULL, NULL, 0, '2020-06-08 23:21:06', '0', '2020-05-22 02:25:37', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(134, 1815.56, 367.834, 19.3625, 0, -1, 1, 48241, 'Casa', 9, 260.67, 1237.32, 1084.25, 0, 0, 0, 160.971, 100, NULL, NULL, NULL, NULL, 0, '2020-06-08 23:30:01', '0', '2020-05-22 02:25:44', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(135, 1811.31, 370.755, 19.13, 0, -1, 1, 15000, 'Garaj', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 165.855, 100, NULL, NULL, NULL, NULL, 0, '2020-06-08 23:33:04', '0', '2020-05-22 02:25:50', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(136, 1830.94, 366.37, 19.2538, 0, -1, 1, 43623, 'Casa', 8, 2365.14, -1135.35, 1050.87, 0, 0, 0, 166.443, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-05-22 02:25:59', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(137, 1827.16, 365.374, 19.2249, 0, -1, 1, 15000, 'Garaj', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 167.618, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-05-22 02:26:02', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(138, 1843.76, 360.795, 19.8687, 0, -1, 1, 40415, 'Casa', 5, 226.56, 1114.19, 1080.99, 0, 0, 270, 157.038, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-05-22 02:26:11', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(139, 1841.87, 361.116, 19.5609, 0, -1, 1, 15000, 'Garaj', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 158.983, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-05-22 02:26:14', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(140, 1858.71, 358.021, 19.9507, 0, -1, 1, 38532, 'Casa', 5, 226.56, 1114.19, 1080.99, 0, 0, 270, 166.031, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-05-22 02:26:19', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(141, 1856.05, 355.899, 19.9664, 0, -1, 1, 15000, 'Garaj', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 156.044, 100, NULL, NULL, NULL, NULL, 0, '2020-05-31 10:29:59', '0', '2020-05-22 02:26:22', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(142, 2355.29, -83.5859, 26.5344, 0, -1, 1, 38532, 'Casa', 5, 226.56, 1114.19, 1080.99, 0, 0, 270, 183.252, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-05-22 02:26:46', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(143, 2362.84, -86.1123, 26.665, 0, -1, 1, 15000, 'Garaj', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 180.313, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-05-22 02:26:49', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(144, 2370.64, -83.4713, 26.9688, 0, -1, 1, 38532, 'Casa', 15, 295.05, 1472.36, 1080.25, 0, 0, 0, 183.252, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-05-22 02:26:52', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(145, 2378.24, -86.2041, 26.4652, 0, 235, 0, 15000, 'Garaj', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 177.962, 100, NULL, NULL, NULL, NULL, 0, '2020-06-09 10:22:10', '0', '2020-05-22 02:26:56', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(146, 2386.47, -81.8525, 26.4844, 0, 235, 0, 43623, 'Casa', 5, 226.56, 1114.19, 1080.99, 0, 0, 270, 177.962, 100, NULL, NULL, NULL, NULL, 0, '2020-06-12 10:08:12', '0', '2020-05-22 02:27:00', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(147, 2395.14, -86.0596, 26.3873, 0, -1, 1, 15000, 'Garaj', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 176.199, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-05-22 02:27:03', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(148, 2406.05, -83.2971, 29.0641, 0, 15, 0, 48241, 'Casa', 8, 2365.14, -1135.35, 1050.87, 0, 0, 0, 88.065, 100, NULL, NULL, NULL, NULL, 0, '2020-06-12 10:09:07', '0', '2020-05-22 02:27:10', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(149, 2411.43, -86.123, 26.3856, 0, 15, 0, 15000, 'Garaj', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 177.962, 100, NULL, NULL, NULL, NULL, 0, '2020-06-09 11:27:18', '0', '2020-05-22 02:27:13', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(150, 2419.45, -83.4146, 26.8687, 0, -1, 1, 56532, 'Casa', 9, 260.67, 1237.32, 1084.25, 0, 0, 0, 179.138, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-05-22 02:27:18', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(151, 2426.82, -81.9189, 26.4844, 0, 32, 0, 15000, 'Garaj', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 175.023, 100, NULL, NULL, NULL, NULL, 0, '2020-06-10 12:05:00', '0', '2020-05-22 02:27:22', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(152, 1415.27, 3.60351, 35.1625, 0, -1, 1, 38532, 'Casa', 5, 226.56, 1114.19, 1080.99, 0, 0, 270, 217.332, 100, NULL, NULL, NULL, NULL, 0, '2020-05-26 17:18:59', '0', '2020-05-22 02:27:43', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(153, 1408.52, 3.12402, 32.8152, 0, -1, 1, 15000, 'Garaj', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 216.92, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-05-22 02:27:47', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(154, 1397.29, -6.55273, 33.2124, 0, -1, 1, 56532, 'Casa', 15, 295.05, 1472.36, 1080.25, 0, 0, 0, 219.859, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-05-22 02:27:51', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(155, 1395.62, -8.13184, 33.2744, 0, -1, 1, 15000, 'Garaj', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 213.399, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-05-22 02:27:54', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(156, 1387.47, -16.7053, 36.1641, 0, -1, 1, 48241, 'Casa', 5, 226.56, 1114.19, 1080.99, 0, 0, 270, 130.55, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-05-22 02:27:57', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(157, 1383.05, -19.2744, 33.7557, 0, -1, 1, 15000, 'Garaj', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 224.561, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-05-22 02:28:02', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(158, 1375.36, -28.6354, 37.1125, 0, -1, 1, 43623, 'Casa', 8, 2365.14, -1135.35, 1050.87, 0, 0, 0, 127.023, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-05-22 02:28:08', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(159, 1370.31, -30.7031, 34.2477, 0, -1, 1, 15000, 'Garaj', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 219.859, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-05-22 02:28:14', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(160, 1361.52, -40.8316, 35.2687, 0, -1, 1, 93000, 'Casa', 9, 260.67, 1237.32, 1084.25, 0, 0, 0, 225.149, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-05-22 02:28:20', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(161, 1358.6, -41.3252, 34.7185, 0, -1, 1, 15000, 'Garaj', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 232.197, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-05-22 02:28:23', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(162, 1350.09, -51.1514, 35.6688, 0, -1, 1, 38532, 'Casa', 5, 226.56, 1114.19, 1080.99, 0, 0, 270, 219.859, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-05-22 02:28:27', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(163, 1347.57, -51.3779, 35.1611, 0, -1, 1, 15000, 'Garaj', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 219.271, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-05-22 02:28:30', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(164, 818.148, -509.339, 18.0129, 0, 85, 1, 55000, 'Casa', 5, 226.56, 1114.19, 1080.99, 0, 0, 270, 353.241, 100, 225.544, 1106.28, 1080.5, 450.902, 0, '2020-06-09 14:41:11', '0', '2020-05-22 02:28:46', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(165, 823.894, -489.177, 17.3359, 0, 85, 1, 15000, 'Garaj', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 272.155, 100, NULL, NULL, NULL, NULL, 0, '2020-06-12 12:36:11', '0', '2020-05-22 02:28:52', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(166, 795.199, -506.153, 18.0129, 0, -1, 1, 95000, 'Casa', 15, 295.05, 1472.36, 1080.25, 0, 0, 0, 358.349, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-05-22 02:28:59', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(167, 789.516, -490.398, 17.3359, 0, -1, 1, 15000, 'Garaj', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 86.4829, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-05-22 02:29:08', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(168, 776.603, -503.539, 18.0129, 0, -1, 1, 62000, 'Casa', 5, 226.56, 1114.19, 1080.99, 0, 0, 270, 357.762, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-05-22 02:29:16', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(169, 768.189, -503.537, 18.0129, 0, -1, 1, 77000, 'Casa', 8, 2365.14, -1135.35, 1050.87, 0, 0, 0, 357.762, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-05-22 02:29:20', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(170, 759.498, -503.482, 17.3359, 0, 258, 1, 15000, 'Garaj', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 359.519, 100, NULL, NULL, NULL, NULL, 0, '2020-06-12 06:58:48', '0', '2020-05-22 02:29:24', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(171, 743.214, -509.318, 18.0129, 0, -1, 1, 93000, 'Casa', 9, 260.67, 1237.32, 1084.25, 0, 0, 0, 358.349, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-05-22 02:29:34', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(172, 748.89, -489.057, 17.3359, 0, -1, 1, 15000, 'Garaj', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 272.561, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-05-22 02:29:41', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(173, 745.143, -556.782, 18.0129, 0, -1, 1, 55000, 'Casa', 5, 226.56, 1114.19, 1080.99, 0, 0, 270, 180.901, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-05-22 02:29:48', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(174, 736.672, -556.708, 18.0129, 0, -1, 1, 95000, 'Casa', 15, 295.05, 1472.36, 1080.25, 0, 0, 0, 174.435, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-05-22 02:29:51', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(175, 747.255, -556.741, 17.3432, 0, -1, 1, 15000, 'Garaj', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 177.374, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-05-22 02:29:55', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(176, 766.663, -556.782, 18.0129, 0, -1, 1, 62000, 'Casa', 5, 226.56, 1114.19, 1080.99, 0, 0, 270, 185.603, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-05-22 02:30:01', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(177, 775.575, -556.783, 17.3359, 0, -1, 1, 15000, 'Garaj', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 175.023, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-05-22 02:30:06', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(178, 223.321, -265.558, 1.57812, 0, -1, 1, 55000, 'Casa', 5, 226.56, 1114.19, 1080.99, 0, 0, 270, 88.834, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-05-22 02:30:20', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(179, 223.58, -263.591, 1.57812, 0, -1, 1, 15000, 'Garaj', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 89.4218, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-05-22 02:30:23', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(180, 223.335, -250.433, 1.57812, 0, -1, 1, 56532, 'Casa', 15, 295.05, 1472.36, 1080.25, 0, 0, 0, 89.4218, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-05-22 02:30:27', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(181, 192.069, -255.793, 1.57812, 0, -1, 1, 62000, 'Casa', 5, 226.56, 1114.19, 1080.99, 0, 0, 270, 267.859, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-05-22 02:30:54', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(182, 192.119, -257.767, 1.57812, 0, -1, 1, 15000, 'Garaj', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 269.035, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-05-22 02:30:59', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(183, 192.164, -271.204, 1.57812, 0, -1, 1, 77000, 'Casa', 8, 2365.14, -1135.35, 1050.87, 0, 0, 0, 270.21, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-05-22 02:31:03', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(184, 252.887, -121.274, 3.53539, 0, -1, 1, 55000, 'Casa', 5, 226.56, 1114.19, 1080.99, 0, 0, 270, 270.21, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-05-22 02:31:14', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(185, 250.884, -124.101, 2.8741, 0, -1, 1, 15000, 'Garaj', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 269.035, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-05-22 02:31:19', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(186, 252.652, -92.4131, 3.53539, 0, -1, 1, 95000, 'Casa', 15, 295.05, 1472.36, 1080.25, 0, 0, 0, 268.447, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-05-22 02:31:24', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(187, 250.88, -90.0078, 2.87485, 0, -1, 1, 15000, 'Garaj', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 257.285, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-05-22 02:31:27', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(188, 267.812, -54.6279, 2.77721, 0, -1, 1, 62000, 'Casa', 5, 226.56, 1114.19, 1080.99, 0, 0, 270, 358.932, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-05-22 02:31:37', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(189, 275.266, -48.6133, 1.60835, 0, -1, 1, 15000, 'Garaj', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 271.567, 100, NULL, NULL, NULL, NULL, 0, '2020-06-12 09:52:07', '0', '2020-05-22 02:31:44', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(190, 295.079, -54.543, 2.77721, 0, -1, 1, 77000, 'Casa', 8, 2365.14, -1135.35, 1050.87, 0, 0, 0, 356.762, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-05-22 02:31:59', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(191, 290.342, -45.9248, 1.57812, 0, -1, 1, 15000, 'Garaj', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 88.4221, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-05-22 02:32:03', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(192, 312.807, -92.3281, 3.53539, 0, -1, 1, 55000, 'Casa', 5, 226.56, 1114.19, 1080.99, 0, 0, 270, 88.4221, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-05-22 02:32:09', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(193, 314.727, -89.7041, 2.87399, 0, -1, 1, 15000, 'Garaj', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 88.6033, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-05-22 02:32:13', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(194, 312.817, -121.272, 3.53539, 0, -1, 1, 95000, 'Casa', 15, 295.05, 1472.36, 1080.25, 0, 0, 0, 90.9545, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-05-22 02:32:21', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(195, 314.783, -123.669, 2.86609, 0, -1, 1, 15000, 'Garaj', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 82.1378, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-05-22 02:32:24', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(196, 1433.73, 428.579, 20.3312, 0, 89, 1, 47000, 'Casa', 8, -42.65, 1405.46, 1084.42, 0, 0, 0, 335.97, 100, NULL, NULL, NULL, NULL, 0, '2020-06-14 09:03:40', '0', '2020-05-22 02:35:16', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(197, 1449.33, 420.943, 20.6332, 0, 247, 1, 54000, 'Casa', 4, 261.14, 1284.56, 1080.25, 0, 0, 0, 337.909, 100, NULL, NULL, NULL, NULL, 0, '2020-06-14 09:08:08', '0', '2020-05-22 02:40:05', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(198, 1430.25, 433.563, 20.2344, 0, 89, 0, 15000, 'Garaj', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 332.624, 100, NULL, NULL, NULL, NULL, 0, '2020-06-15 19:34:26', '0', '2020-05-22 02:40:22', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(199, 1445.17, 425.339, 20.233, 0, 247, 1, 15000, 'Garaj', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 330.861, 100, NULL, NULL, NULL, NULL, 0, '2020-06-16 19:09:23', '0', '2020-05-22 02:40:28', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(200, 1465.17, 413.709, 20.2568, 0, 201, 0, 42000, 'Casa', 2, 226.48, 1239.87, 1082.14, 0, 0, 90, 337.914, 100, NULL, NULL, NULL, NULL, 0, '2020-06-11 17:44:06', '0', '2020-05-22 02:40:35', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(201, 1460.31, 417.994, 20.2344, 0, 32, 0, 15000, 'Garaj', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 335.563, 100, NULL, NULL, NULL, NULL, 0, '2020-06-18 14:57:08', '0', '2020-05-22 02:40:39', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(202, 1479.39, 406.581, 20.6313, 0, -1, 1, 38000, 'Casa', 1, 223.22, 1287.17, 1082.14, 0, 0, 0, 345.55, 100, NULL, NULL, NULL, NULL, 0, '2020-06-04 10:39:43', '0', '2020-05-22 02:40:46', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(203, 1486.05, 408.593, 20.2344, 0, 101, 0, 15000, 'Garaj', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 338.497, 100, NULL, NULL, NULL, NULL, 0, '2020-06-14 07:15:15', '0', '2020-05-22 02:40:49', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(204, 2024.71, 299.957, 27.2243, 0, 11, 0, 47000, 'Casa', 8, -42.65, 1405.46, 1084.42, 0, 0, 0, 120.514, 100, NULL, NULL, NULL, NULL, 0, '2020-06-12 17:05:37', '0', '2020-05-22 02:41:09', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(205, 2019, 302.715, 27.4036, 0, 79, 0, 15000, 'Garaj', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 120.484, 100, NULL, NULL, NULL, NULL, 0, '2020-06-09 20:34:51', '0', '2020-05-22 02:41:11', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(206, 2046.06, 298.53, 26.9662, 0, -1, 1, 54000, 'Casa', 4, 261.14, 1284.56, 1080.25, 0, 0, 0, 301.483, 100, NULL, NULL, NULL, NULL, 0, '2020-06-08 22:42:36', '0', '2020-05-22 02:41:18', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(207, 2043.02, 299.689, 26.6312, 0, 79, 0, 15000, 'Garaj', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 293.254, 100, NULL, NULL, NULL, NULL, 0, '2020-06-12 11:40:23', '0', '2020-05-22 02:41:21', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(208, 2046.24, 257.402, 25.5061, 0, 17, 0, 42000, 'Casa', 2, 226.48, 1239.87, 1082.14, 0, 0, 90, 129.913, 100, NULL, NULL, NULL, NULL, 0, '2020-06-10 13:22:45', '0', '2020-05-22 02:41:27', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(209, 2043.02, 261.619, 25.4681, 0, 17, 0, 15000, 'Garaj', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 119.338, 100, NULL, NULL, NULL, NULL, 0, '2020-06-10 13:23:37', '0', '2020-05-22 02:41:29', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(210, 2058.86, 267.065, 25.4312, 0, -1, 1, 38000, 'Casa', 1, 223.22, 1287.17, 1082.14, 0, 0, 0, 305.01, 100, NULL, NULL, NULL, NULL, 0, '2020-05-28 21:22:43', '0', '2020-05-22 02:41:35', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(211, 2058.89, 273.621, 25.5217, 0, -1, 1, 15000, 'Garaj', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 302.071, 100, NULL, NULL, NULL, NULL, 0, '2020-06-01 18:15:07', '0', '2020-05-22 02:41:39', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(212, 2069.26, 244.975, 24.9627, 0, -1, 1, 47000, 'Casa', 8, -42.65, 1405.46, 1084.42, 0, 0, 0, 162.229, 100, NULL, NULL, NULL, NULL, 0, '2020-06-01 15:44:19', '0', '2020-05-22 02:41:54', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(213, 2063.46, 243.524, 25.2361, 0, -1, 1, 15000, 'Garaj', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 169.277, 100, NULL, NULL, NULL, NULL, 0, '2020-06-03 11:05:54', '0', '2020-05-22 02:42:00', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(214, 2079.94, 260.284, 24.3903, 0, 235, 0, 54000, 'Casa', 4, 261.14, 1284.56, 1080.25, 0, 0, 0, 348.489, 100, NULL, NULL, NULL, NULL, 0, '2020-06-15 19:05:14', '0', '2020-05-22 02:42:06', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(215, 2083.11, 262.059, 23.5422, 0, 15, 0, 15000, 'Garaj', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 349.077, 100, NULL, NULL, NULL, NULL, 0, '2020-06-09 10:45:34', '0', '2020-05-22 02:42:10', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(216, 2415.11, 111.487, 26.7567, 0, 184, 0, 38000, 'Casa', 1, 223.22, 1287.17, 1082.14, 0, 0, 0, 3.17783, 100, NULL, NULL, NULL, NULL, 0, '2020-06-08 23:35:51', '0', '2020-05-22 02:42:21', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(217, 1475.73, -675.275, 94.75, 0, 14, 0, 0, 'Casa Donator 10 Euro - Mawasi Gabriel', 7, 225.71, 1021.44, 1084.01, 0, 0, 0, 88.7352, 100, 235.822, 1045.73, 1083.51, 293.466, 0, '2020-06-15 12:52:46', '0', '2020-05-22 02:48:35', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL);
INSERT INTO `interiors` (`id`, `x`, `y`, `z`, `type`, `owner`, `locked`, `cost`, `name`, `interior`, `interiorx`, `interiory`, `interiorz`, `dimensionwithin`, `interiorwithin`, `angle`, `angleexit`, `supplies`, `safepositionX`, `safepositionY`, `safepositionZ`, `safepositionRZ`, `disabled`, `lastused`, `deleted`, `createdDate`, `creator`, `isLightOn`, `keypad_lock`, `keypad_lock_pw`, `keypad_lock_auto`, `uploaded_interior`, `faction`, `protected_until`) VALUES
(218, 2142.22, 48.2148, 26.7313, 0, 143, 0, 47000, 'Casa', 8, -42.65, 1405.46, 1084.42, 0, 0, 0, 358.607, 100, NULL, NULL, NULL, NULL, 0, '2020-06-11 12:16:10', '0', '2020-05-22 02:53:17', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(219, 2137.02, 53.0137, 26.5113, 0, 143, 0, 15000, 'Garaj', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 358.607, 100, NULL, NULL, NULL, NULL, 0, '2020-06-16 13:47:11', '0', '2020-05-22 02:53:21', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(220, 2159.75, 49.9834, 26.8332, 0, 8, 0, 54000, 'Casa', 4, 261.14, 1284.56, 1080.25, 0, 0, 0, 4.47974, 100, NULL, NULL, NULL, NULL, 0, '2020-06-08 22:36:28', '0', '2020-05-22 02:53:45', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(221, 2153.57, 52.8145, 26.5001, 0, 8, 0, 15000, 'Garaj', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 359.783, 100, NULL, NULL, NULL, NULL, 0, '2020-06-16 15:18:10', '0', '2020-05-22 02:53:49', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(222, 2256.3, 168.334, 27.4766, 0, 140, 1, 15000, 'Garaj', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 357.366, 100, NULL, NULL, NULL, NULL, 0, '2020-06-09 12:40:58', '0', '2020-05-22 02:55:19', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(223, 626.965, -571.739, 17.9207, 2, 0, 0, 0, 'SecÈ›ia 1 PoliÈ›ie (RuralÄƒ Red County)', 6, 246.85, 62.49, 1003.64, 0, 0, 0, 94.7777, 100, NULL, NULL, NULL, NULL, 0, '2020-06-16 09:11:23', '0', '2020-05-22 08:55:20', 'TovarasuFlor', 0, NULL, NULL, NULL, NULL, 0, NULL),
(224, 242.546, 66.2832, 1003.64, 2, 0, 0, 0, 'Compartiment Administrativ', 56, 2132.87, -1638.89, 389.733, 223, 6, 0, 98.689, 999999, NULL, NULL, NULL, NULL, 0, '2020-06-16 09:10:32', '0', '2020-05-22 09:02:09', 'TovarasuFlor', 0, NULL, NULL, NULL, NULL, 0, NULL),
(225, 1335.91, 410.666, 19.7554, 2, 0, 0, 0, 'Postul politiei MontGomery', 6, 246.85, 62.49, 1003.64, 0, 0, 0, 63.3289, 100, NULL, NULL, NULL, NULL, 0, '2020-06-16 17:48:37', '0', '2020-05-22 09:06:01', 'TovarasuFlor', 0, NULL, NULL, NULL, NULL, 0, NULL),
(226, 254.735, -1366.91, 53.1094, 0, 2, 1, 0, 'CasÄƒ', 9, 2317.81, -1026.55, 1050.21, 0, 0, 0, 128.1, 100, NULL, NULL, NULL, NULL, 0, '2020-06-07 08:12:31', 'adyady321', '2020-05-22 09:47:00', 'TovarasuFlor', 0, NULL, NULL, NULL, NULL, 0, NULL),
(227, 244.558, -1356.18, 53.1094, 0, -1, 1, 15000, 'Garaj', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 138.542, 100, NULL, NULL, NULL, NULL, 0, '2020-06-08 07:23:57', 'adyady321', '2020-05-22 09:48:10', 'TovarasuFlor', 0, NULL, NULL, NULL, NULL, 0, NULL),
(228, 2256.76, -44.6465, 26.8834, 2, 0, 0, 0, 'BisericÄƒ', 20, 1412.26, 1525.49, 1542.8, 0, 0, 0, 171.777, 100, NULL, NULL, NULL, NULL, 0, '2020-06-17 10:05:12', '0', '2020-05-22 09:49:06', 'TovarasuFlor', 0, NULL, NULL, NULL, NULL, 0, NULL),
(229, 1332.23, -633.463, 109.135, 0, 4, 0, 100000, 'VILA', 3, 235.44, 1186.83, 1080.25, 0, 0, 0, 198.968, 100, NULL, NULL, NULL, NULL, 0, '2020-06-12 18:35:41', '0', '2020-05-22 11:03:32', 'Stefanxd', 0, NULL, NULL, NULL, NULL, 0, NULL),
(230, 1351.23, -626.884, 109.133, 0, 4, 0, 15000, 'Garaj', 3, 620.01, -119.85, 998.84, 0, 0, 180, 210.872, 100, NULL, NULL, NULL, NULL, 0, '2020-06-12 18:35:31', '0', '2020-05-22 11:05:45', 'Stefanxd', 0, NULL, NULL, NULL, NULL, 0, NULL),
(231, 2331.33, -37.958, 26.4844, 1, 126, 0, 75000, 'Magazin General', 17, -25.91, -188.05, 1003.54, 0, 0, 0, 175.721, 999999, NULL, NULL, NULL, NULL, 0, '2020-06-17 14:35:22', '0', '2020-05-22 14:03:49', 'TovarasuFlor', 0, NULL, NULL, NULL, NULL, 0, NULL),
(232, 2332.97, -17.3281, 26.4844, 1, 4, 0, 50000, 'Restaurant', 5, 372.18, -133.28, 1001.49, 0, 0, 0, 45.9922, 999999, NULL, NULL, NULL, NULL, 0, '2020-06-17 12:49:47', '0', '2020-05-22 14:08:42', 'TovarasuFlor', 0, NULL, NULL, NULL, NULL, 0, NULL),
(233, 2333.08, 61.5986, 26.7058, 1, 4, 0, 150000, 'Magazin Arme & MuniÈ›ii', 1, 285.39, -41.44, 1001.51, 0, 0, 0, 91.0533, 999999, NULL, NULL, NULL, NULL, 0, '2020-06-18 11:55:16', '0', '2020-05-22 14:10:35', 'TovarasuFlor', 0, NULL, NULL, NULL, NULL, 0, NULL),
(234, 1367.53, 248.384, 19.5669, 1, 1, 0, 120000, 'Restaurant', 5, 372.18, -133.28, 1001.49, 0, 0, 0, 243.48, 999999, NULL, NULL, NULL, NULL, 0, '2020-06-18 08:30:11', '0', '2020-05-22 14:14:42', 'TovarasuFlor', 0, NULL, NULL, NULL, NULL, 0, NULL),
(235, 2277.05, 21.5262, 26.6, 1, 58, 0, 90000, 'BenzinÄƒrie', 4, -27.3, -31.41, 1003.55, 0, 0, 0, 262.618, 999999, NULL, NULL, NULL, NULL, 0, '2020-06-17 08:03:52', '0', '2020-05-22 14:16:51', 'TovarasuFlor', 0, NULL, NULL, NULL, NULL, 0, NULL),
(236, 2333.28, 18.7793, 26.4844, 1, 58, 0, 100000, 'Magazin de Haine', 18, 161.46, -96.72, 1001.8, 0, 0, 0, 94.3932, 999999, NULL, NULL, NULL, NULL, 0, '2020-06-16 15:46:50', '0', '2020-05-22 14:20:29', 'TovarasuFlor', 0, NULL, NULL, NULL, NULL, 0, NULL),
(237, 2318.73, -88.6582, 26.4844, 1, 58, 0, 100000, 'Magazin Mixt', 10, 6.05, -31.27, 1003.54, 0, 0, 0, 357.932, 999999, NULL, NULL, NULL, NULL, 0, '2020-06-17 14:30:29', '0', '2020-05-22 14:21:44', 'TovarasuFlor', 0, NULL, NULL, NULL, NULL, 0, NULL),
(238, 2333.15, -67.4688, 26.4844, 1, 126, 0, 95000, 'Magazin General', 18, -31.02, -91.92, 1003.54, 0, 0, 0, 90.4546, 999999, NULL, NULL, NULL, NULL, 0, '2020-06-15 10:47:47', '0', '2020-05-22 14:28:21', 'TovarasuFlor', 0, NULL, NULL, NULL, NULL, 0, NULL),
(239, 2332.78, 31.001, 26.6752, 1, 2, 0, 90000, 'Bar', 1, -794.98, 489.78, 1376.2, 0, 0, 0, 90.7512, 999999, NULL, NULL, NULL, NULL, 0, '2020-06-16 15:43:07', '0', '2020-05-22 14:33:58', 'TovarasuFlor', 0, NULL, NULL, NULL, NULL, 0, NULL),
(240, 2331.96, 75.1348, 26.621, 1, 126, 0, 86000, 'Fast Food', 10, 362.88, -75.11, 1001.5, 0, 0, 315, 91.6136, 999999, NULL, NULL, NULL, NULL, 0, '2020-06-18 11:54:19', '0', '2020-05-22 14:41:23', 'TovarasuFlor', 0, NULL, NULL, NULL, NULL, 0, NULL),
(241, 2305.79, 82.3926, 26.4787, 1, 17, 0, 88500, 'Magazin Electronice', 3, 1494.28, 1303.91, 1093.28, 0, 0, 0, 171.865, 999999, NULL, NULL, NULL, NULL, 0, '2020-06-18 13:32:20', '0', '2020-05-22 14:47:52', 'TovarasuFlor', 0, NULL, NULL, NULL, NULL, 0, NULL),
(242, 2273.7, 82.043, 26.4844, 1, -1, 1, 150000, 'DiscotecÄƒ', 17, 493.34, -24.48, 1000.67, 0, 0, 0, 177.435, 100, NULL, NULL, NULL, NULL, 0, NULL, 'TovarasuFlor', '2020-05-22 14:52:32', 'TovarasuFlor', 0, NULL, NULL, NULL, NULL, 0, NULL),
(243, 2273.6, 82.043, 26.4844, 1, 14, 0, 150000, 'DiscotecÄƒ', 2, 1204.81, -13.6, 1000.92, 0, 0, 0, 181.483, 100, NULL, NULL, NULL, NULL, 0, '2020-06-06 09:53:44', '0', '2020-05-22 15:03:39', 'TovarasuFlor', 0, NULL, NULL, NULL, NULL, 0, NULL),
(244, 1504.26, 1521.48, 10.8316, 1, -1, 1, 10, 'test', 3, 975.26, -8.64, 1001.14, 0, 0, 90, 45.0694, 100, NULL, NULL, NULL, NULL, 0, NULL, 'Stefanxd', '2020-05-22 16:15:52', 'Stefanxd', 0, NULL, NULL, NULL, NULL, 0, NULL),
(245, 1241.58, 325.796, 19.7555, 0, -1, 0, 0, 'Spital', 10, 1564.16, 1799.51, 2083.41, 0, 0, 271, 150.633, 100, NULL, NULL, NULL, NULL, 0, '2020-06-18 10:15:54', '0', '2020-05-22 18:25:51', 'TovarasuFlor', 0, NULL, NULL, NULL, NULL, 2, NULL),
(246, 246.401, 72.0029, 1003.64, 2, 0, 0, 0, 'Birou È˜ef de Post', 42, -2145.62, 646.929, 1206.49, 223, 6, 270, 357.827, 100, NULL, NULL, NULL, NULL, 0, '2020-06-16 09:11:09', '0', '2020-05-22 18:44:23', 'TovarasuFlor', 0, NULL, NULL, NULL, NULL, 0, NULL),
(247, 242.249, 66.3828, 1003.64, 2, 0, 0, 0, 'SalÄƒ de È™edinÈ›e', 18, -18.2, -139.9, 1043.9, 225, 6, 180, 99.1394, 100, NULL, NULL, NULL, NULL, 0, '2020-06-15 19:18:40', '0', '2020-05-22 18:48:49', 'TovarasuFlor', 0, NULL, NULL, NULL, NULL, 0, NULL),
(248, 246.383, 72.165, 1003.64, 2, 0, 0, 0, 'Birou AdministraÈ›ie', 42, -2145.62, 646.929, 1206.49, 225, 6, 270, 359.734, 100, NULL, NULL, NULL, NULL, 0, '2020-06-07 11:39:43', 'TovarasuFlor', '2020-05-22 18:49:40', 'TovarasuFlor', 0, NULL, NULL, NULL, NULL, 0, NULL),
(249, 1331.61, 419.074, 19.7604, 2, 0, 0, 0, 'Centru de ReÈ›inere È™i Arest Preventiv', 5, 322.24, 302.45, 999.14, 0, 0, 0, 241.338, 100, NULL, NULL, NULL, NULL, 0, '2020-06-18 11:47:18', '0', '2020-05-22 18:52:10', 'TovarasuFlor', 0, NULL, NULL, NULL, NULL, 0, NULL),
(250, 1110.01, -299.066, 74.5, 0, -1, 1, 10, 'Vestiar', 3, -2029.61, -119.36, 1035.17, 0, 0, 0, 271.671, 100, NULL, NULL, NULL, NULL, 0, NULL, 'Stefanxd', '2020-05-22 19:23:02', 'Stefanxd', 0, NULL, NULL, NULL, NULL, 0, NULL),
(251, 1110.2, -298.882, 74.5, 2, -1, 0, 0, 'Vestiar', 3, -2029.61, -119.36, 1035.17, 0, 0, 0, 271.671, 100, NULL, NULL, NULL, NULL, 0, '2020-06-18 13:00:10', '0', '2020-05-22 19:23:58', 'Stefanxd', 0, NULL, NULL, NULL, NULL, 4, NULL),
(252, 1108, -316.038, 74, 2, 0, 0, 0, 'Birou-Patron', 5, 1104.17, -778.245, 976.252, 0, 0, 0, 182.659, 100, NULL, NULL, NULL, NULL, 0, '2020-06-12 17:51:48', '0', '2020-05-22 19:29:39', 'Stefanxd', 0, NULL, NULL, NULL, NULL, 0, NULL),
(253, 249.605, -1363.38, 53.1094, 0, -1, 1, 5000, 'Garaj', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 123.238, 100, NULL, NULL, NULL, NULL, 0, NULL, 'adyady321', '2020-05-22 20:21:33', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(254, 1404.75, 238.841, 19.5547, 2, 0, 0, 0, 'Scoala Auto - Permise', 3, 1494.28, 1303.91, 1093.28, 0, 0, 0, 245.425, 100, NULL, NULL, NULL, NULL, 0, '2020-06-18 13:39:03', '0', '2020-05-22 20:59:21', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(255, 1401.1, 230.502, 19.5469, 2, 0, 0, 0, 'Scoala Auto - Inmatriculari si Acte de vanzare', 3, -2029.61, -119.36, 1035.17, 0, 0, 0, 244.837, 100, NULL, NULL, NULL, NULL, 0, '2020-06-17 16:05:23', '0', '2020-05-22 21:00:32', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(256, 681.503, -473.347, 16.5363, 1, 2, 0, 50000, 'Bar', 12, 1133.25, -15.26, 1000.67, 0, 0, 0, 356.591, 999999, NULL, NULL, NULL, NULL, 0, '2020-06-13 16:34:52', '0', '2020-05-23 17:02:40', 'TovarasuFlor', 0, NULL, NULL, NULL, NULL, 0, NULL),
(257, 1374.16, 405.061, 19.9555, 2, -1, 0, 0, 'Sediu Taxi', 56, 2132.87, -1638.89, 389.733, 0, 0, 0, 251.368, 100, NULL, NULL, NULL, NULL, 0, '2020-06-17 15:04:52', '0', '2020-05-25 18:54:39', 'TovarasuFlor', 0, NULL, NULL, NULL, NULL, 6, NULL),
(258, 2124.78, -1612.35, 389.733, 2, -1, 0, 0, 'Vestiar', 14, 254.46, -41.6, 1002.02, 257, 56, 270, 1.2717, 100, NULL, NULL, NULL, NULL, 0, '2020-06-17 15:02:11', '0', '2020-05-25 18:56:26', 'Stefanxd', 0, NULL, NULL, NULL, NULL, 6, NULL),
(259, 1302.63, 305.661, 19.5614, 1, -1, 1, 86342, 'Magazin de haine', 14, 204.44, -168.58, 1000.52, 0, 0, 0, 64.2518, 999999, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-05-26 15:59:17', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(260, 827.798, -857.996, 70.3308, 0, 79, 1, 50000, 'CasÄƒ', 9, 260.67, 1237.32, 1084.25, 0, 0, 0, 16.834, 100, NULL, NULL, NULL, NULL, 0, '2020-06-11 14:31:16', '0', '2020-05-26 18:09:22', 'TovarasuFlor', 0, NULL, NULL, NULL, NULL, 0, NULL),
(261, 2149.01, -1623.92, 389.733, 2, 0, 0, 0, 'Garaj PoliÈ›ie', 1, 1105.9, -1312.8, 79.0625, 224, 56, 0, 268.211, 100, NULL, NULL, NULL, NULL, 0, '2020-06-15 17:05:30', '0', '2020-05-27 08:31:41', 'TovarasuFlor', 0, NULL, NULL, NULL, NULL, 0, NULL),
(262, 1233.35, 179.191, 20.4069, 2, 0, 0, 0, 'Garaj Public', 1, 1105.9, -1312.8, 79.0625, 0, 0, 0, 156.264, 100, NULL, NULL, NULL, NULL, 0, '2020-06-16 19:14:32', '0', '2020-05-27 08:59:08', 'TovarasuFlor', 0, NULL, NULL, NULL, NULL, 0, NULL),
(263, 1520.49, -671.156, 94.75, 0, 14, 0, 5000, 'Garaj', 56, 1914.86, -2386.42, 13.5669, 0, 0, 270, 269.881, 100, NULL, NULL, NULL, NULL, 0, '2020-06-15 12:42:32', '0', '2020-05-27 12:40:46', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(264, 2269.72, -74.1611, 26.7724, 2, 0, 0, 0, 'PrimÄƒrie', 42, -2145.62, 646.929, 1206.49, 0, 0, 270, 1.431, 100, NULL, NULL, NULL, NULL, 0, '2020-06-18 11:34:42', '0', '2020-05-27 12:51:13', 'TovarasuFlor', 0, NULL, NULL, NULL, NULL, 0, NULL),
(265, 1235.71, 301.942, 19.6801, 2, 0, 0, 0, 'Garaj SMURD', 1, 1105.9, -1312.8, 79.0625, 0, 0, 0, 239.157, 100, NULL, NULL, NULL, NULL, 0, '2020-06-17 11:56:54', '0', '2020-05-28 11:08:22', 'TovarasuFlor', 0, NULL, NULL, NULL, NULL, 0, NULL),
(266, 265.002, -2036.42, 3084.75, 2, 0, 0, 0, 'EVENT TANK', 15, -1424.42, 928.36, 1036.39, 0, 0, 350, 3.89746, 100, NULL, NULL, NULL, NULL, 0, '2020-06-11 12:43:12', '0', '2020-05-29 15:40:11', 'Stefanxd', 0, NULL, NULL, NULL, NULL, 0, NULL),
(267, 1085.99, -643.928, 113.502, 0, 126, 1, 5000, 'Garaj', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 89.1801, 100, NULL, NULL, NULL, NULL, 0, '2020-06-17 10:54:27', '0', '2020-05-29 18:53:59', 'TovarasuFlor', 0, NULL, NULL, NULL, NULL, 0, NULL),
(268, 1094.87, -647.78, 113.648, 0, 126, 1, 80000, 'CasÄƒ', 9, 83, 1322.48, 1083.86, 0, 0, 0, 185.79, 100, NULL, NULL, NULL, NULL, 0, '2020-06-12 11:38:08', '0', '2020-05-29 18:54:19', 'TovarasuFlor', 0, NULL, NULL, NULL, NULL, 0, NULL),
(269, 267.311, -2036.15, 3084.75, 3, 58, 0, 0, 'CS GO', 10, -1128.64, 1066.33, 1345.74, 0, 0, 270, 355.284, 100, NULL, NULL, NULL, NULL, 0, '2020-06-09 12:09:08', '0', '2020-05-31 11:16:42', 'TovarasuFlor', 0, NULL, NULL, NULL, NULL, 0, NULL),
(270, 1122.71, -2037.19, 69.8942, 2, 0, 0, 0, 'Casino Royale', 10, 2019.02, 1017.93, 996.87, 0, 0, 90, 84.3461, 999999, NULL, NULL, NULL, NULL, 0, '2020-06-02 17:44:36', '0', '2020-05-31 18:55:24', 'TovarasuFlor', 0, NULL, NULL, NULL, NULL, 0, NULL),
(271, 1416.88, 261.212, 19.5442, 0, -1, 0, 0, 'Sediu PRO TV', 56, 2132.87, -1638.89, 389.733, 0, 0, 0, 244.886, 100, NULL, NULL, NULL, NULL, 0, '2020-06-17 08:13:47', '0', '2020-06-02 17:58:04', 'TovarasuFlor', 0, NULL, NULL, NULL, NULL, 5, NULL),
(272, 1112.63, 1916.91, 10.8203, 2, 0, 0, 0, 'Garaj public', 1, 1105.9, -1312.8, 79.0625, 0, 0, 0, 266.711, 100, NULL, NULL, NULL, NULL, 0, '2020-06-16 12:00:14', '0', '2020-06-03 23:02:36', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(273, 2418.05, 111.412, 26.4766, 0, -1, 1, 15000, 'Garaj', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 2.62851, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-06-04 01:06:32', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(274, 1400.96, 391, 19.7578, 3, -1, 1, 15000, 'Garaj', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 158.45, 100, NULL, NULL, NULL, NULL, 0, NULL, 'adyady321', '2020-06-04 11:19:30', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(275, 1400.96, 390.995, 19.7578, 2, 0, 0, 0, 'Garaj Taxi', 56, 1914.86, -2386.42, 13.5669, 0, 0, 270, 158.043, 100, NULL, NULL, NULL, NULL, 0, '2020-06-17 15:05:05', '0', '2020-06-04 11:23:53', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(276, -2524.49, 1216.15, 37.6654, 2, 0, 1, 0, 'Night-Club', 3, 1212.18, -25.93, 1000.95, 0, 0, 180, 83.7748, 100, NULL, NULL, NULL, NULL, 0, '2020-06-04 20:21:42', '0', '2020-06-04 20:14:51', 'Stefanxd', 0, NULL, NULL, NULL, NULL, 0, NULL),
(277, 1051.06, -1059.3, 34.7966, 0, 157, 0, 55000, 'Casa', 5, 226.56, 1114.19, 1080.99, 0, 0, 270, 179.676, 100, NULL, NULL, NULL, NULL, 0, '2020-06-06 20:10:48', '0', '2020-06-06 20:10:25', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(278, 1037.66, -1059.04, 31.7031, 0, 157, 0, 15000, 'Garaj', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 179.676, 100, NULL, NULL, NULL, NULL, 0, '2020-06-16 14:21:19', '0', '2020-06-06 20:11:08', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(279, 269.56, -2036.28, 3084.75, 2, 0, 0, 0, 'Race', 7, -1409.35, -255.91, 1043.66, 0, 0, 250, 359.898, 100, NULL, NULL, NULL, NULL, 0, '2020-06-10 11:33:49', '0', '2020-06-09 11:43:40', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(280, 661.356, -573.485, 16.3359, 1, 85, 0, 56000, 'Benzinarie Dillimore', 18, -31.02, -91.92, 1003.54, 0, 0, 0, 271.435, 999999, NULL, NULL, NULL, NULL, 0, '2020-06-17 12:26:52', '0', '2020-06-10 15:35:30', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(281, 1222.41, 183.893, 20.418, 2, 0, 0, 0, 'Garaj Public', 1, 1105.9, -1312.8, 79.0625, 0, 0, 0, 154.385, 100, NULL, NULL, NULL, NULL, 0, '2020-06-18 11:23:53', '0', '2020-06-11 01:03:41', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(282, -49.8662, -269.368, 6.63319, 2, 0, 0, 100, 'Sediu SRI', 3, 299.393, 127.208, 1031.28, 0, 0, 271, 359.201, 100, NULL, NULL, NULL, NULL, 0, '2020-06-15 10:30:00', '0', '2020-06-12 09:10:20', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(283, -19.9697, -269.363, 5.42969, 2, 0, 0, 40415, 'Garaj', 56, 1914.86, -2386.42, 13.5669, 0, 0, 270, 1.66171, 100, NULL, NULL, NULL, NULL, 0, '2020-06-15 10:31:57', '0', '2020-06-12 10:19:15', 'adyady321', 0, NULL, NULL, NULL, NULL, 0, NULL),
(284, 1057.61, 1260.59, 10.8203, 2, 0, 0, 0, 'Fabrica de textile', 3, -2636.77, 1402.6, 906.46, 0, 0, 0, 88.8395, 100, NULL, NULL, NULL, NULL, 0, '2020-06-13 18:01:01', '0', '2020-06-13 16:15:06', 'Stefanxd', 0, NULL, NULL, NULL, NULL, 0, NULL),
(285, 1057.6, 1240.65, 10.8275, 2, -1, 0, 0, 'Garaj', 25, 1920.57, -2327.92, 13.75, 0, 0, 0, 93.5418, 100, NULL, NULL, NULL, NULL, 0, '2020-06-14 12:20:25', '0', '2020-06-13 16:22:47', 'Stefanxd', 0, NULL, NULL, NULL, NULL, 11, NULL),
(286, 1147.55, -167.323, 41.5931, 0, -1, 1, 15000, 'Garaj', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 49.5518, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-06-13 18:17:50', 'Stefanxd', 0, NULL, NULL, NULL, NULL, 0, NULL),
(287, 1134.45, -192.484, 41.9125, 0, -1, 1, 15000, 'Garaj', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 199.951, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-06-13 18:18:01', 'Stefanxd', 0, NULL, NULL, NULL, NULL, 0, NULL),
(288, 1130.08, -171.219, 41.8749, 0, -1, 1, 15000, 'Garaj', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 11.3023, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-06-13 18:18:30', 'Stefanxd', 0, NULL, NULL, NULL, NULL, 0, NULL),
(289, 1114.68, -175.53, 41.6958, 0, -1, 1, 15000, 'Garaj', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 37.9117, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-06-13 18:18:48', 'Stefanxd', 0, NULL, NULL, NULL, NULL, 0, NULL),
(290, 1114.45, -195.689, 41.6222, 0, -1, 1, 15000, 'Garaj', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 196.458, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-06-13 18:18:55', 'Stefanxd', 0, NULL, NULL, NULL, NULL, 0, NULL),
(291, 1097.64, -197.125, 40.9593, 0, -1, 1, 15000, 'Garaj', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 199.594, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-06-13 18:19:03', 'Stefanxd', 0, NULL, NULL, NULL, NULL, 0, NULL),
(292, 1103.09, -195.188, 41.5271, 0, -1, 1, 30000, 'Casa', 2, 446.97, 1397.22, 1084.3, 0, 0, 0, 192.074, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-06-13 18:19:23', 'Stefanxd', 0, NULL, NULL, NULL, NULL, 0, NULL),
(293, 1120, -191.425, 41.8767, 0, -1, 1, 30000, 'casa', 2, 446.97, 1397.22, 1084.3, 0, 0, 0, 170.766, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-06-13 18:20:41', 'Stefanxd', 0, NULL, NULL, NULL, NULL, 0, NULL),
(294, 1138.81, -188.68, 42.2341, 0, -1, 1, 30000, 'casa', 2, 446.97, 1397.22, 1084.3, 0, 0, 0, 194.579, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-06-13 18:20:49', 'Stefanxd', 0, NULL, NULL, NULL, NULL, 0, NULL),
(295, 1142.13, -172.075, 42.0322, 0, -1, 1, 40000, 'casa', 4, 261.14, 1284.56, 1080.25, 0, 0, 0, 8.79742, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-06-13 18:21:08', 'Stefanxd', 0, NULL, NULL, NULL, NULL, 0, NULL),
(296, 1125.87, -175.97, 42.333, 0, -1, 1, 40000, 'casa', 4, 261.14, 1284.56, 1080.25, 0, 0, 0, 0.310364, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-06-13 18:21:50', 'Stefanxd', 0, NULL, NULL, NULL, NULL, 0, NULL),
(297, 1108.63, -179.083, 41.7243, 0, -1, 1, 40000, 'casa', 4, 261.14, 1284.56, 1080.25, 0, 0, 0, 10.9673, 100, NULL, NULL, NULL, NULL, 0, NULL, '0', '2020-06-13 18:21:59', 'Stefanxd', 0, NULL, NULL, NULL, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `interior_business`
--

CREATE TABLE `interior_business` (
  `intID` int(11) NOT NULL,
  `businessNote` varchar(101) NOT NULL DEFAULT 'Welcome to our business!'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Saves info about businesses - Maxime';

-- --------------------------------------------------------

--
-- Table structure for table `interior_logs`
--

CREATE TABLE `interior_logs` (
  `log_id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `intID` int(11) DEFAULT NULL,
  `action` text DEFAULT NULL,
  `actor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Stores all admin actions on interiors - Monitored by Interio';

-- --------------------------------------------------------

--
-- Table structure for table `interior_notes`
--

CREATE TABLE `interior_notes` (
  `id` int(11) NOT NULL,
  `intid` int(11) NOT NULL,
  `creator` int(11) NOT NULL DEFAULT 0,
  `note` text NOT NULL,
  `date` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `interior_textures`
--

CREATE TABLE `interior_textures` (
  `id` int(11) NOT NULL,
  `interior` int(11) NOT NULL,
  `texture` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `index` int(10) UNSIGNED NOT NULL,
  `type` tinyint(3) UNSIGNED NOT NULL,
  `owner` int(10) UNSIGNED NOT NULL,
  `itemID` int(10) NOT NULL,
  `itemValue` text NOT NULL,
  `protected` int(100) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jailed`
--

CREATE TABLE `jailed` (
  `id` int(11) NOT NULL,
  `charid` int(11) NOT NULL,
  `charactername` text NOT NULL,
  `jail_time` bigint(12) NOT NULL,
  `convictionDate` datetime DEFAULT NULL,
  `updatedBy` text NOT NULL,
  `charges` text NOT NULL,
  `cell` text NOT NULL,
  `fine` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `jobID` int(11) NOT NULL DEFAULT 0,
  `jobCharID` int(11) NOT NULL DEFAULT -1,
  `jobLevel` int(11) NOT NULL DEFAULT 1,
  `jobProgress` int(11) NOT NULL DEFAULT 0,
  `jobTruckingRuns` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Saves job info, skill level and progress - Maxime' ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `jobs_trucker_orders`
--

CREATE TABLE `jobs_trucker_orders` (
  `orderID` int(11) NOT NULL,
  `orderX` float NOT NULL DEFAULT 0,
  `orderY` float NOT NULL DEFAULT 0,
  `orderZ` float NOT NULL DEFAULT 0,
  `orderWeight` int(11) NOT NULL DEFAULT 0,
  `orderName` text NOT NULL,
  `orderInterior` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Saves info about customer orders to create markers for truck';

-- --------------------------------------------------------

--
-- Table structure for table `leo_impound_lot`
--

CREATE TABLE `leo_impound_lot` (
  `lane` int(11) NOT NULL,
  `x` float NOT NULL,
  `y` float NOT NULL,
  `z` float NOT NULL,
  `rx` float NOT NULL,
  `ry` float NOT NULL,
  `rz` float NOT NULL,
  `int` float NOT NULL,
  `dim` float NOT NULL,
  `faction` int(11) NOT NULL,
  `veh` int(11) NOT NULL DEFAULT 0,
  `fine` int(11) NOT NULL DEFAULT 0,
  `release_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lifts`
--

CREATE TABLE `lifts` (
  `id` int(11) NOT NULL,
  `disabled` tinyint(1) NOT NULL DEFAULT 0,
  `comment` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lift_floors`
--

CREATE TABLE `lift_floors` (
  `id` int(11) NOT NULL,
  `lift` int(11) NOT NULL,
  `x` float(10,6) DEFAULT 0.000000,
  `y` float(10,6) DEFAULT 0.000000,
  `z` float(10,6) DEFAULT 0.000000,
  `dimension` int(5) DEFAULT 0,
  `interior` int(5) DEFAULT 0,
  `floor` varchar(3) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lottery`
--

CREATE TABLE `lottery` (
  `characterid` int(255) NOT NULL,
  `ticketnumber` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `maps_names`
--

CREATE TABLE `maps_names` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `state` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `maps_objects`
--

CREATE TABLE `maps_objects` (
  `id` int(11) NOT NULL,
  `mapID` int(11) NOT NULL,
  `model` int(11) NOT NULL,
  `x` float NOT NULL,
  `y` float NOT NULL,
  `z` float NOT NULL,
  `rx` float NOT NULL,
  `ry` float NOT NULL,
  `rz` float NOT NULL,
  `interior` int(11) NOT NULL,
  `dimension` int(11) NOT NULL,
  `alpha` int(11) NOT NULL,
  `doublesided` int(11) NOT NULL,
  `breakable` int(11) NOT NULL,
  `scale` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `maps_removes`
--

CREATE TABLE `maps_removes` (
  `id` int(11) NOT NULL,
  `mapID` int(11) NOT NULL,
  `radius` int(11) NOT NULL,
  `interior` int(11) NOT NULL,
  `model` int(11) NOT NULL,
  `lodModel` int(11) NOT NULL,
  `x` float NOT NULL,
  `y` float NOT NULL,
  `z` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mdc_apb`
--

CREATE TABLE `mdc_apb` (
  `id` int(11) NOT NULL,
  `person_involved` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `doneby` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `organization` varchar(10) NOT NULL DEFAULT 'LSPD'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mdc_calls`
--

CREATE TABLE `mdc_calls` (
  `id` int(11) NOT NULL,
  `caller` varchar(50) NOT NULL,
  `number` varchar(10) NOT NULL,
  `description` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mdc_crimes`
--

CREATE TABLE `mdc_crimes` (
  `id` int(11) NOT NULL,
  `crime` varchar(255) NOT NULL,
  `punishment` varchar(255) NOT NULL,
  `character` int(11) NOT NULL,
  `officer` int(11) NOT NULL,
  `timestamp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mdc_criminals`
--

CREATE TABLE `mdc_criminals` (
  `character` int(11) NOT NULL,
  `dob` varchar(10) NOT NULL DEFAULT 'mm/dd/yyyy',
  `ethnicity` varchar(50) NOT NULL DEFAULT 'Unknown',
  `phone` varchar(10) NOT NULL DEFAULT 'Unknown',
  `occupation` varchar(50) NOT NULL DEFAULT 'Unknown',
  `address` varchar(50) NOT NULL DEFAULT 'Unknown',
  `photo` int(11) NOT NULL DEFAULT -1,
  `details` varchar(255) NOT NULL DEFAULT 'None',
  `created_by` int(11) NOT NULL DEFAULT 0,
  `wanted` int(11) NOT NULL DEFAULT 0,
  `wanted_by` int(11) NOT NULL DEFAULT 0,
  `wanted_details` varchar(255) DEFAULT NULL,
  `pilot_details` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mdc_faa_events`
--

CREATE TABLE `mdc_faa_events` (
  `id` int(11) NOT NULL,
  `crime` varchar(255) NOT NULL,
  `punishment` varchar(255) NOT NULL,
  `character` int(11) NOT NULL,
  `officer` int(11) NOT NULL,
  `timestamp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mdc_faa_licenses`
--

CREATE TABLE `mdc_faa_licenses` (
  `id` int(11) NOT NULL,
  `character` int(11) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `license` int(2) NOT NULL,
  `value` int(4) DEFAULT NULL,
  `officer` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mdc_impounds`
--

CREATE TABLE `mdc_impounds` (
  `id` int(11) NOT NULL,
  `veh` int(11) NOT NULL,
  `content` text DEFAULT NULL,
  `reporter` text DEFAULT NULL,
  `date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mdc_users`
--

CREATE TABLE `mdc_users` (
  `id` int(11) NOT NULL,
  `user` varchar(30) NOT NULL,
  `pass` varchar(30) NOT NULL,
  `level` int(11) NOT NULL,
  `organization` varchar(30) NOT NULL DEFAULT 'LSPD'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mdc_users`
--

INSERT INTO `mdc_users` (`id`, `user`, `pass`, `level`, `organization`) VALUES
(1, 'Admin111', 'admin111', 2, 'LSPD'),
(3, 'Alexandru Stefan', 'bogdan', 1, 'LSPD'),
(4, 'Francesco Fuccy', 'Ciprian2004', 2, 'LSPD'),
(6, 'Kenny Andreas', 'pandora', 1, 'LSPD'),
(8, 'Nicolaie Andrei', 'VoteazaNico', 2, 'LSPD'),
(10, 'Popa Alexandru', '2974', 1, 'LSPD'),
(23, 'Rosu Sebastian', 'SebiR', 1, 'LSPD'),
(24, 'Kevin Henso', 'KevH', 1, 'LSPD');

-- --------------------------------------------------------

--
-- Table structure for table `motds`
--

CREATE TABLE `motds` (
  `id` int(11) NOT NULL,
  `title` varchar(70) NOT NULL,
  `content` text NOT NULL,
  `creation_date` datetime DEFAULT NULL,
  `expiration_date` datetime DEFAULT NULL,
  `author` int(11) DEFAULT NULL,
  `dismissable` tinyint(1) NOT NULL DEFAULT 1,
  `audiences` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `motds`
--

INSERT INTO `motds` (`id`, `title`, `content`, `creation_date`, `expiration_date`, `author`, `dismissable`, `audiences`) VALUES
(1, 'Bun venit!', 'Bun venit pe server-ul Romania Epoch Roleplay!\nPentru a dispune de locatiile tuturor job-urilor, tasteaza /gps.\nDiscord:    https://discord.gg/tPb5dMz\n', NULL, '2020-06-05 22:57:12', 2, 1, '[ [ [ 0, 0 ], [ 1, 2 ] ] ]');

-- --------------------------------------------------------

--
-- Table structure for table `motd_read`
--

CREATE TABLE `motd_read` (
  `id` int(11) NOT NULL,
  `motdid` int(11) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Note down everyone that read and dismissed the motd.';

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `title` text DEFAULT NULL,
  `details` text DEFAULT NULL,
  `date` timestamp NULL DEFAULT current_timestamp(),
  `read` tinyint(1) NOT NULL DEFAULT 0,
  `offline_pm` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `objects`
--

CREATE TABLE `objects` (
  `id` int(11) NOT NULL,
  `model` int(6) NOT NULL DEFAULT 0,
  `posX` float(12,7) NOT NULL DEFAULT 0.0000000,
  `posY` float(12,7) NOT NULL DEFAULT 0.0000000,
  `posZ` float(12,7) NOT NULL DEFAULT 0.0000000,
  `rotX` float(12,7) NOT NULL DEFAULT 0.0000000,
  `rotY` float(12,7) NOT NULL DEFAULT 0.0000000,
  `rotZ` float(12,7) NOT NULL DEFAULT 0.0000000,
  `interior` int(5) NOT NULL,
  `dimension` int(5) NOT NULL,
  `comment` varchar(50) DEFAULT NULL,
  `solid` int(1) NOT NULL DEFAULT 1,
  `doublesided` int(1) NOT NULL DEFAULT 0,
  `scale` float(12,7) DEFAULT NULL,
  `breakable` int(1) NOT NULL DEFAULT 0,
  `alpha` int(11) NOT NULL DEFAULT 255
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(6) NOT NULL,
  `txnid` varchar(20) NOT NULL,
  `payment_amount` decimal(7,2) NOT NULL,
  `payment_status` varchar(25) NOT NULL,
  `itemid` varchar(25) NOT NULL,
  `createdtime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `paynspray`
--

CREATE TABLE `paynspray` (
  `id` int(11) NOT NULL,
  `x` decimal(10,6) DEFAULT 0.000000,
  `y` decimal(10,6) DEFAULT 0.000000,
  `z` decimal(10,6) DEFAULT 0.000000,
  `dimension` int(5) DEFAULT 0,
  `interior` int(5) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `pd_tickets`
--

CREATE TABLE `pd_tickets` (
  `id` int(11) NOT NULL,
  `vehid` int(11) NOT NULL,
  `reason` text NOT NULL,
  `amount` int(11) NOT NULL,
  `issuer` int(11) DEFAULT NULL,
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `peds`
--

CREATE TABLE `peds` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `behaviour` int(3) DEFAULT 1,
  `x` float NOT NULL,
  `y` float NOT NULL,
  `z` float NOT NULL,
  `rotation` float NOT NULL,
  `interior` int(5) NOT NULL,
  `dimension` int(5) NOT NULL,
  `skin` int(1) DEFAULT NULL,
  `money` bigint(20) NOT NULL DEFAULT 0,
  `gender` int(1) DEFAULT NULL,
  `stats` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `owner_type` int(1) NOT NULL DEFAULT 0,
  `owner` int(11) DEFAULT NULL,
  `animation` varchar(255) DEFAULT NULL,
  `synced` tinyint(1) NOT NULL DEFAULT 0,
  `nametag` tinyint(1) NOT NULL DEFAULT 1,
  `frozen` tinyint(1) NOT NULL DEFAULT 0,
  `comment` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ped_inventory`
--

CREATE TABLE `ped_inventory` (
  `index` int(10) UNSIGNED NOT NULL,
  `type` tinyint(3) UNSIGNED NOT NULL,
  `owner` int(10) UNSIGNED NOT NULL,
  `itemID` int(10) NOT NULL,
  `itemValue` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ped_mission`
--

CREATE TABLE `ped_mission` (
  `char_id` int(11) NOT NULL,
  `mission` varchar(255) NOT NULL,
  `value` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `phones`
--

CREATE TABLE `phones` (
  `phonenumber` int(1) NOT NULL,
  `turnedon` smallint(1) NOT NULL DEFAULT 1,
  `secretnumber` smallint(1) NOT NULL DEFAULT 0,
  `phonebook` varchar(40) NOT NULL DEFAULT '0',
  `ringtone` smallint(1) NOT NULL DEFAULT 3,
  `contact_limit` int(5) NOT NULL DEFAULT 50,
  `boughtby` int(11) NOT NULL DEFAULT -1,
  `bought_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `sms_tone` smallint(1) NOT NULL DEFAULT 7,
  `keypress_tone` smallint(1) NOT NULL DEFAULT 1,
  `tone_volume` smallint(2) NOT NULL DEFAULT 10
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `phone_contacts`
--

CREATE TABLE `phone_contacts` (
  `id` int(11) NOT NULL,
  `phone` bigint(20) NOT NULL,
  `entryName` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `entryNumber` bigint(20) NOT NULL,
  `entryEmail` varchar(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `entryAddress` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `entryFavorited` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `phone_history`
--

CREATE TABLE `phone_history` (
  `id` int(11) NOT NULL,
  `from` bigint(20) NOT NULL,
  `to` bigint(20) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT 1,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `private` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phone_sms`
--

CREATE TABLE `phone_sms` (
  `id` int(11) NOT NULL,
  `from` bigint(20) NOT NULL,
  `to` bigint(20) NOT NULL,
  `content` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `viewed` tinyint(1) NOT NULL DEFAULT 0,
  `private` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pilot_notams`
--

CREATE TABLE `pilot_notams` (
  `id` int(11) NOT NULL,
  `information` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `publicphones`
--

CREATE TABLE `publicphones` (
  `id` int(10) UNSIGNED NOT NULL,
  `x` float NOT NULL,
  `y` float NOT NULL,
  `z` float NOT NULL,
  `dimension` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `radio_stations`
--

CREATE TABLE `radio_stations` (
  `id` int(11) NOT NULL,
  `station_name` text DEFAULT NULL,
  `source` text DEFAULT NULL,
  `owner` int(11) NOT NULL DEFAULT 0,
  `register_date` datetime DEFAULT NULL,
  `expire_date` datetime DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 1,
  `order` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Dynamic radio stations.';

--
-- Dumping data for table `radio_stations`
--

INSERT INTO `radio_stations` (`id`, `station_name`, `source`, `owner`, `register_date`, `expire_date`, `enabled`, `order`) VALUES
(1, 'Radio Manele', 'http://asculta.radiotaraf.com:7100/', 0, NULL, NULL, 1, 1),
(2, 'Radio Popular', 'http://mp3.radiopopular.ro:7777/;stream.mp3', 0, NULL, NULL, 1, 4),
(3, 'Radio ZU', 'http://stream.radiozu.ro:8020/', 0, NULL, NULL, 1, 3),
(4, 'Radio Lautaru', 'http://live.radiolautaru.ro:9000/', 0, NULL, NULL, 1, 4),
(5, 'Kiss FM', 'http://80.86.106.136/listen.pls', 0, NULL, NULL, 1, 5),
(6, 'Kiss FM', 'http://80.86.106.136:80/', 0, NULL, NULL, 1, 3),
(7, 'Radio 21', 'http://89.238.252.130:8000/listen.pls', 0, NULL, NULL, 1, 3),
(8, 'Radio NuttzuFM', 'http://cp.eu4.fastcast4u.com:2199/tunein/nuttzufm.pls', 0, NULL, NULL, 1, 8),
(9, 'Radio HitFM', 'http://live.radiohitfm.ro:8989', 0, NULL, NULL, 1, 2),
(10, 'Pro FM', 'http://stream.profm.ro:8012/profm.mp3', 0, NULL, NULL, 1, 10);

-- --------------------------------------------------------

--
-- Table structure for table `ramps`
--

CREATE TABLE `ramps` (
  `id` int(2) NOT NULL,
  `position` text DEFAULT NULL,
  `interior` int(2) DEFAULT NULL,
  `dimension` int(2) DEFAULT NULL,
  `rotation` int(5) DEFAULT NULL,
  `creator` text DEFAULT NULL,
  `state` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `restricted_freqs`
--

CREATE TABLE `restricted_freqs` (
  `id` int(11) NOT NULL,
  `frequency` text DEFAULT NULL,
  `limitedto` int(5) DEFAULT NULL,
  `addedby` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sapt_destinations`
--

CREATE TABLE `sapt_destinations` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `destinationID` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sapt_locations`
--

CREATE TABLE `sapt_locations` (
  `id` int(11) NOT NULL,
  `route` int(11) NOT NULL,
  `stopID` int(11) NOT NULL,
  `name` text NOT NULL,
  `posX` float NOT NULL,
  `posY` float NOT NULL,
  `posZ` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sapt_routes`
--

CREATE TABLE `sapt_routes` (
  `id` int(11) NOT NULL,
  `line` int(11) NOT NULL,
  `route` int(11) NOT NULL,
  `destination` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `serial_whitelist`
--

CREATE TABLE `serial_whitelist` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `serial` varchar(32) NOT NULL,
  `creation_date` timestamp NULL DEFAULT current_timestamp(),
  `last_login_ip` varchar(15) DEFAULT NULL,
  `last_login_date` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `name` text DEFAULT NULL,
  `value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `value`) VALUES
(0, 'tax', '15');

-- --------------------------------------------------------

--
-- Table structure for table `sfia_pilots`
--

CREATE TABLE `sfia_pilots` (
  `id` int(11) NOT NULL,
  `charactername` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `shops`
--

CREATE TABLE `shops` (
  `id` int(11) NOT NULL,
  `x` float DEFAULT 0,
  `y` float DEFAULT 0,
  `z` float DEFAULT 0,
  `dimension` int(5) DEFAULT 0,
  `interior` int(5) DEFAULT 0,
  `shoptype` tinyint(4) DEFAULT 0,
  `rotationz` float NOT NULL DEFAULT 0,
  `skin` int(11) DEFAULT -1,
  `sPendingWage` int(11) NOT NULL DEFAULT 0,
  `sIncome` bigint(20) NOT NULL DEFAULT 0,
  `sCapacity` int(11) NOT NULL DEFAULT 10,
  `sSales` varchar(5000) NOT NULL DEFAULT '',
  `pedName` text DEFAULT NULL,
  `deletedBy` int(11) NOT NULL DEFAULT 0,
  `faction_belong` int(11) NOT NULL DEFAULT 0,
  `faction_access` tinyint(3) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `shop_contacts_info`
--

CREATE TABLE `shop_contacts_info` (
  `npcID` int(11) NOT NULL,
  `sOwner` text DEFAULT NULL,
  `sPhone` text DEFAULT NULL,
  `sEmail` text DEFAULT NULL,
  `sForum` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Saves data about business''s owners in shop system - MAXIME';

--
-- Dumping data for table `shop_contacts_info`
--

INSERT INTO `shop_contacts_info` (`npcID`, `sOwner`, `sPhone`, `sEmail`, `sForum`) VALUES
(12, '', '', '', ''),
(16, '', '', '', ''),
(25, '', '', '', ''),
(32, 'Stefan Alexandru', '', '', ''),
(39, 'Rosu Sebastian', '748461', '', ''),
(40, 'Rosu Sebastian', '748461', '', ''),
(49, 'Ioan Pavel', '705695', 'ioan.pavel@politiaromana.ro', 'Bluesbreaker'),
(50, 'Ioan Pavel', '705695', 'ioan.pavel@politiaromana.ro', 'Bluesbreaker');

-- --------------------------------------------------------

--
-- Table structure for table `shop_products`
--

CREATE TABLE `shop_products` (
  `npcID` int(11) DEFAULT NULL,
  `pItemID` int(11) DEFAULT NULL,
  `pItemValue` text DEFAULT NULL,
  `pDesc` text DEFAULT NULL,
  `pPrice` text DEFAULT NULL,
  `pDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `pID` int(11) NOT NULL,
  `pQuantity` int(11) NOT NULL DEFAULT 1,
  `pSetQuantity` int(11) NOT NULL DEFAULT 1,
  `pRestockInterval` int(11) DEFAULT 0,
  `pRestockedDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Saves on-sale products from players, business system by Maxi';

-- --------------------------------------------------------

--
-- Table structure for table `speedcams`
--

CREATE TABLE `speedcams` (
  `id` int(11) NOT NULL,
  `x` float(11,7) NOT NULL DEFAULT 0.0000000,
  `y` float(11,7) NOT NULL DEFAULT 0.0000000,
  `z` float(11,7) NOT NULL DEFAULT 0.0000000,
  `interior` int(3) NOT NULL DEFAULT 0 COMMENT 'Stores the location of the pernament speedcams',
  `dimension` int(5) NOT NULL DEFAULT 0,
  `maxspeed` int(4) NOT NULL DEFAULT 120,
  `radius` int(4) NOT NULL DEFAULT 2,
  `enabled` smallint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `speedingviolations`
--

CREATE TABLE `speedingviolations` (
  `id` int(11) NOT NULL,
  `carID` int(11) NOT NULL,
  `time` datetime NOT NULL,
  `speed` int(5) NOT NULL,
  `area` varchar(50) NOT NULL,
  `personVisible` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `staff_changelogs`
--

CREATE TABLE `staff_changelogs` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `team` int(11) NOT NULL,
  `from_rank` int(11) NOT NULL,
  `to_rank` int(11) DEFAULT NULL,
  `by` int(11) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Maxime 2015.01.08';

-- --------------------------------------------------------

--
-- Table structure for table `stats`
--

CREATE TABLE `stats` (
  `district` varchar(45) NOT NULL,
  `deaths` double DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `suspectcrime`
--

CREATE TABLE `suspectcrime` (
  `id` int(11) NOT NULL,
  `suspect_name` text DEFAULT NULL,
  `time` text DEFAULT NULL,
  `date` text DEFAULT NULL,
  `officers` text DEFAULT NULL,
  `ticket` int(11) DEFAULT NULL,
  `arrest` int(11) DEFAULT NULL,
  `fine` int(11) DEFAULT NULL,
  `ticket_price` text DEFAULT NULL,
  `arrest_price` text DEFAULT NULL,
  `fine_price` text DEFAULT NULL,
  `illegal_items` text DEFAULT NULL,
  `details` text DEFAULT NULL,
  `done_by` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `suspectdetails`
--

CREATE TABLE `suspectdetails` (
  `suspect_name` text DEFAULT NULL,
  `birth` text DEFAULT NULL,
  `gender` text DEFAULT NULL,
  `ethnicy` text DEFAULT NULL,
  `cell` int(5) DEFAULT 0,
  `occupation` text DEFAULT NULL,
  `address` text DEFAULT NULL,
  `other` text DEFAULT NULL,
  `is_wanted` int(1) DEFAULT 0,
  `wanted_reason` text DEFAULT NULL,
  `wanted_punishment` text DEFAULT NULL,
  `wanted_by` text DEFAULT NULL,
  `photo` text DEFAULT NULL,
  `done_by` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tagging`
--

CREATE TABLE `tagging` (
  `id` int(11) NOT NULL,
  `url` text DEFAULT NULL,
  `faction` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(11) NOT NULL,
  `x` decimal(10,6) DEFAULT NULL,
  `y` decimal(10,6) DEFAULT NULL,
  `z` decimal(10,6) DEFAULT NULL,
  `interior` int(5) DEFAULT NULL,
  `dimension` int(5) DEFAULT NULL,
  `rx` decimal(10,6) DEFAULT NULL,
  `ry` decimal(10,6) DEFAULT NULL,
  `rz` decimal(10,6) DEFAULT NULL,
  `modelid` int(5) DEFAULT NULL,
  `creationdate` datetime DEFAULT NULL,
  `creator` int(11) NOT NULL DEFAULT -1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `tc_comments`
--

CREATE TABLE `tc_comments` (
  `id` int(11) NOT NULL,
  `poster` varchar(200) NOT NULL,
  `comment` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `internal` tinyint(1) NOT NULL DEFAULT 0,
  `tcid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tc_tickets`
--

CREATE TABLE `tc_tickets` (
  `id` int(11) NOT NULL,
  `type` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `assign_to` int(11) NOT NULL DEFAULT 0,
  `subcribers` varchar(500) NOT NULL DEFAULT ',',
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `creator` varchar(200) NOT NULL DEFAULT '0',
  `subject` text NOT NULL,
  `content` text NOT NULL,
  `private` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tempinteriors`
--

CREATE TABLE `tempinteriors` (
  `id` int(11) NOT NULL,
  `posX` float NOT NULL,
  `posY` float DEFAULT NULL,
  `posZ` float DEFAULT NULL,
  `interior` int(5) DEFAULT NULL,
  `uploaded_by` int(11) DEFAULT 0,
  `uploaded_at` datetime DEFAULT NULL,
  `amount_paid` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `tempobjects`
--

CREATE TABLE `tempobjects` (
  `id` int(11) NOT NULL,
  `model` int(6) NOT NULL DEFAULT 0,
  `posX` float(12,7) NOT NULL DEFAULT 0.0000000,
  `posY` float(12,7) NOT NULL DEFAULT 0.0000000,
  `posZ` float(12,7) NOT NULL DEFAULT 0.0000000,
  `rotX` float(12,7) NOT NULL DEFAULT 0.0000000,
  `rotY` float(12,7) NOT NULL DEFAULT 0.0000000,
  `rotZ` float(12,7) NOT NULL DEFAULT 0.0000000,
  `interior` int(5) NOT NULL,
  `dimension` int(5) NOT NULL,
  `comment` varchar(50) DEFAULT NULL,
  `solid` int(1) DEFAULT 1,
  `doublesided` int(1) DEFAULT 0,
  `scale` float(12,7) DEFAULT 1.0000000,
  `breakable` int(1) DEFAULT 0,
  `alpha` int(11) NOT NULL DEFAULT 255
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `textures_animated`
--

CREATE TABLE `textures_animated` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `frames` text NOT NULL,
  `speed` int(4) NOT NULL,
  `createdBy` int(11) NOT NULL,
  `createdAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `tid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `name` text NOT NULL,
  `status` text NOT NULL,
  `subject` text NOT NULL,
  `assigned` text NOT NULL,
  `priority` text NOT NULL,
  `username` text NOT NULL,
  `gamename` text NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tokens`
--

CREATE TABLE `tokens` (
  `id` int(11) NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `action` varchar(32) DEFAULT NULL,
  `token` varchar(32) NOT NULL,
  `data` varchar(500) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MEMORY DEFAULT CHARSET=latin1 COMMENT='Random token, used for security and validations - MAXIME';

-- --------------------------------------------------------

--
-- Table structure for table `towstats`
--

CREATE TABLE `towstats` (
  `id` int(11) NOT NULL,
  `character` int(11) NOT NULL,
  `vehicle` int(11) DEFAULT NULL,
  `vehicle_plate` varchar(8) DEFAULT NULL COMMENT 'vehicle plate at the time of towing, if any',
  `date` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'date of towing'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Detailed information for TTR leaders who towed what and when';

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `id` int(11) NOT NULL,
  `model` int(3) DEFAULT 0,
  `x` decimal(10,6) DEFAULT 0.000000,
  `y` decimal(10,6) DEFAULT 0.000000,
  `z` decimal(10,6) DEFAULT 0.000000,
  `rotx` decimal(10,6) DEFAULT 0.000000,
  `roty` decimal(10,6) DEFAULT 0.000000,
  `rotz` decimal(10,6) DEFAULT 0.000000,
  `currx` decimal(10,6) DEFAULT 0.000000,
  `curry` decimal(10,6) DEFAULT 0.000000,
  `currz` decimal(10,6) DEFAULT 0.000000,
  `currrx` decimal(10,6) DEFAULT 0.000000,
  `currry` decimal(10,6) DEFAULT 0.000000,
  `currrz` decimal(10,6) NOT NULL DEFAULT 0.000000,
  `fuel` int(3) DEFAULT 100,
  `engine` int(1) DEFAULT 0,
  `locked` int(1) DEFAULT 0,
  `lights` int(1) DEFAULT 0,
  `sirens` int(1) DEFAULT 0,
  `paintjob` int(11) DEFAULT 0,
  `hp` float DEFAULT 1000,
  `color1` varchar(50) DEFAULT '0',
  `color2` varchar(50) DEFAULT '0',
  `color3` varchar(50) DEFAULT NULL,
  `color4` varchar(50) DEFAULT NULL,
  `plate` text DEFAULT NULL,
  `faction` int(11) DEFAULT -1,
  `owner` int(11) DEFAULT -1,
  `job` int(11) DEFAULT -1,
  `tintedwindows` int(1) DEFAULT 0,
  `dimension` int(5) DEFAULT 0,
  `interior` int(5) DEFAULT 0,
  `currdimension` int(5) DEFAULT 0,
  `currinterior` int(5) DEFAULT 0,
  `enginebroke` int(1) DEFAULT 0,
  `items` text DEFAULT NULL,
  `itemvalues` text DEFAULT NULL,
  `Impounded` int(3) DEFAULT 0,
  `handbrake` int(1) DEFAULT 0,
  `safepositionX` float DEFAULT NULL,
  `safepositionY` float DEFAULT NULL,
  `safepositionZ` float DEFAULT NULL,
  `safepositionRZ` float DEFAULT NULL,
  `upgrades` varchar(150) DEFAULT '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]',
  `wheelStates` varchar(30) DEFAULT '[ [ 0, 0, 0, 0 ] ]',
  `panelStates` varchar(40) DEFAULT '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]',
  `doorStates` varchar(30) DEFAULT '[ [ 0, 0, 0, 0, 0, 0 ] ]',
  `odometer` int(15) DEFAULT 0,
  `headlights` varchar(30) DEFAULT '[ [ 255, 255, 255 ] ]',
  `variant1` int(3) DEFAULT NULL,
  `variant2` int(3) DEFAULT NULL,
  `description1` varchar(300) NOT NULL DEFAULT '',
  `description2` varchar(300) NOT NULL DEFAULT '',
  `description3` varchar(300) NOT NULL DEFAULT '',
  `description4` varchar(300) NOT NULL DEFAULT '',
  `description5` varchar(300) NOT NULL DEFAULT '',
  `suspensionLowerLimit` float DEFAULT NULL,
  `driveType` char(5) DEFAULT NULL,
  `deleted` int(11) NOT NULL DEFAULT 0,
  `chopped` tinyint(4) NOT NULL DEFAULT 0,
  `stolen` tinyint(4) NOT NULL DEFAULT 0,
  `lastUsed` datetime DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `createdBy` int(11) DEFAULT NULL,
  `trackingdevice` text DEFAULT NULL,
  `registered` int(2) NOT NULL DEFAULT 1,
  `show_plate` int(2) NOT NULL DEFAULT 1,
  `show_vin` int(2) NOT NULL DEFAULT 1,
  `paintjob_url` varchar(255) DEFAULT NULL,
  `vehicle_shop_id` int(11) NOT NULL DEFAULT 0,
  `bulletproof` tinyint(4) NOT NULL DEFAULT 0,
  `textures` varchar(300) NOT NULL DEFAULT '[ [ ] ]',
  `business` int(11) NOT NULL DEFAULT -1,
  `protected_until` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vehicles_custom`
--

CREATE TABLE `vehicles_custom` (
  `id` int(11) NOT NULL,
  `brand` text DEFAULT NULL,
  `model` text DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `handling` varchar(1000) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `tax` int(11) DEFAULT NULL,
  `createdate` timestamp NOT NULL DEFAULT current_timestamp(),
  `createdby` int(11) NOT NULL DEFAULT 0,
  `updatedate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updatedby` int(11) NOT NULL DEFAULT 0,
  `notes` text DEFAULT NULL,
  `doortype` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vehicles_shop`
--

CREATE TABLE `vehicles_shop` (
  `id` int(11) NOT NULL,
  `vehmtamodel` int(11) DEFAULT 0,
  `vehbrand` text DEFAULT NULL,
  `vehmodel` text DEFAULT NULL,
  `vehyear` int(11) DEFAULT 2014,
  `vehprice` int(11) DEFAULT 0,
  `vehtax` int(11) DEFAULT 0,
  `createdate` timestamp NOT NULL DEFAULT current_timestamp(),
  `createdby` int(11) NOT NULL DEFAULT 0,
  `updatedate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updatedby` int(11) NOT NULL DEFAULT 0,
  `notes` text DEFAULT NULL,
  `handling` varchar(1000) DEFAULT NULL,
  `duration` int(11) NOT NULL DEFAULT 1000,
  `enabled` int(1) NOT NULL DEFAULT 0,
  `spawnto` tinyint(2) NOT NULL DEFAULT 0,
  `doortype` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicles_shop`
--

INSERT INTO `vehicles_shop` (`id`, `vehmtamodel`, `vehbrand`, `vehmodel`, `vehyear`, `vehprice`, `vehtax`, `createdate`, `createdby`, `updatedate`, `updatedby`, `notes`, `handling`, `duration`, `enabled`, `spawnto`, `doortype`) VALUES
(1, 602, 'BMW', 'M6', 2015, 237000, 237, '2020-05-15 19:12:48', 2, '2020-06-11 03:06:12', 1, '\n', '[ [ 1900, 3400, 1.5, [ 0, 0.1000000014901161, -0.2000000029802322 ], 85, 0.8600000143051147, 0.800000011920929, 0.4199999868869781, 5, 500, 18, 5, \"rwd\", \"petrol\", 13, 0.6000000238418579, false, 40, 1.200000047683716, 0.119999997317791, 0, 0.300000011920929, -0.1000000610947609, 0.5, 0.4000000059604645, 0.25, 0.5, 35000, 1073752064, 2097152, \"small\", \"small\", 0 ] ]', 1000, 1, 1, NULL),
(2, 429, 'BMW', 'Z4 M40i', 2018, 305155, 305, '2020-05-15 19:15:02', 2, '2020-06-10 07:53:44', 12, '\n', '[ [ 1800, 3000, 1.5, [ 0, 0, -0.2000000029802322 ], 70, 0.75, 0.8899999856948853, 0.5, 5, 500, 17, 10, \"awd\", \"petrol\", 8, 0.5, false, 40, 1, 0.1000000014901161, 5, 0.300000011920929, -0.1500000059604645, 0.5, 0.300000011920929, 0.1500000059604645, 0.4900000095367432, 45000, 8196, 2097152, \"small\", \"small\", 1 ] ]', 1000, 1, 1, NULL),
(3, 421, 'Mazda', 'Speed 3', 2010, 24123, 24, '2020-05-15 19:16:38', 2, '2020-06-06 05:14:43', 1, '\n', '[ [ 3000, 5000, 2.200000047683716, [ 0, 0, -0.1000000014901161 ], 75, 1, 0.6499999761581421, 0.550000011920929, 5, 300, 21, 12, \"fwd\", \"petrol\", 7.5, 0.6000000238418579, false, 40, 1, 0.2000000029802322, 0, 0.2700000107288361, -0.2000000029802322, 0.5, 0.3499999940395355, 0.239999994635582, 0.6000000238418579, 18000, 0, 272629760, \"small\", \"small\", 0 ] ]', 1000, 1, 8, NULL),
(4, 561, 'BMW', 'M5 E60', 2006, 121056, 121, '2020-05-15 19:17:57', 2, '2020-05-24 12:19:34', 12, '\n', '[ [ 2000, 4500, 1.299999952316284, [ 0, 0.1000000014901161, -0.1000000014901161 ], 75, 0.75, 0.8500000238418579, 0.4699999988079071, 5, 500, 22, 20, \"rwd\", \"petrol\", 10, 0.5, false, 40, 1.799999952316284, 0.1500000059604645, 0, 0.2800000011920929, -0.1000000014901161, 0.5, 0.300000011920929, 0.25, 0.6000000238418579, 35000, 10240, 67108864, \"small\", \"small\", 0 ] ]', 1000, 1, 1, NULL),
(5, 445, 'BMW', '750i', 2016, 222172, 222, '2020-05-15 19:19:27', 2, '2020-06-08 08:54:56', 12, '\n', '[ [ 2300, 3851.39990234375, 1.5, [ 0, 0, -0.05000000074505806 ], 75, 0.6499999761581421, 0.8999999761581421, 0.5099999904632568, 5, 500, 16, 15, \"awd\", \"petrol\", 8.5, 0.5, false, 40, 1.5, 0.1500000059604645, 0, 0.2700000107288361, -0.1400000005960464, 0.5, 0.550000011920929, 0.2000000029802322, 0.5600000023841858, 35000, 0, 4194304, \"long\", \"small\", 0 ] ]', 1000, 1, 1, NULL),
(6, 477, 'BMW', '850i E31', 1999, 226560, 150, '2020-05-15 19:22:58', 2, '2020-05-19 19:56:02', 6, '\n', '[ [ 1800, 2979.699951171875, 1.899999976158142, [ 0, 0.2000000029802322, -0.1000000014901161 ], 70, 0.800000011920929, 0.800000011920929, 0.5099999904632568, 5, 500, 16, 25, \"rwd\", \"petrol\", 11.10000038146973, 0.5, false, 40, 1.799999952316284, 0.1000000014901161, 0, 0.3100000023841858, -0.1000000089406967, 0.5, 0.300000011920929, 0.239999994635582, 0.6000000238418579, 45000, 0, 12582912, \"small\", \"small\", 0 ] ]', 1000, 1, 1, NULL),
(7, 579, 'BMW', 'X5', 2014, 240625, 290, '2020-05-15 19:27:03', 2, '2020-06-13 17:00:22', 12, '\n', '[ [ 2000, 6000, 1.799999952316284, [ 0, 0, -0.5 ], 80, 0.6200000047683716, 0.8899999856948853, 0.5, 5, 500, 18, 25, \"awd\", \"petrol\", 16, 0.4000000059604645, false, 40, 1.299999952316284, 0.05000000074505806, 0, 0.449999988079071, -0.1399999856948853, 0.6000000238418579, 0.300000011920929, 0.4399999976158142, 0.3499999940395355, 40000, 32, 17412, \"long\", \"small\", 0 ] ]', 1000, 1, 1, NULL),
(8, 415, 'BMW', 'I8 { DON }', 2015, 1, 1, '2020-05-15 19:29:10', 2, '2020-05-28 21:35:35', 1, '\n', '[ [ 1700, 3000, 1.5, [ 0, -0.2000000029802322, -0.2000000029802322 ], 70, 0.8999999761581421, 0.8999999761581421, 0.5, 5, 500, 22, 20, \"awd\", \"petrol\", 11.10000038146973, 0.5, false, 40, 0.800000011920929, 0.2000000029802322, 0, 0.1000000014901161, -0.1500000059604645, 0.5, 0.6000000238418579, 0.4000000059604645, 0.5400000214576721, 105000, 3221233668, 2129920, \"long\", \"long\", 1 ] ]', 1000, 1, 0, NULL),
(9, 587, 'BMW', 'M3 E36', 1995, 121056, 100, '2020-05-15 19:30:47', 2, '2020-05-22 19:04:18', 7, '\n', '[ [ 1700, 2998.300048828125, 2.099999904632568, [ 0, 0.1000000014901161, -0.1000000014901161 ], 75, 0.699999988079071, 0.800000011920929, 0.5, 5, 200, 16, 23, \"rwd\", \"petrol\", 8, 0.6000000238418579, false, 40, 1.600000023841858, 0.1500000059604645, 0, 0.300000011920929, -0.1000000014901161, 0.5, 0.300000011920929, 0.25, 0.6000000238418579, 35000, 1073752068, 0, \"small\", \"small\", 0 ] ]', 1000, 1, 1, NULL),
(10, 506, 'BMW', 'M3 E46', 2003, 75539, 75, '2020-05-15 19:32:21', 2, '2020-06-05 16:34:26', 1, '\n', '[ [ 1400, 2800, 1.799999952316284, [ 0, -0.2000000029802322, -0.239999994635582 ], 70, 0.800000011920929, 0.8600000143051147, 0.5, 5, 500, 17, 14, \"awd\", \"petrol\", 15, 0.5, false, 45, 1, 0.2000000029802322, 0, 0.25, -0.1000000014901161, 0.5, 0.300000011920929, 0.4000000059604645, 0.5400000214576721, 105000, 1073750020, 2129920, \"long\", \"long\", 1 ] ]', 1000, 1, 1, NULL),
(11, 565, 'BMW', 'M3 E30', 1986, 105155, 150, '2020-05-15 19:33:56', 2, '2020-05-30 07:52:49', 7, '\n', '[ [ 1400, 2998.300048828125, 2.299999952316284, [ 0, 0.2000000029802322, -0.1000000014901161 ], 75, 0.75, 0.8999999761581421, 0.5, 5, 200, 15, 20, \"rwd\", \"petrol\", 8, 0.6000000238418579, false, 40, 1.5, 0.1500000059604645, 0, 0.2800000011920929, -0.1500000059604645, 0.5, 0.300000011920929, 0.25, 0.6000000238418579, 35000, 10244, 67108865, \"small\", \"small\", 1 ] ]', 1000, 1, 1, NULL),
(12, 436, 'Audi', 'RS5', 2018, 343905, 1, '2020-05-15 19:35:42', 2, '2020-05-20 10:02:00', 6, '\n', '[ [ 1900, 3000, 1.100000023841858, [ 0, 0.300000011920929, -0.1000000014901161 ], 70, 0.699999988079071, 0.800000011920929, 0.449999988079071, 4, 500, 18, 25, \"awd\", \"petrol\", 8, 0.6000000238418579, false, 40, 1.100000023841858, 0.07999999821186066, 2, 0.3100000023841858, -0.1800000071525574, 0.6000000238418579, 0.300000011920929, 0.2099999934434891, 0.5, 9000, 0, 0, \"long\", \"long\", 0 ] ]', 1000, 1, 2, NULL),
(13, 458, 'Audi', 'S4 Avant', 2009, 116562, 116, '2020-05-15 19:38:53', 2, '2020-05-22 19:40:00', 7, '\n', '[ [ 2000, 5500, 1.5, [ 0, 0, 0 ], 75, 0.75, 0.800000011920929, 0.5199999809265137, 4, 500, 16, 10, \"awd\", \"petrol\", 18, 0.6000000238418579, false, 40, 1.200000047683716, 0.1000000014901161, 0, 0.2700000107288361, -0.1000000014901161, 0.5, 0.2000000029802322, 0.239999994635582, 0.4799999892711639, 18000, 32, 0, \"small\", \"small\", 0 ] ]', 1000, 1, 2, NULL),
(14, 400, 'Audi', 'Q7', 2013, 89187, 89, '2020-05-15 19:40:40', 2, '2020-05-22 20:33:41', 1, '\n', '[ [ 2300, 5008.2998046875, 1.700000047683716, [ 0, 0, -0.300000011920929 ], 85, 0.75, 0.8500000238418579, 0.5, 5, 220, 10, 0.1000000014901161, \"awd\", \"diesel\", 20, 0.6000000238418579, false, 40, 1, 0.2000000029802322, 0, 0.2800000011920929, -0.2000000029802322, 0.5, 0.25, 0.2700000107288361, 0.2300000041723251, 25000, 32, 5242882, \"long\", \"small\", 0 ] ]', 1000, 1, 2, NULL),
(15, 540, 'Audi', 'A4', 2006, 18000, 72, '2020-05-15 19:41:58', 2, '2020-05-20 10:01:49', 6, '\n', '[ { \"1\": 1800, \"2\": 3000, \"3\": 1.799999952316284, \"4\": [ 0, 0.300000011920929, 0 ], \"5\": 70, \"6\": 0.699999988079071, \"7\": 0.800000011920929, \"8\": 0.5, \"9\": 4, \"10\": 500, \"11\": 14, \"12\": 30, \"13\": \"awd\", \"14\": \"petrol\", \"15\": 5.400000095367432, \"16\": 0.6000000238418579, \"17\": false, \"18\": 40, \"19\": 1.299999952316284, \"20\": 0.09000000357627869, \"21\": 0, \"22\": 0.3199999928474426, \"23\": -0.1599999964237213, \"24\": 0.6000000238418579, \"25\": 0, \"26\": 0.2599999904632568, \"27\": 0.5400000214576721, \"28\": 19000, \"29\": 0, \"30\": 2, \"31\": \"long\", \"33\": 0 } ]', 1000, 1, 2, NULL),
(16, 589, 'Audi', 'A1', 2013, 53281, 38, '2020-05-15 19:44:45', 2, '2020-05-20 09:59:25', 6, '\n', '[ [ 1400, 3000, 2, [ 0, 0, 0 ], 80, 0.75, 0.8999999761581421, 0.4900000095367432, 5, 300, 13, 20, \"fwd\", \"petrol\", 11, 0.4000000059604645, false, 40, 1.700000047683716, 0.1000000014901161, 0, 0.2800000011920929, -0.119999997317791, 0.5, 0, 0.25, 0.5, 35000, 8192, 12582912, \"small\", \"small\", 0 ] ]', 1000, 1, 2, NULL),
(17, 496, 'Audi', 'A3', 2004, 14500, 13, '2020-05-15 19:46:47', 2, '2020-05-20 10:01:22', 6, '\n', '[ [ 1600, 2141.699951171875, 1.700000047683716, [ 0, 0, -0.1000000014901161 ], 50, 0.8500000238418579, 0.8500000238418579, 0.5, 5, 300, 13, 20, \"fwd\", \"petrol\", 11, 0.4000000059604645, false, 40, 1.399999976158142, 0.1000000014901161, 0, 0.2800000011920929, -0.119999997317791, 0.5, 0, 0.25, 0.5, 35000, 3221225472, 12582912, \"small\", \"small\", 0 ] ]', 1000, 1, 2, NULL),
(18, 402, 'Audi', 'R8', 2008, 217792, 217, '2020-05-15 19:49:19', 2, '2020-06-10 12:58:48', 12, '\n', '[ [ 1800, 4000, 1.200000047683716, [ 0, 0, -0.1000000014901161 ], 85, 0.699999988079071, 0.8999999761581421, 0.5, 5, 350, 18, 10, \"awd\", \"petrol\", 11, 0.4000000059604645, false, 40, 1.200000047683716, 0.119999997317791, 0, 0.2800000011920929, -0.08999998867511749, 0.5, 0.4000000059604645, 0.25, 0.5, 35000, 10240, 270532608, \"small\", \"small\", 0 ] ]', 1000, 1, 2, NULL),
(20, 514, 'Mercedes-Benz', 'Actros', 2009, 1, 1, '2020-05-15 19:58:05', 2, '2020-06-03 14:28:57', 1, '\n', '[ [ 4000, 20000, 2, [ 0, 0, -1 ], 90, 0.8500000238418579, 0.75, 0.4000000059604645, 5, 110, 10, 20, \"rwd\", \"diesel\", 8, 0.300000011920929, false, 45, 0.699999988079071, 0.2000000029802322, 0, 0.25, -0.375, 0.5, 0, 0.3499999940395355, 0.25, 35000, 538992648, 16777217, \"long\", \"small\", 2 ] ]', 1000, 1, 0, NULL),
(21, 547, 'Mercedes-Benz', 'E500', 2012, 185978, 18, '2020-05-15 19:59:41', 2, '2020-05-28 22:41:10', 1, '\n', '[ { \"1\": 1600, \"2\": 3300, \"3\": 2.200000047683716, \"4\": [ 0, 0, 0 ], \"5\": 70, \"6\": 0.8999999761581421, \"7\": 0.800000011920929, \"8\": 0.4799999892711639, \"9\": 4, \"10\": 250, \"11\": 23, \"12\": 7, \"13\": \"rwd\", \"14\": \"petrol\", \"15\": 5.400000095367432, \"16\": 0.6000000238418579, \"17\": false, \"18\": 35, \"19\": 1.100000023841858, \"20\": 0.1400000005960464, \"21\": 0, \"22\": 0.3199999928474426, \"23\": -0.2000000029802322, \"24\": 0.5, \"25\": 0, \"26\": 0.2599999904632568, \"27\": 0.5400000214576721, \"28\": 19000, \"29\": 0, \"30\": 0, \"31\": \"long\", \"33\": 0 } ]', 1000, 1, 3, NULL),
(22, 491, 'Mercedes-Benz', '600SEC', 1992, 86676, 86, '2020-05-15 20:01:11', 2, '2020-05-22 19:24:06', 7, '\n', '[ [ 1900, 3435.39990234375, 1.700000047683716, [ 0, 0, -0.1000000014901161 ], 70, 0.699999988079071, 0.8600000143051147, 0.5, 4, 500, 15, 20, \"rwd\", \"petrol\", 7, 0.5, false, 40, 2, 0.1000000014901161, 0, 0.3100000023841858, -0.1000000089406967, 0.5, 0.5, 0.2599999904632568, 0.8500000238418579, 9000, 1073741824, 268435456, \"long\", \"long\", 0 ] ]', 1000, 1, 3, NULL),
(23, 585, 'Mercedes-Benz', 'ML300', 2010, 85000, 85, '2020-05-15 20:02:30', 2, '2020-05-22 19:25:27', 7, '\n', '[ [ 2300, 4000, 1.600000023841858, [ 0, -0.5, 0 ], 75, 0.6499999761581421, 0.800000011920929, 0.449999988079071, 5, 500, 14, 25, \"awd\", \"petrol\", 14, 0.4000000059604645, false, 40, 0.8999999761581421, 0.1299999952316284, 3, 0.300000011920929, -0.1800000071525574, 0.5, 0.300000011920929, 0.2000000029802322, 0.5600000023841858, 35000, 1073741824, 4194304, \"long\", \"small\", 0 ] ]', 1000, 1, 3, NULL),
(24, 499, 'Mercedes-Benz', 'Autospeciala', 2010, 1, 1, '2020-05-15 20:07:26', 2, '2020-05-15 20:07:59', 2, '\n', NULL, 1000, 0, 0, NULL),
(25, 507, 'Mercedes-Benz', 'G63', 2015, 808654, 808, '2020-05-15 20:08:55', 2, '2020-06-10 15:41:55', 12, '\n', '[ [ 2200, 5000, 1.799999952316284, [ 0, 0.1000000014901161, -0.1000000014901161 ], 75, 0.699999988079071, 0.800000011920929, 0.5, 5, 500, 18, 25, \"awd\", \"petrol\", 16, 0.6000000238418579, false, 45, 1, 0.1000000014901161, 0, 0.3499999940395355, -0.1500000059604645, 0.5, 0.300000011920929, 0.2000000029802322, 0.300000011920929, 35000, 1073741824, 272629760, \"long\", \"small\", 0 ] ]', 1000, 1, 3, NULL),
(26, 580, 'Mercedes-Benz', 'CLS 63 AMG', 2015, 162781, 69, '2020-05-15 20:10:51', 2, '2020-05-19 20:46:39', 6, '\n', '[ [ 2000, 2200, 1.5, [ 0, 0.300000011920929, 0 ], 70, 0.6499999761581421, 0.800000011920929, 0.5199999809265137, 5, 500, 15, 30, \"rwd\", \"petrol\", 8, 0.800000011920929, false, 40, 1.299999952316284, 0.07999999821186066, 0, 0.3100000023841858, -0.1000000089406967, 0.6000000238418579, 0, 0.2599999904632568, 0.5, 9000, 1, 1, \"long\", \"long\", 0 ] ]', 1000, 1, 3, NULL),
(27, 412, 'Mercedes-Benz', 'SL65 AMG', 2006, 474594, 107, '2020-05-15 20:11:32', 2, '2020-05-20 09:44:24', 6, '\n', '[ [ 1800, 4411.5, 0.6000000238418579, [ 0, -0.1000000014901161, -0.2000000029802322 ], 70, 0.949999988079071, 0.800000011920929, 0.449999988079071, 5, 500, 15, 25, \"awd\", \"petrol\", 6.5, 0.5, false, 40, 1.5, 0.07999999821186066, 0, 0.2000000029802322, -0.1299999952316284, 0.5, 0.6000000238418579, 0.2599999904632568, 0.4099999964237213, 30000, 0, 37814280, \"small\", \"small\", 0 ] ]', 1000, 1, 3, NULL),
(28, 482, 'Fiat', 'Ducato MK1', 1981, 1, 1, '2020-05-15 20:13:47', 2, '2020-05-20 13:52:24', 6, '\n', '[ [ 1900, 5000, 2.400000095367432, [ 0, 0, -0.2000000029802322 ], 85, 0.6000000238418579, 0.8700000047683716, 0.5099999904632568, 5, 150, 6, 20, \"fwd\", \"petrol\", 8.5, 0.4000000059604645, false, 40, 1.299999952316284, 0.07000000029802322, 2, 0.4000000059604645, -0.25, 0.4000000059604645, 0.5, 0.2000000029802322, 0.5, 26000, 1, 4194304, \"long\", \"small\", 13 ] ]', 1000, 0, 0, NULL),
(29, 545, 'Fiat', 'Abarth', 2009, 34000, 34, '2020-05-15 20:15:58', 2, '2020-05-22 19:29:11', 7, '\n', '[ [ 1700, 4000, 2, [ 0, 0, -0.05000000074505806 ], 75, 0.75, 0.75, 0.5199999809265137, 5, 500, 13, 10, \"fwd\", \"petrol\", 8, 0.5, false, 40, 1, 0.1000000014901161, 0, 0.1000000014901161, -0.1500000059604645, 0.5, 0.5, 0.1800000071525574, 0.449999988079071, 20000, 0, 8388608, \"big\", \"small\", 0 ] ]', 1000, 0, 0, NULL),
(30, 416, 'Mercedes-Benz', 'Ambulanta', 2009, 1, 1, '2020-05-15 20:17:49', 2, '2020-05-20 14:00:57', 6, '\n', '[ [ 2600, 10202.7998046875, 2, [ 0, 0, -0.1000000014901161 ], 90, 0.75, 0.800000011920929, 0.4699999988079071, 5, 500, 12, 10, \"awd\", \"diesel\", 7, 0.6000000238418579, false, 40, 1, 0.07000000029802322, 0, 0.4000000059604645, -0.2000000029802322, 0.5, 0, 0.5799999833106995, 0.3300000131130219, 10000, 16385, 4, \"long\", \"small\", 13 ] ]', 1000, 0, 0, NULL),
(31, 550, 'Renault', 'Megane Sedan', 2004, 12110, 12, '2020-05-15 20:19:22', 2, '2020-06-13 22:04:47', 1, '\n', '[ { \"1\": 1600, \"2\": 3550, \"3\": 1.5, \"4\": [ 0, 0.300000011920929, 0 ], \"5\": 70, \"6\": 0.699999988079071, \"7\": 0.800000011920929, \"8\": 0.5199999809265137, \"9\": 5, \"10\": 500, \"11\": 12, \"12\": 10, \"13\": \"fwd\", \"14\": \"petrol\", \"15\": 5.400000095367432, \"16\": 0.6000000238418579, \"17\": false, \"18\": 40, \"19\": 1, \"20\": 0.09000000357627869, \"21\": 0, \"22\": 0.300000011920929, \"23\": -0.119999997317791, \"24\": 0.6000000238418579, \"25\": 0, \"26\": 0.2599999904632568, \"27\": 0.5400000214576721, \"28\": 19000, \"29\": 1073741824, \"30\": 1, \"31\": \"long\", \"33\": 0 } ]', 1000, 1, 4, NULL),
(32, 410, 'Volkswagen', 'MK1', 1984, 21765, 21, '2020-05-15 20:20:56', 2, '2020-05-22 19:30:38', 7, '\n', '[ [ 1000, 1400, 2.5, [ 0, 0.2000000029802322, 0 ], 70, 0.800000011920929, 0.800000011920929, 0.5, 3, 160, 6, 19, \"fwd\", \"petrol\", 8, 0.800000011920929, false, 40, 1.200000047683716, 0.1000000014901161, 5, 0.3100000023841858, -0.1500000059604645, 0.5, 0.2000000029802322, 0.2599999904632568, 0.5, 9000, 0, 0, \"long\", \"long\", 0 ] ]', 1000, 1, 5, NULL),
(33, 475, 'Volkswagen', 'MK2', 1987, 67791, 67, '2020-05-15 20:22:01', 2, '2020-05-22 19:10:34', 7, '\n', '[ [ 1700, 4000, 2, [ 0, 0.1000000014901161, 0 ], 70, 0.699999988079071, 0.800000011920929, 0.5299999713897705, 4, 200, 8, 19, \"fwd\", \"petrol\", 8, 0.5, false, 35, 1.299999952316284, 0.07999999821186066, 5, 0.300000011920929, -0.1000000312924385, 0.5, 0.25, 0.25, 0.5199999809265137, 19000, 0, 268435462, \"small\", \"small\", 0 ] ]', 1000, 1, 5, NULL),
(34, 549, 'Volkswagen', 'MK3', 1994, 9684, 9, '2020-05-15 20:23:07', 2, '2020-05-22 19:14:50', 7, '\n', '[ [ 1700, 4166.39990234375, 1.700000047683716, [ 0, 0.1500000059604645, 0 ], 70, 0.6000000238418579, 0.8500000238418579, 0.5199999809265137, 4, 500, 9, 25, \"fwd\", \"petrol\", 8.199999809265137, 0.5, false, 40, 1.5, 0.07999999821186066, 3, 0.300000011920929, -0.1400000005960464, 0.5, 0.5, 0.300000011920929, 0.5199999809265137, 19000, 1073741828, 4, \"small\", \"small\", 1 ] ]', 1000, 1, 5, NULL),
(35, 542, 'Volkswagen', 'MK4', 2001, 4542, 5, '2020-05-15 20:23:49', 2, '2020-05-22 19:43:42', 7, '\n', '[ [ 1800, 3000, 1.700000047683716, [ 0, 0, 0 ], 70, 0.6499999761581421, 0.800000011920929, 0.5199999809265137, 4, 500, 15, 23, \"fwd\", \"petrol\", 16, 0.5, false, 40, 1, 0.1000000014901161, 0, 0.300000011920929, -0.1000000014901161, 0.5, 0.25, 0.25, 0.5199999809265137, 19000, 1076363264, 268468228, \"small\", \"small\", 0 ] ]', 1000, 1, 5, NULL),
(36, 558, 'Volkswagen', 'MK5', 2006, 17437, 1, '2020-05-15 20:24:32', 2, '2020-05-19 19:14:01', 6, '\n', '[ [ 1700, 2998.300048828125, 1.700000047683716, [ 0, 0.1000000014901161, -0.300000011920929 ], 75, 0.800000011920929, 0.8500000238418579, 0.4699999988079071, 5, 500, 15, 25, \"fwd\", \"petrol\", 8, 0.4000000059604645, false, 40, 1.299999952316284, 0.1500000059604645, 0, 0.2800000011920929, -0.1000000014901161, 0.5, 0.300000011920929, 0.25, 0.6000000238418579, 35000, 3221235712, 67108865, \"small\", \"small\", 0 ] ]', 1000, 1, 5, NULL),
(37, 517, 'Volkswagen', 'MK6', 2012, 32937, 1, '2020-05-15 20:25:11', 2, '2020-05-19 20:26:28', 6, '\n', '[ [ 1860, 3267.800048828125, 1.799999952316284, [ 0, 0.1000000014901161, -0.1000000014901161 ], 75, 0.75, 0.800000011920929, 0.5199999809265137, 5, 500, 15, 30, \"fwd\", \"petrol\", 7, 0.6000000238418579, false, 40, 1.299999952316284, 0.1299999952316284, 0, 0.2700000107288361, -0.01000005938112736, 0.5, 0.300000011920929, 0.2000000029802322, 0.5600000023841858, 35000, 4194304, 272629760, \"long\", \"small\", 0 ] ]', 1000, 1, 5, NULL),
(38, 492, 'Volkswagen ', 'Touareg', 2011, 79000, 86, '2020-05-15 20:26:37', 2, '2020-06-09 04:58:06', 1, '\n', '[ { \"1\": 3000, \"2\": 4000, \"3\": 2.5, \"4\": [ 0, 0, 0 ], \"5\": 70, \"6\": 0.800000011920929, \"7\": 0.800000011920929, \"8\": 0.4300000071525574, \"9\": 4, \"10\": 220, \"11\": 20, \"12\": 20, \"13\": \"rwd\", \"14\": \"petrol\", \"15\": 5.400000095367432, \"16\": 0.6000000238418579, \"17\": false, \"18\": 40, \"19\": 1.200000047683716, \"20\": 0.119999997317791, \"21\": 5, \"22\": 0.3199999928474426, \"23\": -0.1500000059604645, \"24\": 0.5, \"25\": 0, \"26\": 0.2199999988079071, \"27\": 0.5400000214576721, \"28\": 19000, \"29\": 0, \"30\": 268435457, \"31\": \"long\", \"33\": 0 } ]', 1000, 1, 5, NULL),
(39, 479, 'Volkswagen', 'Passat B6', 2009, 24000, 25, '2020-05-15 20:30:09', 2, '2020-05-20 09:55:46', 6, '\n', '[ [ 1800, 3800, 1.700000047683716, [ 0, 0.2000000029802322, 0 ], 75, 0.6499999761581421, 0.8500000238418579, 0.5199999809265137, 4, 500, 13, 30, \"fwd\", \"petrol\", 5, 0.6000000238418579, false, 40, 1, 0.1000000014901161, 0, 0.2700000107288361, -0.1700000017881393, 0.5, 0.2000000029802322, 0.239999994635582, 0.4799999892711639, 18000, 32, 1, \"small\", \"small\", 0 ] ]', 1000, 1, 5, NULL),
(40, 404, 'Volkswagen', 'MK4 1.9 TDI ALH', 2001, 12107, 1, '2020-05-15 20:34:06', 2, '2020-05-22 19:05:56', 7, '\n', '[ [ 1800, 3000, 1.399999976158142, [ 0, 0.1000000014901161, 0 ], 70, 0.699999988079071, 0.8999999761581421, 0.449999988079071, 5, 500, 13, 30, \"fwd\", \"petrol\", 13, 0.800000011920929, false, 40, 1.799999952316284, 0.1000000014901161, 0, 0.3700000047683716, -0.1700000613927841, 0.5, 0, 0.2000000029802322, 0.6000000238418579, 10000, 32, 0, \"small\", \"small\", 0 ] ]', 1000, 1, 5, NULL),
(41, 414, 'Volkswagen', 'T4', 1997, 1, 1, '2020-05-15 20:35:31', 2, '2020-05-20 09:26:14', 6, '\n', '[ { \"1\": 3500, \"2\": 14000, \"3\": 3.5, \"4\": [ 0, 0, 0.1000000014901161 ], \"5\": 80, \"6\": 0.550000011920929, \"7\": 0.8500000238418579, \"8\": 0.4600000083446503, \"9\": 5, \"10\": 200, \"11\": 7, \"12\": 30, \"13\": \"fwd\", \"14\": \"diesel\", \"15\": 10, \"16\": 0.6000000238418579, \"17\": false, \"18\": 40, \"19\": 2, \"20\": 0.07000000029802322, \"21\": 5, \"22\": 0.300000011920929, \"23\": -0.1500000059604645, \"24\": 0.5, \"25\": 0, \"26\": 0.4600000083446503, \"27\": 0.5299999713897705, \"28\": 22000, \"29\": 16520, \"30\": 0, \"31\": \"long\", \"33\": 0 } ]', 1000, 0, 0, NULL),
(42, 526, 'Lotus Evora S', 'Politie', 2001, 100, 100, '2020-05-15 20:37:18', 2, '2020-06-09 14:03:30', 12, '\n', '[ [ 1800, 4166.39990234375, 1, [ 0, 0, -0.2000000029802322 ], 70, 0.8999999761581421, 0.8399999737739563, 0.4000000059604645, 4, 500, 18, 8, \"awd\", \"petrol\", 8.199999809265137, 0.5, false, 40, 1, 0.2000000029802322, 0, 0.300000011920929, -0.1000000014901161, 0.5, 0.25, 0.300000011920929, 0.5199999809265137, 19000, 1073741824, 4, \"small\", \"small\", 0 ] ]', 1000, 1, 0, NULL),
(43, 597, 'Volkswagen', 'Passat Politie', 2006, 1, 1, '2020-05-15 20:37:52', 2, '2020-06-11 10:56:32', 12, '\n', '[ [ 1800, 4500, 1.399999976158142, [ 0, 0.300000011920929, -0.1500000059604645 ], 75, 0.75, 0.8500000238418579, 0.5, 5, 500, 14, 18, \"awd\", \"petrol\", 20, 0.5, false, 40, 1.5, 0.119999997317791, 0, 0.2800000011920929, -0.1700000017881393, 0.6000000238418579, 0, 0.2000000029802322, 0.239999994635582, 25000, 1073741824, 270532616, \"long\", \"small\", 0 ] ]', 1000, 1, 0, NULL),
(44, 413, 'Volkswagen', 'Transporter R.A.R', 2007, 1, 1, '2020-05-15 20:38:44', 2, '2020-05-15 20:39:07', 2, '\n', NULL, 1000, 0, 0, NULL),
(45, 551, 'Dacia', 'Logan', 2009, 17433, 17, '2020-05-15 20:41:37', 2, '2020-06-11 02:23:25', 1, '\n', '[ [ 1500, 4500, 1.600000023841858, [ 0, 0.2000000029802322, -0.1000000014901161 ], 75, 0.6499999761581421, 0.800000011920929, 0.4900000095367432, 5, 500, 9, 26, \"fwd\", \"petrol\", 9, 0.6000000238418579, false, 40, 1.100000023841858, 0.1500000059604645, 0, 0.2700000107288361, -0.07999999821186066, 0.5, 0.300000011920929, 0.2000000029802322, 0.5600000023841858, 35000, 1073741824, 4194305, \"long\", \"small\", 0 ] ]', 1000, 1, 6, NULL),
(46, 516, 'Dacia', '1310', 1989, 1500, 1, '2020-05-15 20:42:15', 2, '2020-05-25 07:23:09', 7, '\n', '[ [ 1400, 4000, 2, [ 0, 0.300000011920929, -0.1000000014901161 ], 75, 0.6499999761581421, 0.800000011920929, 0.5, 5, 500, 5, 25, \"fwd\", \"petrol\", 8, 0.6000000238418579, false, 30, 1.399999976158142, 0.1000000014901161, 0, 0.2700000107288361, -0.1000000014901161, 0.6000000238418579, 0.300000011920929, 0.2000000029802322, 0.5600000023841858, 35000, 0, 4194304, \"long\", \"small\", 0 ] ]', 1000, 1, 6, NULL),
(47, 529, 'Dacia', 'Duster', 2012, 29000, 1, '2020-05-15 20:43:28', 2, '2020-05-20 09:56:36', 6, '\n', '[ [ 1900, 4529.89990234375, 1.799999952316284, [ 0, 0, 0 ], 75, 0.6700000166893005, 0.75, 0.5199999809265137, 5, 500, 12, 30, \"awd\", \"petrol\", 15, 0.6000000238418579, false, 40, 1, 0.1000000014901161, 0, 0.3499999940395355, -0.1700000017881393, 0.5, 0.5, 0.2300000041723251, 0.449999988079071, 20000, 0, 276824064, \"big\", \"small\", 0 ] ]', 1000, 1, 6, NULL),
(48, 422, 'Dacia', 'Papuc', 2001, 8000, 1, '2020-05-15 20:44:16', 2, '2020-05-20 09:29:33', 6, '\n', '[ [ 1700, 4000, 2.099999904632568, [ 0, 0.05000000074505806, -0.2000000029802322 ], 75, 0.6499999761581421, 0.8500000238418579, 0.5699999928474426, 5, 500, 5, 15, \"fwd\", \"diesel\", 8.5, 0.5, false, 40, 1.5, 0.1000000014901161, 5, 0.3499999940395355, -0.1800000071525574, 0.4000000059604645, 0, 0.2599999904632568, 0.2000000029802322, 26000, 64, 1064964, \"long\", \"small\", 0 ] ]', 1000, 1, 6, NULL),
(49, 426, 'Dacia', 'Solenza', 2002, 2130, 2, '2020-05-15 20:44:39', 2, '2020-05-22 19:44:19', 7, '\n', '[ [ 1600, 3921.300048828125, 2, [ 0, -0.4000000059604645, 0 ], 75, 0.75, 0.8500000238418579, 0.5199999809265137, 5, 200, 8.800000190734863, 20, \"fwd\", \"petrol\", 15, 0.5, false, 35, 1.299999952316284, 0.119999997317791, 0, 0.2800000011920929, -0.05999999865889549, 0.4000000059604645, 0, 0.2000000029802322, 0.239999994635582, 25000, 1073741824, 270532616, \"long\", \"small\", 0 ] ]', 1000, 1, 6, NULL),
(50, 596, 'Dacia-Logan', 'Politie', 2014, 1, 1, '2020-05-15 20:45:12', 2, '2020-06-11 10:54:56', 12, '\n', '[ [ 1700, 4500, 1.5, [ 0, 0, 0 ], 75, 0.699999988079071, 0.8500000238418579, 0.5, 5, 220, 12.5, 16, \"awd\", \"petrol\", 12, 0.1000000014901161, false, 40, 3, 0.2000000029802322, 0, 0.2800000011920929, -0.06499999761581421, 0.4000000059604645, 0, 0.2000000029802322, 0.239999994635582, 25000, 1073741824, 270532616, \"long\", \"small\", 0 ] ]', 1000, 1, 0, NULL),
(51, 598, 'Dacia-Duster', 'Pompierii', 2012, 1, 1, '2020-05-15 20:47:07', 2, '2020-05-29 18:06:17', 7, '\n', '[ [ 1800, 4500, 1.799999952316284, [ 0, 0, 0 ], 75, 0.75, 0.8500000238418579, 0.5199999809265137, 5, 500, 13, 18, \"awd\", \"petrol\", 10, 0.5, false, 40, 1.5, 0.07999999821186066, 0, 0.2800000011920929, -0.1299999952316284, 0.6000000238418579, 0, 0.2000000029802322, 0.239999994635582, 25000, 1073741824, 270532616, \"long\", \"small\", 0 ] ]', 1000, 0, 0, NULL),
(52, 546, 'Dacia-Logan', 'Scoala', 2001, 1, 1, '2020-05-15 20:47:57', 2, '2020-05-23 09:52:36', 1, '\n', '[ { \"1\": 1800, \"2\": 4350, \"3\": 1.899999976158142, \"4\": [ 0, 0, 0 ], \"5\": 70, \"6\": 0.699999988079071, \"7\": 0.800000011920929, \"8\": 0.4900000095367432, \"9\": 5, \"10\": 500, \"11\": 7, \"12\": 25, \"13\": \"fwd\", \"14\": \"petrol\", \"15\": 5.400000095367432, \"16\": 0.6000000238418579, \"17\": false, \"18\": 40, \"19\": 1, \"20\": 0.09000000357627869, \"21\": 0, \"22\": 0.3199999928474426, \"23\": -0.1500000059604645, \"24\": 0.5, \"25\": 0, \"26\": 0.2599999904632568, \"27\": 0.5400000214576721, \"28\": 19000, \"29\": 0, \"30\": 2, \"31\": \"long\", \"33\": 0 } ]', 1000, 0, 0, NULL),
(53, 541, 'Bugatti', 'Chiron { DON }', 2018, 1, 1, '2020-05-15 20:50:09', 2, '2020-06-13 16:58:31', 12, '\n', '[ [ 1800, 2500, 0.5, [ 0, -0.1500000059604645, 0 ], 70, 0.75, 0.8999999761581421, 0.4799999892711639, 5, 5000, 30, 30, \"awd\", \"petrol\", 30, 0.6000000238418579, false, 40, 1, 0.1299999952316284, 5, 0.25, -0.1000000014901161, 0.4000000059604645, 0.300000011920929, 0.1500000059604645, 0.5400000214576721, 105000, 3221233668, 2113536, \"long\", \"long\", 1 ] ]', 1000, 1, 0, NULL),
(54, 419, 'Lamborghini', 'Huracan', 2014, 1150300, 115, '2020-05-15 20:50:56', 2, '2020-05-31 12:36:05', 7, '\n', '[ { \"1\": 1800, \"2\": 4350, \"3\": 0.699999988079071, \"4\": [ 0, 0, 0 ], \"5\": 70, \"6\": 0.550000011920929, \"7\": 0.8799999952316284, \"8\": 0.5199999809265137, \"9\": 5, \"10\": 500, \"11\": 20, \"12\": 30, \"13\": \"awd\", \"14\": \"petrol\", \"15\": 20, \"16\": 0.6000000238418579, \"17\": false, \"18\": 40, \"19\": 2, \"20\": 0.05000000074505806, \"21\": 1, \"22\": 0.3499999940395355, \"23\": -0.1000000089406967, \"24\": 0.5, \"25\": 0, \"26\": 0.3600000143051147, \"27\": 0.5400000214576721, \"28\": 19000, \"29\": 1073741824, \"30\": 268435456, \"31\": \"long\", \"33\": 0 } ]', 1000, 1, 7, NULL),
(55, 559, 'Lamborghini', 'Aventador', 2016, 2350391, 1, '2020-05-15 20:52:07', 2, '2020-06-14 12:50:00', 12, '\n', '[ [ 2000, 3600, 0.5, [ 0, 0, 0 ], 75, 0.8500000238418579, 0.800000011920929, 0.5, 5, 1000, 25, 1, \"awd\", \"petrol\", 30, 0.4000000059604645, false, 40, 1.799999952316284, 0.1000000014901161, 0, 0.2800000011920929, -0.1000000089406967, 0.5, 0.300000011920929, 0.25, 0.6000000238418579, 35000, 3221235716, 67108864, \"small\", \"small\", 1 ] ]', 1000, 1, 7, NULL),
(56, 411, 'Ferrari', 'California T {DON}', 2014, 1, 1, '2020-05-15 20:53:12', 2, '2020-06-04 12:00:16', 1, '\n', '[ [ 1900, 2725.300048828125, 0.800000011920929, [ 0, 0, -0.25 ], 70, 0.699999988079071, 0.800000011920929, 0.449999988079071, 5, 800, 25, 20, \"awd\", \"petrol\", 50, 0.5, false, 40, 1.200000047683716, 0.1899999976158142, 0, 0.25, -0.04000000283122063, 0.5, 0.4000000059604645, 0.3700000047683716, 0.7200000286102295, 95000, 1073750020, 12599296, \"small\", \"small\", 1 ] ]', 1000, 1, 0, NULL),
(57, 474, 'Rolls-Royce', 'Wraith Coupe { DON }', 2016, 1, 1, '2020-05-15 20:54:32', 2, '2020-05-27 14:04:54', 1, '\n', '[ { \"1\": 2200, \"2\": 4712.5, \"3\": 1.200000047683716, \"4\": [ 0, 0.300000011920929, 0 ], \"5\": 70, \"6\": 0.699999988079071, \"7\": 0.75, \"8\": 0.5099999904632568, \"9\": 5, \"10\": 500, \"11\": 15, \"12\": 10, \"13\": \"awd\", \"14\": \"petrol\", \"15\": 3.5, \"16\": 0.6000000238418579, \"17\": false, \"18\": 40, \"19\": 1.5, \"20\": 0.05000000074505806, \"21\": 0, \"22\": 0.3499999940395355, \"23\": -0.06000000238418579, \"24\": 0.6000000238418579, \"25\": 0, \"26\": 0.25, \"27\": 0.4199999868869781, \"28\": 19000, \"29\": 1073750016, \"30\": 1, \"31\": \"small\", \"33\": 0 } ]', 1000, 0, 0, NULL),
(58, 405, 'Renault', 'Laguna Mk2', 2016, 20000, 20, '2020-05-15 20:55:36', 2, '2020-06-13 22:04:17', 1, '\n', '[ [ 1900, 4000, 1.299999952316284, [ 0, 0, 0 ], 75, 0.6499999761581421, 0.75, 0.5, 5, 500, 14, 30, \"fwd\", \"petrol\", 10, 0.5, false, 27, 2, 0.07999999821186066, 0, 0.300000011920929, -0.1200000271201134, 0.5, 0.300000011920929, 0.2000000029802322, 0.5600000023841858, 35000, 0, 4194304, \"long\", \"small\", 0 ] ]', 1000, 1, 4, NULL),
(59, 566, 'Renault', 'Alaskan', 2019, 24000, 24, '2020-05-15 20:57:16', 2, '2020-06-16 19:05:28', 1, '\n', '[ [ 1800, 4000, 1.799999952316284, [ 0, 0, -0.800000011920929 ], 75, 0.8999999761581421, 0.8500000238418579, 0.5199999809265137, 5, 500, 13, 30, \"fwd\", \"petrol\", 7, 0.5, false, 45, 0.6000000238418579, 0.07999999821186066, 0, 0.2800000011920929, -0.300000011920929, 0.5, 0.300000011920929, 0.25, 0.6000000238418579, 35000, 0, 302055424, \"small\", \"small\", 0 ] ]', 1000, 1, 4, NULL),
(60, 481, 'BMX', 'BMX', 2019, 2600, 1, '2020-05-15 20:58:29', 2, '2020-05-19 19:49:09', 2, '\n', NULL, 1000, 1, 9, NULL),
(61, 521, 'Ninja', 'H2R', 2012, 100000, 1, '2020-05-15 20:58:58', 2, '2020-05-19 19:48:34', 2, '\n', NULL, 1000, 1, 9, NULL),
(62, 522, 'Kawasaki-Ninja', 'H2R', 2015, 125940, 1, '2020-05-15 20:59:33', 2, '2020-05-22 22:53:25', 1, '\n', '[ [ 350, 200, 4, [ 0, 0.07999999821186066, -0.09000000357627869 ], 103, 2, 0.8999999761581421, 0.5, 5, 250, 50, 25, \"rwd\", \"petrol\", 15, 0.5, false, 35, 0.8500000238418579, 0.1500000059604645, 0, 0.1500000059604645, -0.1599999964237213, 0.5, 0, 0, 0.1500000059604645, 10000, 16785408, 2, \"small\", \"small\", 4 ] ]', 1000, 1, 9, NULL),
(63, 471, 'CAN-AM', 'Outlander', 2005, 10000, 80, '2020-05-15 21:00:05', 2, '2020-05-19 19:32:48', 2, '\n', NULL, 1000, 1, 9, NULL),
(64, 468, 'KTM', 'KTM', 2005, 15000, 1, '2020-05-15 21:00:26', 2, '2020-05-19 19:47:22', 2, '\n', NULL, 1000, 1, 9, NULL),
(65, 437, 'Autobuz', 'Autobuz', 2003, 1, 1, '2020-05-15 21:00:58', 2, '0000-00-00 00:00:00', 0, '\n', NULL, 1000, 0, 0, NULL),
(66, 497, 'Elicopter', 'Politie', 2010, 1, 1, '2020-05-15 21:01:27', 2, '0000-00-00 00:00:00', 0, '\n', NULL, 1000, 0, 0, NULL),
(67, 525, 'Tow', 'Truck', 1995, 1, 1, '2020-05-15 21:05:28', 2, '2020-05-19 14:13:06', 4, '\n', NULL, 1000, 0, 0, NULL),
(68, 531, 'Tractor', 'Tractor', 1989, 1, 1, '2020-05-15 21:05:53', 2, '0000-00-00 00:00:00', 0, '\n', NULL, 1000, 0, 0, NULL),
(69, 407, 'Autospeciala', 'Iveco', 2005, 1, 1, '2020-05-15 21:06:23', 2, '2020-05-20 13:59:24', 6, '\n', '[ [ 6500, 36670.80078125, 3, [ 0, 0, 0 ], 90, 0.550000011920929, 0.800000011920929, 0.5, 5, 170, 10.80000019073486, 10, \"awd\", \"diesel\", 10, 0.4000000059604645, false, 27, 1.200000047683716, 0.07999999821186066, 0, 0.4699999988079071, -0.1700000017881393, 0.5, 0, 0.2000000029802322, 0.2599999904632568, 15000, 16536, 0, \"long\", \"small\", 2 ] ]', 1000, 0, 0, NULL),
(70, 427, 'Autospeciala', 'ISCTR Politie', 2010, 1, 1, '2020-05-15 21:06:55', 2, '2020-05-20 09:59:01', 6, '\n', '[ [ 4000, 17333.30078125, 1.799999952316284, [ 0, 0.1000000014901161, 0 ], 85, 0.550000011920929, 0.800000011920929, 0.4799999892711639, 5, 170, 8, 20, \"awd\", \"diesel\", 5.400000095367432, 0.4000000059604645, false, 27, 2, 0.1000000014901161, 0, 0.4000000059604645, -0.1000000014901161, 0.5, 0, 0.3199999928474426, 0.1599999964237213, 40000, 16401, 0, \"long\", \"small\", 13 ] ]', 1000, 0, 0, NULL),
(71, 599, 'ARO', '243', 1996, 1, 1, '2020-05-20 14:10:12', 6, '2020-06-11 10:58:31', 12, '\n', '[ [ 2500, 5500, 2.700000047683716, [ 0, 0, 0 ], 85, 0.6499999761581421, 0.8500000238418579, 0.449999988079071, 5, 500, 14, 25, \"awd\", \"diesel\", 6.199999809265137, 0.6000000238418579, false, 40, 2, 0.05999999865889549, 1, 0.300000011920929, -0.2000000029802322, 0.5, 0.25, 0.2700000107288361, 0.2300000041723251, 25000, 2637856, 3180544, \"long\", \"small\", 0 ] ]', 1000, 1, 0, NULL),
(72, 490, 'Dacia Duster', 'Politie', 1222, 1, 1, '2020-05-21 23:36:08', 1, '2020-06-12 15:35:02', 12, '\n', '[ [ 2500, 11156.2001953125, 1.600000023841858, [ 0, 0, -0.4000000059604645 ], 80, 0.699999988079071, 0.800000011920929, 0.5, 5, 500, 13, 26, \"awd\", \"petrol\", 15, 0.5, false, 40, 1, 0.1500000059604645, 0, 0.3400000035762787, -0.1900000125169754, 0.5, 0.5, 0.4399999976158142, 0.300000011920929, 40000, 16416, 5242880, \"long\", \"small\", 0 ] ]', 1000, 1, 0, NULL),
(73, 523, 'Motor-BMW', 'Politie', 1222, 1, 1, '2020-05-21 23:38:35', 1, '2020-05-22 16:00:50', 4, '\n', NULL, 1000, 0, 0, NULL),
(74, 443, 'Rampa', 'Vehicule', 2003, 1, 1, '2020-05-24 11:16:08', 4, '0000-00-00 00:00:00', 0, '\n', NULL, 1000, 0, 0, NULL),
(75, 442, 'Masina ', 'Mortuara', 2003, 1, 1, '2020-05-24 11:16:35', 4, '0000-00-00 00:00:00', 0, '\n', NULL, 1000, 0, 0, NULL),
(76, 420, 'Audi', 'A4 TAXI', 2005, 1, 1, '2020-05-25 19:06:06', 4, '0000-00-00 00:00:00', 0, '\n', NULL, 1000, 0, 0, NULL),
(77, 406, 'Duper', 'Event', 1993, 1, 1, '2020-05-29 18:49:20', 1, '0000-00-00 00:00:00', 0, '\n', NULL, 1000, 1, 0, NULL),
(78, 462, 'Suzuky', 'Scooter', 2010, 4000, 4, '2020-06-03 15:51:37', 1, '2020-06-13 20:28:34', 1, '\n', '[ [ 350, 119.5999984741211, 5, [ 0, 0.05000000074505806, -0.1000000014901161 ], 103, 1.799999952316284, 0.8999999761581421, 0.4799999892711639, 3, 190, 12, 5, \"rwd\", \"petrol\", 14, 0.5, false, 35, 1, 0.1500000059604645, 0, 0.119999997317791, -0.1700000017881393, 0.5, 0, 0, 0.1099999994039536, 10000, 16777216, 0, \"small\", \"small\", 5 ] ]', 1000, 1, 9, NULL),
(79, 480, 'Mazda', 'Mx5', 2016, 130123, 130, '2020-06-03 16:53:55', 1, '2020-06-06 05:32:39', 1, '\n', '[ [ 1400, 2200, 2.200000047683716, [ 0, 0, -0.2000000029802322 ], 75, 0.699999988079071, 0.8999999761581421, 0.5, 5, 500, 20, 10, \"awd\", \"petrol\", 8, 0.4000000059604645, false, 30, 1.399999976158142, 0.1400000005960464, 3, 0.2800000011920929, -0.1000000089406967, 0.5, 0.300000011920929, 0.25, 0.6000000238418579, 35000, 1073743872, 0, \"small\", \"small\", 19 ] ]', 1000, 1, 8, NULL),
(80, 576, 'Mazda', 'Rx8', 2007, 58987, 58, '2020-06-04 11:57:28', 1, '2020-06-06 05:56:00', 1, '\n', '[ [ 1700, 4166.39990234375, 2, [ 0, -0.1000000014901161, 0.1000000014901161 ], 70, 0.8700000047683716, 0.75, 0.5, 4, 260, 16, 16, \"rwd\", \"petrol\", 6, 0.6000000238418579, false, 40, 1.399999976158142, 0.07999999821186066, 0, 0.300000011920929, -0.1500000059604645, 0.5, 0.25, 0.300000011920929, 0.5199999809265137, 19000, 2228224, 33619968, \"small\", \"small\", 0 ] ]', 1000, 1, 8, NULL),
(81, 467, 'Mazda', '626', 1999, 5500, 5, '2020-06-04 11:57:47', 1, '2020-06-06 18:29:08', 7, '\n', '[ [ 3000, 4529.89990234375, 2, [ 0, 0, 0 ], 75, 0.800000011920929, 0.75, 0.449999988079071, 5, 230, 14, 5, \"awd\", \"petrol\", 50, 0.6000000238418579, false, 40, 2, 0.1000000014901161, 0, 0.3499999940395355, -0.1000000014901161, 0.5, 0.5, 0.2300000041723251, 0.449999988079071, 20000, 0, 276824064, \"big\", \"small\", 0 ] ]', 1000, 1, 8, NULL),
(82, 438, 'Dacia Solenta', 'Taxi', 2003, 1, 1, '2020-06-04 13:03:04', 1, '0000-00-00 00:00:00', 0, '\n', NULL, 1000, 1, 0, NULL),
(83, 571, 'Kart', 'Event', 1111, 1, 1, '2020-06-04 14:48:42', 1, '0000-00-00 00:00:00', 0, '\n', NULL, 1000, 1, 0, NULL),
(84, 461, 'Honda', 'WIN 100', 1997, 3590, 3, '2020-06-04 16:27:24', 1, '2020-06-04 17:41:39', 7, '\n', '[ [ 500, 161.6999969482422, 4, [ 0, 0.05000000074505806, -0.09000000357627869 ], 103, 1.600000023841858, 0.8999999761581421, 0.4799999892711639, 5, 190, 15, 5, \"rwd\", \"petrol\", 15, 0.5, false, 35, 0.8500000238418579, 0.1500000059604645, 0, 0.1500000059604645, -0.1599999964237213, 0.5, 0, 0, 0.1500000059604645, 10000, 16785408, 0, \"small\", \"small\", 4 ] ]', 1000, 1, 9, NULL),
(85, 463, 'Harley', 'Davidson', 1990, 65321, 65, '2020-06-04 16:28:15', 1, '2020-06-06 07:26:42', 7, '\n', NULL, 1000, 1, 9, NULL),
(86, 538, 'Tren', ' ', 2000, 1, 1, '2020-06-06 18:35:36', 1, '0000-00-00 00:00:00', 0, '\n', NULL, 1000, 1, 0, NULL),
(87, 435, 'Remorca', 'Remorca', 2000, 1, 1, '2020-06-08 19:53:13', 4, '0000-00-00 00:00:00', 0, '\n', NULL, 1000, 0, 0, NULL),
(88, 432, 'TAnk', 'TE BUBUIE', 1111, 11, 1, '2020-06-10 09:15:02', 12, '0000-00-00 00:00:00', 0, '\n', NULL, 1000, 0, 0, NULL),
(89, 604, 'Renault', 'Megane 2 Hatchback', 2003, 10300, 10, '2020-06-13 07:37:57', 1, '2020-06-13 22:04:08', 1, '\n', '[ [ 2500, 4000, 1.700000047683716, [ 0, 0, -1 ], 75, 0.800000011920929, 0.8399999737739563, 0.449999988079071, 5, 500, 12, 15, \"fwd\", \"petrol\", 6.199999809265137, 0.6000000238418579, false, 40, 1, 0.07000000029802322, 0, 0.3499999940395355, -0.119999997317791, 0.5, 0.5, 0.2300000041723251, 0.4000000059604645, 20000, 0, 276824066, \"small\", \"small\", 0 ] ]', 1000, 1, 4, NULL),
(90, 431, 'Autobuz', 'Politie', 2000, 1, 1, '2020-06-13 07:48:05', 1, '0000-00-00 00:00:00', 0, '\n', NULL, 1000, 1, 0, NULL),
(91, 457, 'Caruta', ' ', 1101, 250, 5, '2020-06-13 07:48:42', 1, '0000-00-00 00:00:00', 0, '\n', NULL, 1000, 1, 9, NULL),
(92, 418, 'Mcercedes-Benz', 'SRI Interventii', 2010, 1, 1, '2020-06-13 08:42:04', 1, '0000-00-00 00:00:00', 0, '\n', NULL, 1000, 1, 0, NULL),
(93, 582, 'Pro', 'TV', 2014, 1, 1, '2020-06-13 13:34:01', 1, '0000-00-00 00:00:00', 0, '\n', NULL, 1000, 1, 0, NULL),
(94, 487, 'Elicopter', '12', 2000, 1, 1, '2020-06-13 16:44:40', 4, '0000-00-00 00:00:00', 0, '\n', NULL, 1000, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_logs`
--

CREATE TABLE `vehicle_logs` (
  `log_id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `vehID` int(11) DEFAULT NULL,
  `action` text DEFAULT NULL,
  `actor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Stores all admin actions on vehicles - Monitored by Vehicle ';

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_notes`
--

CREATE TABLE `vehicle_notes` (
  `id` int(11) NOT NULL,
  `vehid` int(11) NOT NULL,
  `creator` int(11) NOT NULL DEFAULT 0,
  `note` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wiretransfers`
--

CREATE TABLE `wiretransfers` (
  `id` int(10) UNSIGNED NOT NULL,
  `from` int(11) DEFAULT 0,
  `to` int(11) DEFAULT 0,
  `amount` int(11) NOT NULL,
  `reason` text DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `type` int(11) NOT NULL,
  `from_card` varchar(45) DEFAULT NULL,
  `to_card` varchar(45) DEFAULT NULL,
  `details` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `worlditems`
--

CREATE TABLE `worlditems` (
  `id` int(11) NOT NULL,
  `itemid` int(11) DEFAULT 0,
  `itemvalue` text DEFAULT NULL,
  `x` float DEFAULT 0,
  `y` float DEFAULT 0,
  `z` float DEFAULT 0,
  `dimension` int(5) DEFAULT 0,
  `interior` int(5) DEFAULT 0,
  `creationdate` datetime DEFAULT NULL,
  `rx` float DEFAULT 0,
  `ry` float DEFAULT 0,
  `rz` float DEFAULT 0,
  `creator` int(10) UNSIGNED DEFAULT 0,
  `protected` int(100) NOT NULL DEFAULT 0,
  `perm_use` int(2) NOT NULL DEFAULT 1,
  `perm_move` int(2) NOT NULL DEFAULT 1,
  `perm_pickup` int(2) NOT NULL DEFAULT 1,
  `perm_use_data` text DEFAULT NULL,
  `perm_move_data` text DEFAULT NULL,
  `perm_pickup_data` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `worlditems_data`
--

CREATE TABLE `worlditems_data` (
  `id` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `key` varchar(100) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adminhistory`
--
ALTER TABLE `adminhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `advertisements`
--
ALTER TABLE `advertisements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `apb`
--
ALTER TABLE `apb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `applications`
--
ALTER TABLE `applications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `applications_questions`
--
ALTER TABLE `applications_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `atms`
--
ALTER TABLE `atms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `atm_cards`
--
ALTER TABLE `atm_cards`
  ADD PRIMARY KEY (`card_id`),
  ADD UNIQUE KEY `card_id_UNIQUE` (`card_id`);

--
-- Indexes for table `bans`
--
ALTER TABLE `bans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blips`
--
ALTER TABLE `blips`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- Indexes for table `businesses`
--
ALTER TABLE `businesses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `business_accounts`
--
ALTER TABLE `business_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `business_members`
--
ALTER TABLE `business_members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `business_rentals`
--
ALTER TABLE `business_rentals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `characters`
--
ALTER TABLE `characters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clothing`
--
ALTER TABLE `clothing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `commands`
--
ALTER TABLE `commands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `computers`
--
ALTER TABLE `computers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cpa_postbacks`
--
ALTER TABLE `cpa_postbacks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- Indexes for table `dancers`
--
ALTER TABLE `dancers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donates`
--
ALTER TABLE `donates`
  ADD PRIMARY KEY (`order_id`),
  ADD UNIQUE KEY `txn_id` (`txn_id`);

--
-- Indexes for table `donators`
--
ALTER TABLE `donators`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `don_purchases`
--
ALTER TABLE `don_purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `don_transactions`
--
ALTER TABLE `don_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `don_transaction_failed`
--
ALTER TABLE `don_transaction_failed`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `duty_custom`
--
ALTER TABLE `duty_custom`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- Indexes for table `duty_locations`
--
ALTER TABLE `duty_locations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- Indexes for table `elections`
--
ALTER TABLE `elections`
  ADD PRIMARY KEY (`idelections`);

--
-- Indexes for table `elevators`
--
ALTER TABLE `elevators`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emailaccounts`
--
ALTER TABLE `emailaccounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emails`
--
ALTER TABLE `emails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `factions`
--
ALTER TABLE `factions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedbacks`
--
ALTER TABLE `feedbacks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `force_apps`
--
ALTER TABLE `force_apps`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- Indexes for table `friends`
--
ALTER TABLE `friends`
  ADD PRIMARY KEY (`id`,`friend`);

--
-- Indexes for table `fuelpeds`
--
ALTER TABLE `fuelpeds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fuelstations`
--
ALTER TABLE `fuelstations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gates`
--
ALTER TABLE `gates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `insurance_data`
--
ALTER TABLE `insurance_data`
  ADD PRIMARY KEY (`policyid`);

--
-- Indexes for table `insurance_factions`
--
ALTER TABLE `insurance_factions`
  ADD PRIMARY KEY (`factionID`);

--
-- Indexes for table `interiors`
--
ALTER TABLE `interiors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `interior_business`
--
ALTER TABLE `interior_business`
  ADD PRIMARY KEY (`intID`),
  ADD UNIQUE KEY `intID_UNIQUE` (`intID`);

--
-- Indexes for table `interior_logs`
--
ALTER TABLE `interior_logs`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `interior_notes`
--
ALTER TABLE `interior_notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `interior_textures`
--
ALTER TABLE `interior_textures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`index`);

--
-- Indexes for table `jailed`
--
ALTER TABLE `jailed`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs_trucker_orders`
--
ALTER TABLE `jobs_trucker_orders`
  ADD PRIMARY KEY (`orderID`);

--
-- Indexes for table `leo_impound_lot`
--
ALTER TABLE `leo_impound_lot`
  ADD PRIMARY KEY (`lane`);

--
-- Indexes for table `lifts`
--
ALTER TABLE `lifts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lift_floors`
--
ALTER TABLE `lift_floors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `maps_names`
--
ALTER TABLE `maps_names`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `maps_objects`
--
ALTER TABLE `maps_objects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `maps_removes`
--
ALTER TABLE `maps_removes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mdc_apb`
--
ALTER TABLE `mdc_apb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mdc_calls`
--
ALTER TABLE `mdc_calls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mdc_crimes`
--
ALTER TABLE `mdc_crimes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mdc_criminals`
--
ALTER TABLE `mdc_criminals`
  ADD UNIQUE KEY `name` (`character`),
  ADD KEY `phone` (`phone`);

--
-- Indexes for table `mdc_faa_events`
--
ALTER TABLE `mdc_faa_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mdc_faa_licenses`
--
ALTER TABLE `mdc_faa_licenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mdc_impounds`
--
ALTER TABLE `mdc_impounds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mdc_users`
--
ALTER TABLE `mdc_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `motds`
--
ALTER TABLE `motds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `motd_read`
--
ALTER TABLE `motd_read`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `objects`
--
ALTER TABLE `objects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paynspray`
--
ALTER TABLE `paynspray`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pd_tickets`
--
ALTER TABLE `pd_tickets`
  ADD PRIMARY KEY (`id`,`time`);

--
-- Indexes for table `peds`
--
ALTER TABLE `peds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ped_inventory`
--
ALTER TABLE `ped_inventory`
  ADD PRIMARY KEY (`index`);

--
-- Indexes for table `phones`
--
ALTER TABLE `phones`
  ADD PRIMARY KEY (`phonenumber`),
  ADD UNIQUE KEY `phonenumber_UNIQUE` (`phonenumber`);

--
-- Indexes for table `phone_contacts`
--
ALTER TABLE `phone_contacts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- Indexes for table `phone_history`
--
ALTER TABLE `phone_history`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ID_UNIQUE` (`id`);

--
-- Indexes for table `phone_sms`
--
ALTER TABLE `phone_sms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ID_UNIQUE` (`id`);

--
-- Indexes for table `pilot_notams`
--
ALTER TABLE `pilot_notams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `publicphones`
--
ALTER TABLE `publicphones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `radio_stations`
--
ALTER TABLE `radio_stations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- Indexes for table `ramps`
--
ALTER TABLE `ramps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restricted_freqs`
--
ALTER TABLE `restricted_freqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sapt_destinations`
--
ALTER TABLE `sapt_destinations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sapt_locations`
--
ALTER TABLE `sapt_locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sapt_routes`
--
ALTER TABLE `sapt_routes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `serial_whitelist`
--
ALTER TABLE `serial_whitelist`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sfia_pilots`
--
ALTER TABLE `sfia_pilots`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shops`
--
ALTER TABLE `shops`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_contacts_info`
--
ALTER TABLE `shop_contacts_info`
  ADD PRIMARY KEY (`npcID`);

--
-- Indexes for table `shop_products`
--
ALTER TABLE `shop_products`
  ADD PRIMARY KEY (`pID`),
  ADD UNIQUE KEY `pID_UNIQUE` (`pID`);

--
-- Indexes for table `speedcams`
--
ALTER TABLE `speedcams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `speedingviolations`
--
ALTER TABLE `speedingviolations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_changelogs`
--
ALTER TABLE `staff_changelogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stats`
--
ALTER TABLE `stats`
  ADD PRIMARY KEY (`district`);

--
-- Indexes for table `suspectcrime`
--
ALTER TABLE `suspectcrime`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tagging`
--
ALTER TABLE `tagging`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tc_comments`
--
ALTER TABLE `tc_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tc_tickets`
--
ALTER TABLE `tc_tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tempobjects`
--
ALTER TABLE `tempobjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `textures_animated`
--
ALTER TABLE `textures_animated`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`tid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
