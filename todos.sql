-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 27 avr. 2023 à 14:18
-- Version du serveur : 10.4.24-MariaDB
-- Version de PHP : 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `auto_comment`
--
CREATE DATABASE IF NOT EXISTS `auto_comment` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `auto_comment`;

-- --------------------------------------------------------

--
-- Structure de la table `bills`
--

CREATE TABLE `bills` (
  `nr` int(11) NOT NULL,
  `date` date NOT NULL,
  `sum` float NOT NULL,
  `fk_CONTRACTnumber` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `brands`
--

CREATE TABLE `brands` (
  `name` varchar(200) NOT NULL,
  `id_BRAND` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `brands`
--

INSERT INTO `brands` (`name`, `id_BRAND`) VALUES
('Audi', 2),
('Škoda', 3),
('BMW', 4),
('Renault', 5),
('Mercedes', 6),
('Volkswagen', 7),
('Citroën', 8),
('Toyota', 9),
('Peugeot', 10),
('Opel', 11),
('Chrysler', 12),
('Dodge', 13),
('Jeep', 14),
('Chevrolet', 15),
('Ford', 16),
('Nissan', 17),
('Honda', 18),
('Hyundai', 19),
('Mazda', 20),
('Suzuki', 21),
('Mitsubishi', 22),
('Subaru', 23),
('Lexus', 24),
('Fiat', 25),
('Seat', 26),
('Aston Martin', 27),
('Dodge', 28),
('Buick', 29),
('Bentley', 30),
('Kia', 31),
('GMC', 32),
('Cadillac', 33),
('Volvo', 34),
('Tesla', 35),
('Jaguar', 36),
('Saab', 37),
('Scania', 38),
('Porche', 39),
('Land Rover', 40),
('Lada', 41),
('Moskvitch', 42),
('AvtoVAZ', 43),
('Dacia', 44),
('Trabant', 45),
('UAZ', 46);

-- --------------------------------------------------------

--
-- Structure de la table `cars`
--

CREATE TABLE `cars` (
  `state_number` varchar(50) NOT NULL,
  `manufacturing_date` date NOT NULL,
  `milage` int(11) NOT NULL,
  `radio` tinyint(1) DEFAULT NULL,
  `music_player` tinyint(1) DEFAULT NULL,
  `conditioner` tinyint(1) DEFAULT NULL,
  `number_of_seats` int(11) NOT NULL,
  `registration_date` date NOT NULL,
  `value` float DEFAULT NULL,
  `gear_box` int(11) NOT NULL,
  `fuel_type` int(11) NOT NULL,
  `car_body_type` int(11) NOT NULL,
  `luggage_size` int(11) NOT NULL,
  `state` int(11) NOT NULL,
  `id_CAR` int(11) NOT NULL,
  `fk_MODELid_MODEL` int(11) NOT NULL,
  `fk_CAR_GROUPid_CAR_GROUP` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `cars`
--

INSERT INTO `cars` (`state_number`, `manufacturing_date`, `milage`, `radio`, `music_player`, `conditioner`, `number_of_seats`, `registration_date`, `value`, `gear_box`, `fuel_type`, `car_body_type`, `luggage_size`, `state`, `id_CAR`, `fk_MODELid_MODEL`, `fk_CAR_GROUPid_CAR_GROUP`) VALUES
('ELK456', '2022-08-18', 1321313, 1, 1, 0, 4564, '2022-02-17', 12354700, 1, 2, 2, 4, 1, 0, 2, 0),
('BJD564', '2022-02-23', 4564, 0, 0, 0, 4, '2022-02-17', 215, 1, 2, 1, 2, 3, 1, 2, 0),
('DJM183', '2002-11-04', 10500, 1, 1, 1, 4, '2005-06-26', 1200, 1, 1, 2, 5, 1, 2, 3, 0);

-- --------------------------------------------------------

--
-- Structure de la table `car_body_types`
--

CREATE TABLE `car_body_types` (
  `id_CAR_BODY_TYPES` int(11) NOT NULL,
  `name` char(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `car_body_types`
--

INSERT INTO `car_body_types` (`id_CAR_BODY_TYPES`, `name`) VALUES
(1, 'Dedan'),
(2, 'Hatchback'),
(3, 'Wagon'),
(4, 'SUV'),
(5, 'Pickup'),
(6, 'Coupe'),
(7, 'Cabriolet');

-- --------------------------------------------------------

--
-- Structure de la table `car_groups`
--

CREATE TABLE `car_groups` (
  `name` varchar(255) NOT NULL,
  `id_CAR_GROUP` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `car_groups`
--

INSERT INTO `car_groups` (`name`, `id_CAR_GROUP`) VALUES
('BMW', 1);

-- --------------------------------------------------------

--
-- Structure de la table `car_states`
--

CREATE TABLE `car_states` (
  `id_CAR_STATE` int(11) NOT NULL,
  `name` char(14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `car_states`
--

INSERT INTO `car_states` (`id_CAR_STATE`, `name`) VALUES
(1, 'Availabe'),
(2, 'Rented'),
(3, 'In_maintenance'),
(4, 'In_checkup');

-- --------------------------------------------------------

--
-- Structure de la table `cities`
--

CREATE TABLE `cities` (
  `name` varchar(250) NOT NULL,
  `id_CITY` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `cities`
--

INSERT INTO `cities` (`name`, `id_CITY`) VALUES
('Kaunas', 1),
('Vilnius', 2);

-- --------------------------------------------------------

--
-- Structure de la table `contracts`
--

CREATE TABLE `contracts` (
  `number` int(11) NOT NULL,
  `contract_date` date NOT NULL,
  `rent_date_time` datetime NOT NULL,
  `return_date_time` datetime NOT NULL,
  `factual_return_date_time` datetime NOT NULL,
  `strating_milage` int(11) NOT NULL,
  `return_milage` int(11) NOT NULL,
  `price` float NOT NULL,
  `gas_amount_before_rent` float NOT NULL,
  `gar_amount_after_return` float NOT NULL,
  `state` int(11) NOT NULL,
  `fk_EMPLOYEEemploee_id` int(11) NOT NULL,
  `fk_CARid_CAR` int(11) NOT NULL,
  `fk_PARKING_LOTid_PARKING_LOT` int(11) NOT NULL,
  `fk_CUSTOMERpasport_id` int(11) NOT NULL,
  `fk_PARKING_LOTid_PARKING_LOT1` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `contracts`
--

INSERT INTO `contracts` (`number`, `contract_date`, `rent_date_time`, `return_date_time`, `factual_return_date_time`, `strating_milage`, `return_milage`, `price`, `gas_amount_before_rent`, `gar_amount_after_return`, `state`, `fk_EMPLOYEEemploee_id`, `fk_CARid_CAR`, `fk_PARKING_LOTid_PARKING_LOT`, `fk_CUSTOMERpasport_id`, `fk_PARKING_LOTid_PARKING_LOT1`) VALUES
(11, '2022-02-05', '2022-02-12 17:05:16', '2022-02-05 17:05:20', '2022-01-31 17:05:21', 12, 1213, 12, 123, 454, 1, 554725, 0, 1, 393361456, 2),
(222, '2025-03-25', '2022-02-12 14:21:45', '2022-02-12 14:21:48', '2022-02-05 14:21:50', 123123, 1, 1, 456456, 23, 1, 554725, 0, 1, 372186452, 2),
(12313, '2022-02-04', '2022-03-01 17:06:05', '2022-03-05 17:06:08', '2022-02-12 17:06:09', 1231, 1231, 12, 4645, 4564, 1, 331716, 1, 2, 387548435, 1),
(454564, '2022-03-25', '2022-03-19 14:05:06', '2022-02-19 14:05:08', '2022-02-10 14:05:09', 11, 1, 12, 1, 1, 1, 554726, 0, 1, 345987216, 2),
(1234578, '2022-06-25', '2022-02-05 12:52:57', '2022-02-12 12:53:00', '2022-02-24 12:53:03', 1213, 7897, 211, 456456, 456465, 1, 554726, 1, 1, 381946257, 2),
(5445646, '2022-03-08', '2022-02-12 14:14:47', '2022-02-11 14:14:49', '2022-02-05 14:14:50', 456, 546, 213, 123, 46, 1, 554727, 1, 1, 394562175, 2),
(123131354, '2024-04-05', '2022-02-05 14:17:21', '2022-02-05 14:17:24', '2022-02-12 14:17:26', 213, 67, 5464, 456, 78, 1, 554728, 0, 1, 396158745, 2);

-- --------------------------------------------------------

--
-- Structure de la table `contract_states`
--

CREATE TABLE `contract_states` (
  `id_CONTRACT_STATES` int(11) NOT NULL,
  `name` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `contract_states`
--

INSERT INTO `contract_states` (`id_CONTRACT_STATES`, `name`) VALUES
(1, 'Ordered'),
(2, 'Confirmed'),
(3, 'Terminated'),
(4, 'Finished');

-- --------------------------------------------------------

--
-- Structure de la table `customers`
--

CREATE TABLE `customers` (
  `pasport_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `surname` varchar(255) NOT NULL,
  `birth_date` date DEFAULT NULL,
  `phone_number` varchar(50) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `customers`
--

INSERT INTO `customers` (`pasport_id`, `name`, `surname`, `birth_date`, `phone_number`, `email`) VALUES
(345987216, 'Jeremy', 'Miller', '1975-06-13', '873542984', 'jamie975@hotmail.co.uk'),
(372186452, 'George', 'Williams', '2001-03-15', '869761854', 'hrongus@ktu.lt'),
(381946257, 'Josh', 'Davis', '2000-01-02', '864593512', 'j.davis@gmail.com'),
(387548435, 'John', 'Smith', '1977-10-19', '861194536', 'scroingus@ktu.lt'),
(393361456, 'James', 'Brown', '1987-02-24', '8846468468', 'bingus@ktu.lt'),
(394562175, 'Matt', 'Parker', '1983-11-12', '869421444', 'contact@mattparker.com'),
(396158745, 'Tom', 'Jones', '1996-10-04', '869712019', 'tomjones@yahoo.com');

-- --------------------------------------------------------

--
-- Structure de la table `employees`
--

CREATE TABLE `employees` (
  `name` varchar(250) NOT NULL,
  `surname` varchar(250) NOT NULL,
  `employee_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `employees`
--

INSERT INTO `employees` (`name`, `surname`, `employee_id`) VALUES
('Henry J.', 'Waternoose', 331716),
('James P.', 'Sullivan', 554725),
('Michael', 'Wazowski', 554726),
('Randall', 'Boggs', 554727),
('George', 'Sanderson', 554728);

-- --------------------------------------------------------

--
-- Structure de la table `extra_fees`
--

CREATE TABLE `extra_fees` (
  `price` float NOT NULL,
  `amount` int(11) NOT NULL,
  `fk_FEEid_FEE` int(11) NOT NULL,
  `fk_CONTRACTnumber` int(11) NOT NULL,
  `Id_EXTRA_FEE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `fees`
--

CREATE TABLE `fees` (
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `id_FEE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `fuel_types`
--

CREATE TABLE `fuel_types` (
  `id_FUEL_TYPES` int(11) NOT NULL,
  `name` char(17) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `fuel_types`
--

INSERT INTO `fuel_types` (`id_FUEL_TYPES`, `name`) VALUES
(1, 'Gasoline'),
(2, 'Gasoline_Electirc'),
(3, 'Diesel'),
(4, 'Gas'),
(5, 'Electirc');

-- --------------------------------------------------------

--
-- Structure de la table `gear_box_types`
--

CREATE TABLE `gear_box_types` (
  `id_GEAR_BOX_TYPE` int(11) NOT NULL,
  `name` char(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `gear_box_types`
--

INSERT INTO `gear_box_types` (`id_GEAR_BOX_TYPE`, `name`) VALUES
(1, 'Automatic'),
(2, 'Manual');

-- --------------------------------------------------------

--
-- Structure de la table `hoteldbs`
--

CREATE TABLE `hoteldbs` (
  `db_names` varchar(50) DEFAULT NULL,
  `created_dates` date DEFAULT NULL,
  `id_HotelDBs` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `hoteldbs`
--

INSERT INTO `hoteldbs` (`db_names`, `created_dates`, `id_HotelDBs`) VALUES
('Celinka L\'Archer', '2023-03-01', 1),
('The Luxury Collection', '2023-03-02', 2),
('Dedra-Prando', '2023-06-16', 3),
('Babs Gaunson', '2023-05-06', 4),
('Cathlene Heffernon', '2023-06-02', 5),
('SleepyCrew ', '2023-03-14', 6),
('Ritz-Carlton', '2023-03-16', 7),
('Neila ', '2023-03-21', 8),
('Ethelin Feaveer', '2023-03-31', 9),
('Ddene_Vinker', '2023-09-14', 10),
('Electra-Chilvers', '2023-03-02', 11),
('Basilio Groomebridge', '2023-03-31', 12),
('Disney’s Wilderness', '2023-03-10', 13),
('Harvey Trimming', '2023-03-31', 14),
('Fredek Nelissen', '2023-03-09', 15),
('Hollywood Plaza ', '2023-03-09', 16),
('W ', '2023-04-03', 17),
('Land’s End Resort', '2023-03-14', 18),
('Regency', '2023-04-07', 19),
('Ace', '2023-03-15', 20);

-- --------------------------------------------------------

--
-- Structure de la table `hotels`
--

CREATE TABLE `hotels` (
  `id_Hotels` int(11) NOT NULL,
  `names` varchar(50) DEFAULT NULL,
  `adress` varchar(50) DEFAULT NULL,
  `phone_numbers` varchar(50) DEFAULT NULL,
  `fk_HotelDBsid_HotelDBs` int(11) NOT NULL,
  `fk_Employeesid_Employees` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `hotels`
--

INSERT INTO `hotels` (`id_Hotels`, `names`, `adress`, `phone_numbers`, `fk_HotelDBsid_HotelDBs`, `fk_Employeesid_Employees`) VALUES
(8, 'Celinka L\'Archer Hotel', '41538 Meadow Valley Junction', '+1-339-348-2901', 1, 31),
(9, 'The Luxury Collection Garden', '86792 Talisman Terrace', '+46-906-825-0814', 2, 32),
(10, 'Dedra-Prando Hotel', '8087 Tennessee Park', '+7-331-271-5578', 3, 33),
(11, 'Babs Gaunson Hotel', '7293 High Crossing Place', '+33-482-662-5270', 4, 34),
(12, 'Cathlene Heffernon Hotel', '498 Stoughton Hill', '+7-312-149-1413', 5, 35),
(13, 'SleepyCrew  Hotel', '16 Huxley Alley', '+1-386-330-2336', 6, 36),
(14, 'Ritz-Carlton Hotel', '8 Kings Way', '+880-802-595-7506', 7, 37),
(15, 'Neila  Hotel', '90 Declaration Plaza', '+60-793-348-9092', 8, 38),
(16, 'Ethelin Feaveer Hotel', '778 Old Gate Place', '+62-503-642-5073', 9, 39),
(17, 'Ddene_Vinker Hotel', '68624 Alpine Terrace', '+63-358-378-1719', 10, 40),
(18, 'Electra-Chilvers Garden', '84 Marquette Pass', '+86-956-465-4613', 11, 41),
(19, 'Basilio Groomebridge Hotel', '4617 Fallview Crossing', '+7-559-562-1327', 12, 42),
(20, 'Disney’s Wilderness Hotel', '854 Stang Circle', '+86-296-764-4479', 13, 43),
(21, 'Harvey Trimming Hotel', '23 Monument Trail', '+62-911-740-1207', 14, 44),
(22, 'Fredek Nelissen Hotel ', '627 Nelson Park', '+359-251-667-4117', 15, 45),
(23, 'Hollywood Plaza', '6145 Carioca Center', '+351-165-367-4374', 16, 46),
(24, 'W Hotel', '0072 Meadow Valley Alley', '+33-466-432-6517', 17, 47),
(25, 'Land’s End Resort Hotel', '5497 Nancy Lane', '+62-429-526-0327', 18, 48),
(26, 'Regency Hotel', '1223 Thompson Parkway', '+7-292-271-2230', 19, 49),
(27, 'Ace Hotel', '5501 American Junction', '+351-264-512-0455', 20, 50);

-- --------------------------------------------------------

--
-- Structure de la table `interval_influences`
--

CREATE TABLE `interval_influences` (
  `minimum_value` int(11) NOT NULL,
  `maximum_value` int(11) NOT NULL,
  `coeficient` float NOT NULL,
  `fk_PARAMETERid_PARAMETER` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `luggages`
--

CREATE TABLE `luggages` (
  `id_LUGGAGE` int(11) NOT NULL,
  `name` char(28) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `luggages`
--

INSERT INTO `luggages` (`id_LUGGAGE`, `name`) VALUES
(1, '1_small_suitcases'),
(2, '2_small_suitcases'),
(3, '1_large_suitcases'),
(4, '2_large_suitcases'),
(5, '1_small_and_1_large_suitcase'),
(6, '3_large_suitcases'),
(7, '4_large_suitcases');

-- --------------------------------------------------------

--
-- Structure de la table `models`
--

CREATE TABLE `models` (
  `name` varchar(200) NOT NULL,
  `id_MODEL` int(11) NOT NULL,
  `fk_BRANDid_BRAND` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `models`
--

INSERT INTO `models` (`name`, `id_MODEL`, `fk_BRANDid_BRAND`) VALUES
('A4', 1, 2),
('M5', 2, 4),
('C3', 3, 8),
('C4', 4, 8),
('C5', 5, 8),
('Laguna', 6, 5),
('Duster', 7, 5),
('Triber', 8, 5),
('Kiger', 9, 5),
('KWID', 10, 5),
('A3', 11, 2),
('A5', 12, 2),
('A6', 13, 2),
('A7', 14, 2),
('A8', 15, 2),
('TT', 16, 2),
('R8', 17, 2),
('Octavia', 18, 3),
('Corolla', 19, 9),
('Camry', 20, 9),
('Highlander', 21, 9),
('Yaris', 22, 9),
('Fortuner', 23, 9),
('Astra', 24, 11),
('Challenger', 25, 13),
('Viper', 26, 13),
('Charger', 27, 13),
('Mustang', 28, 16),
('Focus', 29, 16),
('Fiesta', 30, 16),
('Raptor', 31, 16),
('Explorer', 32, 16),
('Ranger', 33, 16),
('Escape', 34, 16),
('Swift', 35, 21),
('Impreza', 36, 23),
('Mirage', 37, 22),
('Lancer', 38, 22),
('Outlander', 39, 22),
('Model 3', 40, 35),
('Model S', 41, 35),
('Model X', 42, 35),
('Roadster', 43, 35),
('Cybertruck', 44, 35);

-- --------------------------------------------------------

--
-- Structure de la table `parameters`
--

CREATE TABLE `parameters` (
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `id_PARAMETER` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `parking_lots`
--

CREATE TABLE `parking_lots` (
  `name` varchar(250) NOT NULL,
  `address` varchar(200) NOT NULL,
  `id_PARKING_LOT` int(11) NOT NULL,
  `fk_CITYid_CITY` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `parking_lots`
--

INSERT INTO `parking_lots` (`name`, `address`, `id_PARKING_LOT`, `fk_CITYid_CITY`) VALUES
('Kauno Akropolio aikstele', 'Kauno g. 1', 1, 1),
('Vilniaus Akropolio aikstele', 'Vilnius 1 g.', 2, 2);

-- --------------------------------------------------------

--
-- Structure de la table `payments`
--

CREATE TABLE `payments` (
  `date` date NOT NULL,
  `sum` float NOT NULL,
  `id_PAYMENT` int(11) NOT NULL,
  `fk_CUSTOMERpasport_id` int(11) NOT NULL,
  `fk_BILLnr` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `rental_offices`
--

CREATE TABLE `rental_offices` (
  `name` varchar(200) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone_number` varchar(50) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `id_RENTAL_OFFICE` int(11) NOT NULL,
  `fk_RENTAL_OFFICEid_RENTAL_OFFICE` int(11) NOT NULL,
  `fk_CITYid_CITY` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `rent_fees`
--

CREATE TABLE `rent_fees` (
  `rate` float NOT NULL,
  `valid_from` date NOT NULL,
  `valid_to` date NOT NULL,
  `fk_CAR_GROUPid_CAR_GROUP` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `rent_fees`
--

INSERT INTO `rent_fees` (`rate`, `valid_from`, `valid_to`, `fk_CAR_GROUPid_CAR_GROUP`) VALUES
(12, '2022-02-24', '2022-02-26', 1);

-- --------------------------------------------------------

--
-- Structure de la table `selected_services`
--

CREATE TABLE `selected_services` (
  `amount` int(11) NOT NULL,
  `price` float NOT NULL,
  `fk_SERVICE_PRICEvalid_from` date NOT NULL,
  `fk_CONTRACTnumber` int(11) NOT NULL,
  `fk_ID_SERVICE` int(11) NOT NULL,
  `Id_SELECTED_SERVICE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `selected_services`
--

INSERT INTO `selected_services` (`amount`, `price`, `fk_SERVICE_PRICEvalid_from`, `fk_CONTRACTnumber`, `fk_ID_SERVICE`, `Id_SELECTED_SERVICE`) VALUES
(1, 1, '2012-02-02', 5445646, 1, 1),
(45, 213, '2012-01-01', 11, 2, 3),
(65, 14, '2012-01-04', 11, 2, 4),
(2, 1, '2012-02-02', 222, 1, 15),
(1, 213, '2012-01-01', 222, 2, 16),
(4, 2, '2012-03-02', 5445646, 1, 17),
(1, 1, '2012-02-02', 123131354, 1, 18),
(2, 14, '2012-01-04', 123131354, 2, 19),
(3, 213, '2012-01-01', 123131354, 2, 20),
(4, 213, '2012-01-01', 123131354, 2, 21);

-- --------------------------------------------------------

--
-- Structure de la table `services`
--

CREATE TABLE `services` (
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `id_SERVICE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `services`
--

INSERT INTO `services` (`name`, `description`, `id_SERVICE`) VALUES
('GPS', 'A TomTom GPS system will be mounted to the dashboard', 1),
('GO PRO', 'Additional service of renting a GO PRO camera mounted to the dashboard', 2),
('Child seat', 'A child seat will be added to the back of the car', 4),
('Roof rack', 'A roof top luggage carrier will be mounted on top of the car', 5);

-- --------------------------------------------------------

--
-- Structure de la table `service_prices`
--

CREATE TABLE `service_prices` (
  `valid_from` date NOT NULL,
  `valid_to` date NOT NULL,
  `price` float NOT NULL,
  `fk_SERVICEid_SERVICE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `service_prices`
--

INSERT INTO `service_prices` (`valid_from`, `valid_to`, `price`, `fk_SERVICEid_SERVICE`) VALUES
('1993-06-06', '0000-00-00', 21, 4),
('2012-01-01', '0000-00-00', 213, 2),
('2012-01-04', '0000-00-00', 14, 2),
('2012-02-02', '0000-00-00', 1, 1),
('2012-03-02', '0000-00-00', 2, 1);

-- --------------------------------------------------------

--
-- Structure de la table `supervisors`
--

CREATE TABLE `supervisors` (
  `fk_PARKING_LOTid_PARKING_LOT` int(11) NOT NULL,
  `fk_EMPLOYEEemploee_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `value_influences`
--

CREATE TABLE `value_influences` (
  `value` int(11) NOT NULL,
  `coeficient` float NOT NULL,
  `fk_PARAMETERid_PARAMETER` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`nr`),
  ADD KEY `billed_for` (`fk_CONTRACTnumber`);

--
-- Index pour la table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id_BRAND`);

--
-- Index pour la table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`id_CAR`),
  ADD KEY `gear_box` (`gear_box`),
  ADD KEY `fuel_type` (`fuel_type`),
  ADD KEY `car_body_type` (`car_body_type`),
  ADD KEY `luggage_size` (`luggage_size`),
  ADD KEY `state` (`state`),
  ADD KEY `are_part_of` (`fk_CAR_GROUPid_CAR_GROUP`),
  ADD KEY `are_of` (`fk_MODELid_MODEL`);

--
-- Index pour la table `car_body_types`
--
ALTER TABLE `car_body_types`
  ADD PRIMARY KEY (`id_CAR_BODY_TYPES`);

--
-- Index pour la table `car_groups`
--
ALTER TABLE `car_groups`
  ADD PRIMARY KEY (`id_CAR_GROUP`);

--
-- Index pour la table `car_states`
--
ALTER TABLE `car_states`
  ADD PRIMARY KEY (`id_CAR_STATE`);

--
-- Index pour la table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id_CITY`);

--
-- Index pour la table `contracts`
--
ALTER TABLE `contracts`
  ADD PRIMARY KEY (`number`),
  ADD KEY `state` (`state`),
  ADD KEY `contracted_with` (`fk_CARid_CAR`),
  ADD KEY `described_in` (`fk_PARKING_LOTid_PARKING_LOT`),
  ADD KEY `signs` (`fk_CUSTOMERpasport_id`),
  ADD KEY `described` (`fk_PARKING_LOTid_PARKING_LOT1`),
  ADD KEY `confirms` (`fk_EMPLOYEEemploee_id`);

--
-- Index pour la table `contract_states`
--
ALTER TABLE `contract_states`
  ADD PRIMARY KEY (`id_CONTRACT_STATES`);

--
-- Index pour la table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`pasport_id`);

--
-- Index pour la table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`employee_id`);

--
-- Index pour la table `extra_fees`
--
ALTER TABLE `extra_fees`
  ADD PRIMARY KEY (`Id_EXTRA_FEE`),
  ADD KEY `added_to` (`fk_FEEid_FEE`),
  ADD KEY `applied_to` (`fk_CONTRACTnumber`);

--
-- Index pour la table `fees`
--
ALTER TABLE `fees`
  ADD PRIMARY KEY (`id_FEE`);

--
-- Index pour la table `fuel_types`
--
ALTER TABLE `fuel_types`
  ADD PRIMARY KEY (`id_FUEL_TYPES`);

--
-- Index pour la table `gear_box_types`
--
ALTER TABLE `gear_box_types`
  ADD PRIMARY KEY (`id_GEAR_BOX_TYPE`);

--
-- Index pour la table `interval_influences`
--
ALTER TABLE `interval_influences`
  ADD PRIMARY KEY (`minimum_value`),
  ADD KEY `includes` (`fk_PARAMETERid_PARAMETER`);

--
-- Index pour la table `luggages`
--
ALTER TABLE `luggages`
  ADD PRIMARY KEY (`id_LUGGAGE`);

--
-- Index pour la table `models`
--
ALTER TABLE `models`
  ADD PRIMARY KEY (`id_MODEL`),
  ADD KEY `produces` (`fk_BRANDid_BRAND`);

--
-- Index pour la table `parameters`
--
ALTER TABLE `parameters`
  ADD PRIMARY KEY (`id_PARAMETER`);

--
-- Index pour la table `parking_lots`
--
ALTER TABLE `parking_lots`
  ADD PRIMARY KEY (`id_PARKING_LOT`),
  ADD KEY `has_lots` (`fk_CITYid_CITY`);

--
-- Index pour la table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id_PAYMENT`),
  ADD KEY `paid` (`fk_CUSTOMERpasport_id`),
  ADD KEY `for_payment_of` (`fk_BILLnr`);

--
-- Index pour la table `rental_offices`
--
ALTER TABLE `rental_offices`
  ADD PRIMARY KEY (`id_RENTAL_OFFICE`),
  ADD KEY `part_of` (`fk_RENTAL_OFFICEid_RENTAL_OFFICE`),
  ADD KEY `exists_in` (`fk_CITYid_CITY`);

--
-- Index pour la table `rent_fees`
--
ALTER TABLE `rent_fees`
  ADD PRIMARY KEY (`valid_from`),
  ADD KEY `rented_for` (`fk_CAR_GROUPid_CAR_GROUP`);

--
-- Index pour la table `selected_services`
--
ALTER TABLE `selected_services`
  ADD PRIMARY KEY (`Id_SELECTED_SERVICE`),
  ADD KEY `applied_for` (`fk_SERVICE_PRICEvalid_from`),
  ADD KEY `Included_in` (`fk_CONTRACTnumber`),
  ADD KEY `selected_in` (`fk_ID_SERVICE`);

--
-- Index pour la table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id_SERVICE`);

--
-- Index pour la table `service_prices`
--
ALTER TABLE `service_prices`
  ADD PRIMARY KEY (`valid_from`),
  ADD KEY `provided_for` (`fk_SERVICEid_SERVICE`);

--
-- Index pour la table `supervisors`
--
ALTER TABLE `supervisors`
  ADD PRIMARY KEY (`fk_PARKING_LOTid_PARKING_LOT`,`fk_EMPLOYEEemploee_id`);

--
-- Index pour la table `value_influences`
--
ALTER TABLE `value_influences`
  ADD PRIMARY KEY (`value`),
  ADD KEY `has` (`fk_PARAMETERid_PARAMETER`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `bills`
--
ALTER TABLE `bills`
  ADD CONSTRAINT `billed_for` FOREIGN KEY (`fk_CONTRACTnumber`) REFERENCES `contracts` (`number`);

--
-- Contraintes pour la table `cars`
--
ALTER TABLE `cars`
  ADD CONSTRAINT `are_of` FOREIGN KEY (`fk_MODELid_MODEL`) REFERENCES `models` (`id_MODEL`),
  ADD CONSTRAINT `cars_ibfk_1` FOREIGN KEY (`gear_box`) REFERENCES `gear_box_types` (`id_GEAR_BOX_TYPE`),
  ADD CONSTRAINT `cars_ibfk_2` FOREIGN KEY (`fuel_type`) REFERENCES `fuel_types` (`id_FUEL_TYPES`),
  ADD CONSTRAINT `cars_ibfk_3` FOREIGN KEY (`car_body_type`) REFERENCES `car_body_types` (`id_CAR_BODY_TYPES`),
  ADD CONSTRAINT `cars_ibfk_4` FOREIGN KEY (`luggage_size`) REFERENCES `luggages` (`id_LUGGAGE`),
  ADD CONSTRAINT `cars_ibfk_5` FOREIGN KEY (`state`) REFERENCES `car_states` (`id_CAR_STATE`);

--
-- Contraintes pour la table `contracts`
--
ALTER TABLE `contracts`
  ADD CONSTRAINT `confirms` FOREIGN KEY (`fk_EMPLOYEEemploee_id`) REFERENCES `employees` (`employee_id`),
  ADD CONSTRAINT `contracted_with` FOREIGN KEY (`fk_CARid_CAR`) REFERENCES `cars` (`id_CAR`),
  ADD CONSTRAINT `contracts_ibfk_1` FOREIGN KEY (`state`) REFERENCES `contract_states` (`id_CONTRACT_STATES`),
  ADD CONSTRAINT `described` FOREIGN KEY (`fk_PARKING_LOTid_PARKING_LOT1`) REFERENCES `parking_lots` (`id_PARKING_LOT`),
  ADD CONSTRAINT `described_in` FOREIGN KEY (`fk_PARKING_LOTid_PARKING_LOT`) REFERENCES `parking_lots` (`id_PARKING_LOT`),
  ADD CONSTRAINT `signs` FOREIGN KEY (`fk_CUSTOMERpasport_id`) REFERENCES `customers` (`pasport_id`);

--
-- Contraintes pour la table `extra_fees`
--
ALTER TABLE `extra_fees`
  ADD CONSTRAINT `added_to` FOREIGN KEY (`fk_FEEid_FEE`) REFERENCES `fees` (`id_FEE`),
  ADD CONSTRAINT `applied_to` FOREIGN KEY (`fk_CONTRACTnumber`) REFERENCES `contracts` (`number`);

--
-- Contraintes pour la table `interval_influences`
--
ALTER TABLE `interval_influences`
  ADD CONSTRAINT `includes` FOREIGN KEY (`fk_PARAMETERid_PARAMETER`) REFERENCES `parameters` (`id_PARAMETER`);

--
-- Contraintes pour la table `models`
--
ALTER TABLE `models`
  ADD CONSTRAINT `produces` FOREIGN KEY (`fk_BRANDid_BRAND`) REFERENCES `brands` (`id_BRAND`);

--
-- Contraintes pour la table `parking_lots`
--
ALTER TABLE `parking_lots`
  ADD CONSTRAINT `has_lots` FOREIGN KEY (`fk_CITYid_CITY`) REFERENCES `cities` (`id_CITY`);

--
-- Contraintes pour la table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `for_payment_of` FOREIGN KEY (`fk_BILLnr`) REFERENCES `bills` (`nr`),
  ADD CONSTRAINT `paid` FOREIGN KEY (`fk_CUSTOMERpasport_id`) REFERENCES `customers` (`pasport_id`);

--
-- Contraintes pour la table `rental_offices`
--
ALTER TABLE `rental_offices`
  ADD CONSTRAINT `exists_in` FOREIGN KEY (`fk_CITYid_CITY`) REFERENCES `cities` (`id_CITY`),
  ADD CONSTRAINT `part_of` FOREIGN KEY (`fk_RENTAL_OFFICEid_RENTAL_OFFICE`) REFERENCES `rental_offices` (`id_RENTAL_OFFICE`);

--
-- Contraintes pour la table `rent_fees`
--
ALTER TABLE `rent_fees`
  ADD CONSTRAINT `rented_for` FOREIGN KEY (`fk_CAR_GROUPid_CAR_GROUP`) REFERENCES `car_groups` (`id_CAR_GROUP`);

--
-- Contraintes pour la table `selected_services`
--
ALTER TABLE `selected_services`
  ADD CONSTRAINT `Included_in` FOREIGN KEY (`fk_CONTRACTnumber`) REFERENCES `contracts` (`number`),
  ADD CONSTRAINT `applied_for` FOREIGN KEY (`fk_SERVICE_PRICEvalid_from`) REFERENCES `service_prices` (`valid_from`),
  ADD CONSTRAINT `selected_in` FOREIGN KEY (`fk_ID_SERVICE`) REFERENCES `services` (`id_SERVICE`);

--
-- Contraintes pour la table `service_prices`
--
ALTER TABLE `service_prices`
  ADD CONSTRAINT `provided_for` FOREIGN KEY (`fk_SERVICEid_SERVICE`) REFERENCES `services` (`id_SERVICE`);

--
-- Contraintes pour la table `supervisors`
--
ALTER TABLE `supervisors`
  ADD CONSTRAINT `supervises` FOREIGN KEY (`fk_PARKING_LOTid_PARKING_LOT`) REFERENCES `parking_lots` (`id_PARKING_LOT`);

--
-- Contraintes pour la table `value_influences`
--
ALTER TABLE `value_influences`
  ADD CONSTRAINT `has` FOREIGN KEY (`fk_PARAMETERid_PARAMETER`) REFERENCES `parameters` (`id_PARAMETER`);
--
-- Base de données : `bdd`
--
CREATE DATABASE IF NOT EXISTS `bdd` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bdd`;
--
-- Base de données : `bikerental`
--
CREATE DATABASE IF NOT EXISTS `bikerental` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bikerental`;

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '5c428d8875d2948607f3e3fe134d71b4', '2017-06-18 12:22:38');

-- --------------------------------------------------------

--
-- Structure de la table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(100) DEFAULT NULL,
  `VehicleId` int(11) DEFAULT NULL,
  `FromDate` varchar(20) DEFAULT NULL,
  `ToDate` varchar(20) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tblbooking`
--

INSERT INTO `tblbooking` (`id`, `userEmail`, `VehicleId`, `FromDate`, `ToDate`, `message`, `Status`, `PostingDate`) VALUES
(1, 'test@gmail.com', 2, '22/06/2017', '25/06/2017', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco', 1, '2017-06-19 20:15:43'),
(2, 'test@gmail.com', 3, '30/06/2017', '02/07/2017', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco', 2, '2017-06-26 20:15:43'),
(3, 'test@gmail.com', 4, '02/07/2017', '07/07/2017', 'Lorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ', 0, '2017-06-26 21:10:06');

-- --------------------------------------------------------

--
-- Structure de la table `tblbrands`
--

CREATE TABLE `tblbrands` (
  `id` int(11) NOT NULL,
  `BrandName` varchar(120) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tblbrands`
--

INSERT INTO `tblbrands` (`id`, `BrandName`, `CreationDate`, `UpdationDate`) VALUES
(1, 'KTM', '2017-06-18 16:24:34', '2017-06-19 06:42:23'),
(2, 'Bajaj', '2017-06-18 16:24:50', NULL),
(3, 'Honda', '2017-06-18 16:25:03', NULL),
(4, 'Suzuki', '2017-06-18 16:25:13', NULL),
(5, 'Yamaha', '2017-06-18 16:25:24', NULL),
(7, 'Ducati', '2017-06-19 06:22:13', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `tblcontactusinfo`
--

CREATE TABLE `tblcontactusinfo` (
  `id` int(11) NOT NULL,
  `Address` tinytext DEFAULT NULL,
  `EmailId` varchar(255) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tblcontactusinfo`
--

INSERT INTO `tblcontactusinfo` (`id`, `Address`, `EmailId`, `ContactNo`) VALUES
(1, 'Test Demo test demo																									', 'test@test.com', '8585233222');

-- --------------------------------------------------------

--
-- Structure de la table `tblcontactusquery`
--

CREATE TABLE `tblcontactusquery` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `ContactNumber` char(11) DEFAULT NULL,
  `Message` longtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tblcontactusquery`
--

INSERT INTO `tblcontactusquery` (`id`, `name`, `EmailId`, `ContactNumber`, `Message`, `PostingDate`, `status`) VALUES
(1, 'Harry Den', 'webhostingamigo@gmail.com', '2147483647', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '2017-06-18 10:03:07', 1);

-- --------------------------------------------------------

--
-- Structure de la table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(1, 'Terms and Conditions', 'terms', '<P align=justify><FONT size=2><STRONG><FONT color=#990000>(1) ACCEPTANCE OF TERMS</FONT><BR><BR></STRONG>Last updated: December 05, 2017\nPlease read these Terms and Conditions (\"Terms\", \"Terms and Conditions\") carefully before using the ->code-projects.org/ website (the \"Service\") operated by Code Projects (\"us\", \"we\", or \"our\").\nYour access to and use of the Service is conditioned on your acceptance of and compliance with these Terms. These Terms apply to all visitors, users and others who access or use the Service.\nBy accessing or using the Service you agree to be bound by these Terms. If you disagree with any part of the terms then you may not access the Service. Terms and Conditions from TermsFeed for Code Projects. Links To Other Web Sites\nOur Service may contain links to third-party web sites or services that are not owned or controlled by Code Projects.\nCode Projects has no control over, and assumes no responsibility for, the content, privacy policies, or practices of any third party web sites or services. You further acknowledge and agree that Code Projects shall not be responsible or liable, directly or indirectly, for any damage or loss caused or alleged to be caused by or in connection with use of or reliance on any such content, goods or services available on or through any such web sites or services.\nWe strongly advise you to read the terms and conditions and privacy policies of any third-party web sites or services that you visit. Governing Law\nThese Terms shall be governed and construed in accordance with the laws of New York, United States, without regard to its conflict of law provisions.\nOur failure to enforce any right or provision of these Terms will not be considered a waiver of those rights. If any provision of these Terms is held to be invalid or unenforceable by a court, the remaining provisions of these Terms will remain in effect. These Terms constitute the entire agreement between us regarding our Service, and supersede and replace any prior agreements we might have between us regarding the Service. Changes\nWe reserve the right, at our sole discretion, to modify or replace these Terms at any time. If a revision is material we will try to provide at least 30 days notice prior to any new terms taking effect. What constitutes a material change will be determined at our sole discretion.\nBy continuing to access or use our Service after those revisions become effective, you agree to be bound by the revised terms. If you do not agree to the new terms, please stop using the Service. Contact Us\nIf you have any questions about these Terms, please contact us. </FONT></P>'),
(2, 'Privacy Policy', 'privacy', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat</span>'),
(3, 'About Us ', 'aboutus', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">WE ARE THE BIKE RENTAL MANAGER. The only 100% dedicated bike rental booking website. The first Bike Rental Manager (BRM) shop was our own bike shop. Ever Since it has been our aim to make bike rental easier for everyone, everywhere.We focus on making bike rentals easier for you.Your rental business has a unique set of challenges. We are the only dedicated bike rental site and will be able to offer you a solution to match your needs.Get in touch with us today! We provide affordable bike rates, we hae lost of Satiisfied customers feedback, you can have a look at our home page too!! </span>'),
(11, 'FAQs', 'faqs', '																														<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">How do I use discounts coupons?\nExcept for promotion codes, Our discounts are applied automatically if your reservation meets any of the criteria mentioned above.\n\nTo use a promotion code, simply enter the code on the homepage widget as you start your reservation. You can do this by selecting the \"Have a promotion code?\" prompt. Promotion codes can also be entered on the checkout page, under Reservation Total. Please note that the promotion code prompt does not appear for certain types of reservations, such as reservations made on the Deals page.\n<br>\nOur Discounts Terms & Conditions\nWe no longer offer or accept returning customer discounts. All discounts are non-transferable and cannot be combined with additional promotions or discounts.</br>\n\n* Liability in case accident:\nThe hirer should have coverage through his own accident and liability insurance.\nThe renting company is not responsible under any circumstances for accidents or damages caused to the hirer or which the hirer causes to any third party or cases of liability </span>');

-- --------------------------------------------------------

--
-- Structure de la table `tblsubscribers`
--

CREATE TABLE `tblsubscribers` (
  `id` int(11) NOT NULL,
  `SubscriberEmail` varchar(120) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tblsubscribers`
--

INSERT INTO `tblsubscribers` (`id`, `SubscriberEmail`, `PostingDate`) VALUES
(1, 'anuj.lpu1@gmail.com', '2017-06-22 16:35:32');

-- --------------------------------------------------------

--
-- Structure de la table `tbltestimonial`
--

CREATE TABLE `tbltestimonial` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) NOT NULL,
  `Testimonial` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tbltestimonial`
--

INSERT INTO `tbltestimonial` (`id`, `UserEmail`, `Testimonial`, `PostingDate`, `status`) VALUES
(1, 'test@gmail.com', 'This is amazing! I mean really such great bike for rent at affordable price. oh this is crazy man!', '2017-06-18 07:44:31', 1),
(2, 'demo@gmail.com', '\nI think this is the one and only top bike rental site in the world. 5-Stars from me - Full satisfaction, no complain at all', '2017-06-18 07:46:05', 1);

-- --------------------------------------------------------

--
-- Structure de la table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `EmailId`, `Password`, `ContactNo`, `dob`, `Address`, `City`, `Country`, `RegDate`, `UpdationDate`) VALUES
(1, 'Harry Den', 'demo@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2147483647', NULL, NULL, NULL, NULL, '2017-06-17 19:59:27', '2017-06-26 21:02:58'),
(2, 'AK', 'anuj@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '8285703354', NULL, NULL, NULL, NULL, '2017-06-17 20:00:49', '2017-06-26 21:03:09'),
(3, 'Mark K', 'webhostingamigo@gmail.com', 'f09df7868d52e12bba658982dbd79821', '09999857868', '03/02/1990', 'PKL', 'PKL', 'PKL', '2017-06-17 20:01:43', '2017-06-17 21:07:41'),
(4, 'Tom K', 'test@gmail.com', '5c428d8875d2948607f3e3fe134d71b4', '9999857868', '', 'PKL', 'XYZ', 'XYZ', '2017-06-17 20:03:36', '2017-06-26 19:18:14');

-- --------------------------------------------------------

--
-- Structure de la table `tblvehicles`
--

CREATE TABLE `tblvehicles` (
  `id` int(11) NOT NULL,
  `VehiclesTitle` varchar(150) DEFAULT NULL,
  `VehiclesBrand` int(11) DEFAULT NULL,
  `VehiclesOverview` longtext DEFAULT NULL,
  `PricePerDay` int(11) DEFAULT NULL,
  `FuelType` varchar(100) DEFAULT NULL,
  `ModelYear` int(6) DEFAULT NULL,
  `SeatingCapacity` int(11) DEFAULT NULL,
  `Vimage1` varchar(120) DEFAULT NULL,
  `Vimage2` varchar(120) DEFAULT NULL,
  `Vimage3` varchar(120) DEFAULT NULL,
  `Vimage4` varchar(120) DEFAULT NULL,
  `Vimage5` varchar(120) DEFAULT NULL,
  `AirConditioner` int(11) DEFAULT NULL,
  `PowerDoorLocks` int(11) DEFAULT NULL,
  `AntiLockBrakingSystem` int(11) DEFAULT NULL,
  `BrakeAssist` int(11) DEFAULT NULL,
  `PowerSteering` int(11) DEFAULT NULL,
  `DriverAirbag` int(11) DEFAULT NULL,
  `PassengerAirbag` int(11) DEFAULT NULL,
  `PowerWindows` int(11) DEFAULT NULL,
  `CDPlayer` int(11) DEFAULT NULL,
  `CentralLocking` int(11) DEFAULT NULL,
  `CrashSensor` int(11) DEFAULT NULL,
  `LeatherSeats` int(11) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tblvehicles`
--

INSERT INTO `tblvehicles` (`id`, `VehiclesTitle`, `VehiclesBrand`, `VehiclesOverview`, `PricePerDay`, `FuelType`, `ModelYear`, `SeatingCapacity`, `Vimage1`, `Vimage2`, `Vimage3`, `Vimage4`, `Vimage5`, `AirConditioner`, `PowerDoorLocks`, `AntiLockBrakingSystem`, `BrakeAssist`, `PowerSteering`, `DriverAirbag`, `PassengerAirbag`, `PowerWindows`, `CDPlayer`, `CentralLocking`, `CrashSensor`, `LeatherSeats`, `RegDate`, `UpdationDate`) VALUES
(1, 'SS400', 2, 'Slowly spreading its cards this year, the Ace of Bajaj Autos is still not on the table. With the expectations like Pulsar 400SS or Pulsar SS400, the Ace (400SS) would be the commander of the Pulsar series. It would be a benchmark for the other motorcycle manufacturers as the competition for more performance oriented bikes will definitely rise this year.', 345345, 'Petrol', 3453, 2, 'knowledges_base_bg.jpg', '20170523_145633.jpg', 'codepro.png', 'social-icons.png', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2017-06-19 11:46:23', '2017-06-20 18:38:13'),
(2, 'RS200', 2, 'The Pulsar is by far the most successful brand Bajaj has managed to create in the recent past.It is also fast, no doubt. But, its true highlight is its easy to ride nature. ', 859, 'Petrol', 2015, 2, 'bike_755x430.png', 'looking-used-bike.png', 'front-image.jpg', 'about_services_faq_bg.jpg', '', 1, 1, 1, 1, 1, 1, 1, NULL, 1, 1, NULL, NULL, '2017-06-19 16:16:17', '2017-06-21 16:57:11'),
(3, 'R1', 4, ' The Suzuki GSX-R1000 is a sport bike from Suzuki GSX-R series of motorcycles.It was introduced in 2001 to replace the GSX-R1100 and is powered by a liquid-cooled 999 cc (61.0 cu in) inline four-cylinder, four-stroke engine.', 563, 'Petrol', 2012, 2, 'featured-img-300.jpg', 'dealer-logos.jpg', 'img_390x3900.jpg', 'listing_img303.jpg', '', 1, 1, 1, 1, 1, 1, NULL, 1, 1, NULL, NULL, NULL, '2017-06-19 16:18:20', '2017-06-20 18:40:11'),
(4, 'Duke390', 1, ' The KTM 390 DUKE breathes life into values that have made motorcycling so amazing for decades. It combines maximum riding pleasure with optimum user value and comes out on top wherever nimble handling counts. Light as a feather, powerful and packed with state-of-the-art technology, it guarantees a thrilling ride, whether youre in the urban jungle or a forest of bends. 390 DUKE – nowhere you will find more motorcycle per euro.', 5636, 'Petrol', 2012, 2, 'featured-img-3000.jpg', 'featured-img-1000.png', 'featured-img-1000.png', 'featured-img-1000.png', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL, NULL, NULL, '2017-06-19 16:18:43', '2017-06-20 18:44:12'),
(5, 'R1', 5, 'The YZF-R1® features a lightweight and compact crossplane crankshaft, inline-four-cylinder, 998cc high output engine. Featuring titanium fracture-split connecting rods, an offset cylinder block and magnesium covers, the motor delivers extremely high horsepower and a strong pulse of linear torque for outstanding performance, all wrapped in aerodynamic MotoGP®-style bodywork.', 345345, 'Petrol', 3453, 2, 'bikes_755x430.png', NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2017-06-20 17:57:09', '2017-06-21 16:56:43');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tblbrands`
--
ALTER TABLE `tblbrands`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `tblbrands`
--
ALTER TABLE `tblbrands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT pour la table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Base de données : `hospitol`
--
CREATE DATABASE IF NOT EXISTS `hospitol` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `hospitol`;

-- --------------------------------------------------------

--
-- Structure de la table `admit_invo_db`
--

CREATE TABLE `admit_invo_db` (
  `Invo_no` int(11) NOT NULL,
  `pet_no` int(11) NOT NULL,
  `pet_name` varchar(100) NOT NULL,
  `p_age` int(3) NOT NULL,
  `price_of_med` int(11) NOT NULL,
  `price_of_doc` int(11) NOT NULL,
  `day_count` int(11) NOT NULL,
  `price_of_room` int(11) NOT NULL,
  `ser_char` int(11) NOT NULL,
  `totl` int(11) NOT NULL,
  `invo_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `admit_pet`
--

CREATE TABLE `admit_pet` (
  `admit_petid` int(11) NOT NULL,
  `admit_name` varchar(500) NOT NULL,
  `admit_age` int(3) NOT NULL,
  `admit_con` varchar(15) NOT NULL,
  `admit_bg` varchar(3) NOT NULL,
  `admit_rn` varchar(10) NOT NULL,
  `pet_id` int(11) NOT NULL,
  `admit_date` date NOT NULL,
  `pet_des` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `hospi_room`
--

CREATE TABLE `hospi_room` (
  `room_id` int(11) NOT NULL,
  `room_name` varchar(100) NOT NULL,
  `room_avilabl` varchar(20) DEFAULT NULL,
  `rc_time_mo` varchar(10) NOT NULL DEFAULT '11.30 AM',
  `rc_time_ev` varchar(10) DEFAULT '06.30 PM',
  `room_drid` int(11) DEFAULT NULL,
  `eroom_drid` int(11) DEFAULT NULL,
  `room_petID` varchar(11) DEFAULT 'No Patient'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `hospi_room`
--

INSERT INTO `hospi_room` (`room_id`, `room_name`, `room_avilabl`, `rc_time_mo`, `rc_time_ev`, `room_drid`, `eroom_drid`, `room_petID`) VALUES
(1, 'Room No: 1', 'AV', '11.30 AM', '06.30 PM', NULL, NULL, 'No Patient'),
(2, 'Room No: 2', 'AV', '11.30 AM', '06.30 PM', NULL, NULL, 'No Patient'),
(3, 'Room No: 3', 'AV', '11.30 AM', '06.30 PM', NULL, NULL, 'No Patient'),
(4, 'Room No: 4', 'AV', '11.30 AM', '06.30 PM', NULL, NULL, 'No Patient'),
(5, 'Room No: 5', 'AV', '11.30 AM', '06.30 PM', NULL, NULL, 'No Patient'),
(6, 'Room No: 6', 'AV', '11.30 AM', '06.30 PM', NULL, NULL, 'No Patient'),
(7, 'Room No: 7', 'AV', '11.30 AM', '06.30 PM', NULL, NULL, 'No Patient'),
(8, 'Room No: 8', 'AV', '11.30 AM', '06.30 PM', NULL, NULL, 'No Patient'),
(9, 'Room No: 9', 'AV', '11.30 AM', '06.30 PM', NULL, NULL, 'No Patient'),
(10, 'Room No: 10', 'AV', '11.30 AM', '06.30 PM', NULL, NULL, 'No Patient');

-- --------------------------------------------------------

--
-- Structure de la table `lvl2_admin`
--

CREATE TABLE `lvl2_admin` (
  `lvtwname` varchar(100) NOT NULL,
  `lvtwusern` varchar(100) NOT NULL,
  `lvtwemail` varchar(200) NOT NULL,
  `lvtwpass` varchar(50) NOT NULL,
  `lvtwid` int(11) NOT NULL,
  `lvtwcdate` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `lvl2_admin`
--

INSERT INTO `lvl2_admin` (`lvtwname`, `lvtwusern`, `lvtwemail`, `lvtwpass`, `lvtwid`, `lvtwcdate`) VALUES
('Jayendra', 'BasicAdmin', 'test@gmail.com', '202cb962ac59075b964b07152d234b70', 1, '2017-10-04');

-- --------------------------------------------------------

--
-- Structure de la table `patient`
--

CREATE TABLE `patient` (
  `pet_id` int(11) NOT NULL,
  `pet_reg_date` datetime DEFAULT current_timestamp(),
  `pet_fn` varchar(100) DEFAULT NULL,
  `pet_sn` varchar(100) DEFAULT NULL,
  `pet_addr` varchar(500) DEFAULT NULL,
  `pet_ac` varchar(3) DEFAULT '+94',
  `pet_con` int(10) DEFAULT NULL,
  `pet_em` varchar(1000) DEFAULT NULL,
  `pet_gen` varchar(10) DEFAULT NULL,
  `pet_bd` date DEFAULT NULL,
  `pet_age` int(3) DEFAULT NULL,
  `pet_bg` varchar(3) DEFAULT NULL,
  `Pet_opdid` int(11) DEFAULT NULL,
  `Insert_admunname` varchar(100) DEFAULT NULL,
  `Update_sadmunname` varchar(100) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `pet_invo`
--

CREATE TABLE `pet_invo` (
  `invo_id` int(11) NOT NULL,
  `invo_Pet_name` varchar(500) NOT NULL,
  `invo_pet_id` int(100) NOT NULL DEFAULT 1,
  `invo_pet_age` int(3) NOT NULL,
  `invo_date` date NOT NULL,
  `medi_charge` int(10) NOT NULL,
  `doc_charge` int(10) NOT NULL,
  `hos_charge` int(10) NOT NULL DEFAULT 1500,
  `total_charge` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `staff`
--

CREATE TABLE `staff` (
  `staffID` int(11) NOT NULL,
  `smfname` varchar(50) NOT NULL,
  `smlname` varchar(50) NOT NULL,
  `smtype` varchar(20) NOT NULL,
  `smbd` date NOT NULL,
  `telcode` varchar(3) NOT NULL DEFAULT '+94',
  `smtel` varchar(15) NOT NULL,
  `smemail` varchar(200) NOT NULL,
  `smgender` varchar(6) NOT NULL,
  `smwoti` varchar(10) NOT NULL,
  `smaddr` varchar(600) NOT NULL,
  `instetd_by` varchar(100) DEFAULT NULL,
  `insterted_date` timestamp NULL DEFAULT current_timestamp(),
  `update_by` varchar(100) DEFAULT NULL,
  `update_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `sup_admin`
--

CREATE TABLE `sup_admin` (
  `sadid` int(11) NOT NULL,
  `sadiun` varchar(20) NOT NULL,
  `sadipw` varchar(500) NOT NULL,
  `sadem` varchar(50) NOT NULL,
  `saname` varchar(100) DEFAULT NULL,
  `cret_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `sup_admin`
--

INSERT INTO `sup_admin` (`sadid`, `sadiun`, `sadipw`, `sadem`, `saname`, `cret_date`) VALUES
(1, 'superAdmin', '202cb962ac59075b964b07152d234b70', 'jayendramatarage@gmail.com', 'Jayendra', '2017-10-04 22:49:20');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `admit_invo_db`
--
ALTER TABLE `admit_invo_db`
  ADD PRIMARY KEY (`Invo_no`),
  ADD KEY `pet_no` (`pet_no`);

--
-- Index pour la table `admit_pet`
--
ALTER TABLE `admit_pet`
  ADD PRIMARY KEY (`admit_petid`),
  ADD KEY `pet_id` (`pet_id`);

--
-- Index pour la table `hospi_room`
--
ALTER TABLE `hospi_room`
  ADD PRIMARY KEY (`room_id`),
  ADD KEY `room_drid` (`room_drid`),
  ADD KEY `eroom_id` (`eroom_drid`),
  ADD KEY `room_petID` (`room_petID`);

--
-- Index pour la table `lvl2_admin`
--
ALTER TABLE `lvl2_admin`
  ADD PRIMARY KEY (`lvtwid`);

--
-- Index pour la table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`pet_id`),
  ADD KEY `Pet_opdid` (`Pet_opdid`);

--
-- Index pour la table `pet_invo`
--
ALTER TABLE `pet_invo`
  ADD PRIMARY KEY (`invo_id`),
  ADD KEY `invo_pet_id` (`invo_pet_id`);

--
-- Index pour la table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`staffID`);

--
-- Index pour la table `sup_admin`
--
ALTER TABLE `sup_admin`
  ADD PRIMARY KEY (`sadid`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `admit_invo_db`
--
ALTER TABLE `admit_invo_db`
  MODIFY `Invo_no` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `admit_pet`
--
ALTER TABLE `admit_pet`
  MODIFY `admit_petid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `hospi_room`
--
ALTER TABLE `hospi_room`
  MODIFY `room_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `lvl2_admin`
--
ALTER TABLE `lvl2_admin`
  MODIFY `lvtwid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `patient`
--
ALTER TABLE `patient`
  MODIFY `pet_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `pet_invo`
--
ALTER TABLE `pet_invo`
  MODIFY `invo_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `staff`
--
ALTER TABLE `staff`
  MODIFY `staffID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `sup_admin`
--
ALTER TABLE `sup_admin`
  MODIFY `sadid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Base de données : `hotel_msweb`
--
CREATE DATABASE IF NOT EXISTS `hotel_msweb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `hotel_msweb`;

-- --------------------------------------------------------

--
-- Structure de la table `bills`
--

CREATE TABLE `bills` (
  `amounts` float NOT NULL,
  `date_issueds` date NOT NULL,
  `id_Bills` int(11) NOT NULL,
  `fk_Payementsid_Payements` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `bills`
--

INSERT INTO `bills` (`amounts`, `date_issueds`, `id_Bills`, `fk_Payementsid_Payements`) VALUES
(500, '2023-03-01', 101, 6),
(652, '2023-07-08', 102, 7),
(74, '2023-04-20', 103, 8),
(1256, '2023-03-15', 104, 9),
(2563, '2023-03-15', 105, 10),
(1265, '2023-06-09', 106, 11),
(452, '2023-03-14', 107, 12),
(785, '2023-08-11', 108, 13),
(123, '2023-05-04', 109, 14),
(856, '2023-03-23', 110, 15),
(653, '2023-03-08', 111, 16),
(523, '2023-06-16', 112, 17),
(52, '2023-10-05', 113, 18),
(785, '2023-09-14', 114, 19),
(79, '2023-03-23', 115, 20),
(321, '2023-08-10', 116, 21),
(654, '2023-12-25', 117, 22),
(321, '2023-03-29', 118, 23),
(789, '2023-03-04', 119, 24),
(756, '2023-03-03', 120, 25);

-- --------------------------------------------------------

--
-- Structure de la table `booked_ins`
--

CREATE TABLE `booked_ins` (
  `fk_Reservationsid_Reservations` int(11) NOT NULL,
  `fk_Roomsid_Rooms` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `booked_ins`
--

INSERT INTO `booked_ins` (`fk_Reservationsid_Reservations`, `fk_Roomsid_Rooms`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15),
(16, 16),
(17, 17),
(18, 18),
(19, 19),
(20, 20);

-- --------------------------------------------------------

--
-- Structure de la table `employees`
--

CREATE TABLE `employees` (
  `names` varchar(50) DEFAULT NULL,
  `id_Employees` int(11) NOT NULL,
  `fk_HotelDBsid_HotelDBs` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `employees`
--

INSERT INTO `employees` (`names`, `id_Employees`, `fk_HotelDBsid_HotelDBs`) VALUES
('Corri Rosenblum', 31, 1),
('Darbee Woodhead', 32, 2),
('Fredric Moth', 33, 3),
('Jamesy Plaskett', 34, 4),
('Elicia Lathaye', 35, 5),
('Ginny Simmens', 36, 6),
('Nertie Larenson', 37, 7),
('Malia Killick', 38, 8),
('Loni Tether', 39, 9),
('Halli Whates', 40, 10),
('Dixie Bediss', 41, 11),
('Karla Simonin', 42, 12),
('Antonino Fillary', 43, 13),
('Any Braham', 44, 14),
('Baily Rentelll', 45, 15),
('Alysia Harbin', 46, 16),
('Susanetta Pantridge', 47, 17),
('Emmott Glas', 48, 18),
('Montague Choppin', 49, 19),
('Erminia Crowter', 50, 20);

-- --------------------------------------------------------

--
-- Structure de la table `guests`
--

CREATE TABLE `guests` (
  `names` varchar(50) NOT NULL,
  `emails` varchar(50) DEFAULT NULL,
  `phone_numbers` varchar(50) DEFAULT NULL,
  `id_Guests` int(11) NOT NULL,
  `fk_Reservationsid_Reservations` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `guests`
--

INSERT INTO `guests` (`names`, `emails`, `phone_numbers`, `id_Guests`, `fk_Reservationsid_Reservations`) VALUES
('Annabela Colloff', 'acolloff0@mysql.com', '+351-221-174-2433', 4, 1),
('Jody Schultze', 'jschultze1@flickr.com', '+33-316-104-2859', 5, 2),
('Maud Quenby', 'mquenby2@mac.com', '+30-548-157-1984', 6, 3),
('Conny Seymour', 'cseymour3@facebook.com', '+86-829-521-1915', 7, 4),
('Georgiana Asker', 'gasker4@lycos.com', '+351-449-508-9744', 8, 5),
('Tobye Mushrow', 'tmushrow5@noaa.gov', '+49-850-327-8503', 9, 6),
('Flin Gymblett', 'fgymblett6@samsung.com', '+62-256-919-5451', 10, 7),
('Willa Kemwall', 'wkemwall7@washingtonpost.com', '+63-295-755-5764', 11, 8),
('Joby Toderini', 'jtoderini8@wix.com', '+62-753-101-7513', 12, 9),
('Alleyn Stainfield', 'astainfield9@tripod.com', '+86-273-496-0051', 13, 10),
('Filmore McRavey', 'fmcraveya@hostgator.com', '+86-563-555-7307', 14, 11),
('Barrie Leigh', 'bleighb@tripadvisor.com', '+63-173-225-6879', 15, 12),
('Monro Barnet', 'mbarnetc@arstechnica.com', '+855-233-437-7200', 16, 13),
('Danny Flisher', 'dflisherd@sciencedaily.com', '+51-687-684-4185', 17, 14),
('Stevena Imlach', 'simlache@ihg.com', '+62-265-148-6241', 18, 15),
('Arnoldo Cratchley', 'acratchleyf@walmart.com', '+58-505-827-1140', 19, 16),
('Rozele Duggan', 'rduggang@hatena.ne.jp', '+60-825-525-6524', 20, 17),
('Thurstan Ashling', 'tashlingh@friendfeed.com', '+62-663-533-6984', 21, 18),
('Tonie Laherty', 'tlahertyi@slate.com', '+62-913-170-6414', 22, 19),
('Ferrell MacSwayde', 'fmacswaydej@oracle.com', '+62-845-146-9239', 23, 20);

-- --------------------------------------------------------

--
-- Structure de la table `hoteladministrators`
--

CREATE TABLE `hoteladministrators` (
  `names` varchar(50) DEFAULT NULL,
  `emails` varchar(50) DEFAULT NULL,
  `phone_numbers` varchar(50) DEFAULT NULL,
  `id_HotelAdministrators` int(11) NOT NULL,
  `fk_HotelDBsid_HotelDBs` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `hoteladministrators`
--

INSERT INTO `hoteladministrators` (`names`, `emails`, `phone_numbers`, `id_HotelAdministrators`, `fk_HotelDBsid_HotelDBs`) VALUES
('Raf Lordon', 'rlordon0@studiopress.com', '+48-441-387-3288', 1, 1),
('Vinny Maseres', 'vmaseres1@adobe.com', '+48-704-451-8329', 2, 2),
('Nata Bonney', 'nbonney2@yale.edu', '+84-996-441-2801', 3, 3),
('Darren Cossons', 'dcossons3@github.io', '+234-422-941-0496', 4, 4),
('Gerry Gentry', 'ggentry4@businessinsider.com', '+62-910-198-5925', 5, 5),
('Minnie O\'Halleghane', 'mohalleghane5@slashdot.org', '+86-530-301-8240', 6, 6),
('Faun Moller', 'fmoller6@163.com', '+381-519-435-1049', 7, 7),
('Fielding Close', 'fclose7@cmu.edu', '+86-608-743-7779', 8, 8),
('Cornelius Heffy', 'cheffy8@go.com', '+221-120-572-9152', 9, 9),
('Tammy Vaneev', 'tvaneev9@cam.ac.uk', '+7-792-406-9411', 10, 10),
('Basilio Hentzeler', 'bhentzelera@si.edu', '+55-362-129-0080', 11, 11),
('Monique Gell', 'mgellb@paginegialle.it', '+31-720-145-6953', 12, 12),
('Major Bayne', 'mbaynec@gizmodo.com', '+420-443-532-3883', 13, 13),
('Katerina Edgerly', 'kedgerlyd@shareasale.com', '+86-561-485-3079', 14, 14),
('Francois Lauder', 'flaudere@friendfeed.com', '+62-470-792-9826', 15, 15),
('Rosalynd Malby', 'rmalbyf@etsy.com', '+229-587-695-2382', 16, 16),
('Virgil Huffadine', 'vhuffadineg@artisteer.com', '+86-453-926-1742', 17, 17),
('Charlie Petrello', 'cpetrelloh@tinyurl.com', '+86-502-948-1745', 18, 18),
('Bethany Jirick', 'bjiricki@google.co.jp', '+972-148-291-4312', 19, 19),
('Filia Harbidge', 'fharbidgej@marketwatch.com', '+33-255-769-7983', 20, 20);

-- --------------------------------------------------------

--
-- Structure de la table `hoteldbs`
--

CREATE TABLE `hoteldbs` (
  `db_names` varchar(50) DEFAULT NULL,
  `created_dates` date DEFAULT NULL,
  `id_HotelDBs` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `hoteldbs`
--

INSERT INTO `hoteldbs` (`db_names`, `created_dates`, `id_HotelDBs`) VALUES
('Celinka L\'Archer', '2023-03-01', 1),
('The Luxury Collection', '2023-03-02', 2),
('Dedra-Prando', '2023-06-16', 3),
('Babs Gaunson', '2023-05-06', 4),
('Cathlene Heffernon', '2023-06-02', 5),
('SleepyCrew ', '2023-03-14', 6),
('Ritz-Carlton', '2023-03-16', 7),
('Neila ', '2023-03-21', 8),
('Ethelin Feaveer', '2023-03-31', 9),
('Ddene_Vinker', '2023-09-14', 10),
('Electra-Chilvers', '2023-03-02', 11),
('Basilio Groomebridge', '2023-03-31', 12),
('Disney’s Wilderness', '2023-03-10', 13),
('Harvey Trimming', '2023-03-31', 14),
('Fredek Nelissen', '2023-03-09', 15),
('Hollywood Plaza ', '2023-03-09', 16),
('W ', '2023-04-03', 17),
('Land’s End Resort', '2023-03-14', 18),
('Regency', '2023-04-07', 19),
('Ace', '2023-03-15', 20);

-- --------------------------------------------------------

--
-- Structure de la table `hotels`
--

CREATE TABLE `hotels` (
  `id_Hotels` int(11) NOT NULL,
  `names` varchar(50) DEFAULT NULL,
  `adress` varchar(50) DEFAULT NULL,
  `phone_numbers` varchar(50) DEFAULT NULL,
  `fk_HotelDBsid_HotelDBs` int(11) NOT NULL,
  `fk_Employeesid_Employees` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `hotels`
--

INSERT INTO `hotels` (`id_Hotels`, `names`, `adress`, `phone_numbers`, `fk_HotelDBsid_HotelDBs`, `fk_Employeesid_Employees`) VALUES
(8, 'Celinka L\'Archer Hotel', '41538 Meadow Valley Junction', '+1-339-348-2901', 1, 31),
(9, 'The Luxury Collection Garden', '86792 Talisman Terrace', '+46-906-825-0814', 2, 32),
(10, 'Dedra-Prando Hotel', '8087 Tennessee Park', '+7-331-271-5578', 3, 33),
(11, 'Babs Gaunson Hotel', '7293 High Crossing Place', '+33-482-662-5270', 4, 34),
(12, 'Cathlene Heffernon Hotel', '498 Stoughton Hill', '+7-312-149-1413', 5, 35),
(13, 'SleepyCrew  Hotel', '16 Huxley Alley', '+1-386-330-2336', 6, 36),
(14, 'Ritz-Carlton Hotel', '8 Kings Way', '+880-802-595-7506', 7, 37),
(15, 'Neila  Hotel', '90 Declaration Plaza', '+60-793-348-9092', 8, 38),
(16, 'Ethelin Feaveer Hotel', '778 Old Gate Place', '+62-503-642-5073', 9, 39),
(17, 'Ddene_Vinker Hotel', '68624 Alpine Terrace', '+63-358-378-1719', 10, 40),
(18, 'Electra-Chilvers Garden', '84 Marquette Pass', '+86-956-465-4613', 11, 41),
(19, 'Basilio Groomebridge Hotel', '4617 Fallview Crossing', '+7-559-562-1327', 12, 42),
(20, 'Disney’s Wilderness Hotel', '854 Stang Circle', '+86-296-764-4479', 13, 43),
(21, 'Harvey Trimming Hotel', '23 Monument Trail', '+62-911-740-1207', 14, 44),
(22, 'Fredek Nelissen Hotel ', '627 Nelson Park', '+359-251-667-4117', 15, 45),
(23, 'Hollywood Plaza', '6145 Carioca Center', '+351-165-367-4374', 16, 46),
(24, 'W Hotel', '0072 Meadow Valley Alley', '+33-466-432-6517', 17, 47),
(25, 'Land’s End Resort Hotel', '5497 Nancy Lane', '+62-429-526-0327', 18, 48),
(26, 'Regency Hotel', '1223 Thompson Parkway', '+7-292-271-2230', 19, 49),
(27, 'Ace Hotel', '5501 American Junction', '+351-264-512-0455', 20, 50);

-- --------------------------------------------------------

--
-- Structure de la table `hotelservices`
--

CREATE TABLE `hotelservices` (
  `id_HotelServices` int(11) NOT NULL,
  `service_names` varchar(50) NOT NULL,
  `prices` float NOT NULL,
  `Descriptions` varchar(50) DEFAULT NULL,
  `fk_Hotelsid_Hotels` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `hotelservices`
--

INSERT INTO `hotelservices` (`id_HotelServices`, `service_names`, `prices`, `Descriptions`, `fk_Hotelsid_Hotels`) VALUES
(1, 'Echinacea Argentum', 0, 'Acute dystonia d/t drugs', 8),
(2, 'CARE ONE COOL HEAT PAIN RELIEVING', 0, 'DMII circ uncntrld', 9),
(3, 'EPZICOM', 0, 'Hand, foot & mouth dis', 10),
(4, 'Hydroxychloroquine sulfate', 0, 'Cyclophoria', 11),
(5, 'Prevail', 0, 'Actv Meniere,cochlvestib', 12),
(6, 'Clonidine Hydrochloride', 0, 'Unspcf anm jaw cranl bse', 13),
(7, 'Stool Softener plus Stimulant Laxative', 0, 'Gingival recess-general', 14),
(8, 'Command AntiBac Instant Hand Sanitizer', 0, 'Postmastect lymphedema', 15),
(9, 'Prednisolone', 0, 'Hair diseases NEC', 16),
(10, 'Sulindac', 0, 'Tk off/land-aircraft NEC', 17),
(11, 'Amiloride Hydrochloride and Hydrochlorothiazide', 0, 'Abrasion foot/toe-infec', 18),
(12, 'Indomethacin', 0, 'Dosag fail-shock therapy', 19),
(13, 'Analgesic Creme Rub', 0, 'Stereotypic movement dis', 20),
(14, 'AVINZA', 0, 'Idiopathic corneal edema', 21),
(15, 'Clearasil', 0, 'Margin zone lym thorax', 22),
(16, 'Neutrogena Revitalizing Lip Balm', 0, 'Oth specfied retrovirus', 23),
(17, 'H-E-B', 0, 'Opposition defiant disor', 24),
(18, 'Alprazolam', 0, 'Periph station pterygium', 25),
(19, 'Childrens Pain and Fever', 0, 'Pois-skin/membr agnt NOS', 26),
(20, 'Vyvanse', 0, 'X-ray/gamma ray exposure', 27);

-- --------------------------------------------------------

--
-- Structure de la table `payements`
--

CREATE TABLE `payements` (
  `amount_paids` float NOT NULL,
  `payement_dates` date NOT NULL,
  `payement_methods` varchar(50) DEFAULT NULL,
  `id_Payements` int(11) NOT NULL,
  `fk_Reservationsid_Reservations` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `payements`
--

INSERT INTO `payements` (`amount_paids`, `payement_dates`, `payement_methods`, `id_Payements`, `fk_Reservationsid_Reservations`) VALUES
(500, '2023-03-09', 'jcb', 6, 1),
(652, '2023-03-15', 'jcb', 7, 2),
(74, '2023-03-16', 'china-unionpay', 8, 3),
(1256, '2023-04-06', 'jcb', 9, 4),
(2563, '2023-05-05', 'jcb', 10, 5),
(1265, '2023-06-02', 'jcb', 11, 6),
(452, '2023-06-01', 'mastercard', 12, 7),
(0, '2023-06-09', 'jcb', 13, 8),
(123, '2023-05-18', 'instapayment', 14, 9),
(856, '2023-08-04', 'bankcard', 15, 10),
(653, '2023-07-06', 'jcb', 16, 11),
(523, '2023-06-15', 'jcb', 17, 12),
(52, '2023-07-14', 'visa', 18, 13),
(785, '2023-03-29', 'mastercard', 19, 14),
(79, '2023-09-18', 'instapayment', 20, 15),
(321, '2023-06-02', 'diners-club-international', 21, 16),
(654, '2023-08-11', 'bankcard', 22, 17),
(321, '2023-06-09', 'diners-club-enroute', 23, 18),
(789, '2023-03-23', 'maestro', 24, 19),
(756, '2023-06-09', 'jcb', 25, 20);

-- --------------------------------------------------------

--
-- Structure de la table `reservations`
--

CREATE TABLE `reservations` (
  `check_in_dates` date NOT NULL,
  `check_out_dates` date NOT NULL,
  `reservation_dates` date DEFAULT NULL,
  `id_Reservations` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `reservations`
--

INSERT INTO `reservations` (`check_in_dates`, `check_out_dates`, `reservation_dates`, `id_Reservations`) VALUES
('2023-03-01', '2023-03-03', '2023-03-01', 1),
('2023-03-30', '2023-03-31', '2023-03-15', 2),
('2023-03-09', '2023-03-17', '2023-03-01', 3),
('2023-05-04', '2023-05-12', '2023-03-01', 4),
('2023-05-10', '2023-05-12', '2023-05-09', 5),
('2023-04-06', '2023-04-14', '2023-04-04', 6),
('2023-05-11', '2023-05-13', '2023-05-09', 7),
('2023-03-08', '2023-03-16', '2023-03-07', 8),
('2023-03-16', '2023-03-18', '2023-03-14', 9),
('2023-09-12', '2023-09-14', '2023-09-12', 10),
('2023-06-01', '2023-06-03', '2023-06-01', 11),
('2023-03-17', '2023-03-18', '2023-03-16', 12),
('2023-06-07', '2023-06-15', '2023-06-06', 13),
('2023-03-21', '2023-03-22', '2023-03-19', 14),
('2023-04-07', '2023-04-07', '2023-03-06', 15),
('2023-05-11', '2023-05-25', '2023-05-02', 16),
('2023-03-03', '2023-03-16', '2023-03-01', 17),
('2023-07-01', '2023-07-15', '2023-06-30', 18),
('2023-03-10', '2023-03-13', '2023-03-01', 19),
('2023-12-02', '2023-12-15', '2023-12-01', 20);

-- --------------------------------------------------------

--
-- Structure de la table `rooms`
--

CREATE TABLE `rooms` (
  `room_numbers` int(11) DEFAULT NULL,
  `num_beds` int(11) NOT NULL,
  `is_availables` tinyint(1) NOT NULL,
  `id_Rooms` int(11) NOT NULL,
  `fk_Hotelsid_Hotels` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `rooms`
--

INSERT INTO `rooms` (`room_numbers`, `num_beds`, `is_availables`, `id_Rooms`, `fk_Hotelsid_Hotels`) VALUES
(1, 1, 127, 1, 8),
(2, 2, 127, 2, 9),
(3, 3, 127, 3, 10),
(4, 4, 127, 4, 11),
(5, 5, 127, 5, 12),
(6, 6, 127, 6, 13),
(7, 7, 127, 7, 14),
(8, 8, 127, 8, 15),
(9, 9, 127, 9, 16),
(10, 10, 127, 10, 17),
(11, 11, 127, 11, 18),
(12, 12, 127, 12, 19),
(13, 13, 127, 13, 20),
(14, 14, 127, 14, 21),
(15, 15, 127, 15, 22),
(16, 16, 127, 16, 23),
(17, 17, 127, 17, 24),
(18, 18, 127, 18, 25),
(19, 19, 127, 19, 26),
(20, 20, 127, 20, 27);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`id_Bills`),
  ADD KEY `assiociated_with` (`fk_Payementsid_Payements`);

--
-- Index pour la table `booked_ins`
--
ALTER TABLE `booked_ins`
  ADD PRIMARY KEY (`fk_Reservationsid_Reservations`,`fk_Roomsid_Rooms`);

--
-- Index pour la table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id_Employees`),
  ADD KEY `have_into` (`fk_HotelDBsid_HotelDBs`);

--
-- Index pour la table `guests`
--
ALTER TABLE `guests`
  ADD PRIMARY KEY (`id_Guests`),
  ADD KEY `make` (`fk_Reservationsid_Reservations`);

--
-- Index pour la table `hoteladministrators`
--
ALTER TABLE `hoteladministrators`
  ADD PRIMARY KEY (`id_HotelAdministrators`),
  ADD KEY `have_access_to` (`fk_HotelDBsid_HotelDBs`);

--
-- Index pour la table `hoteldbs`
--
ALTER TABLE `hoteldbs`
  ADD PRIMARY KEY (`id_HotelDBs`);

--
-- Index pour la table `hotels`
--
ALTER TABLE `hotels`
  ADD PRIMARY KEY (`id_Hotels`),
  ADD KEY `assiociated_to` (`fk_HotelDBsid_HotelDBs`),
  ADD KEY `belong_to` (`fk_Employeesid_Employees`);

--
-- Index pour la table `hotelservices`
--
ALTER TABLE `hotelservices`
  ADD PRIMARY KEY (`id_HotelServices`),
  ADD KEY `offered_by` (`fk_Hotelsid_Hotels`);

--
-- Index pour la table `payements`
--
ALTER TABLE `payements`
  ADD PRIMARY KEY (`id_Payements`),
  ADD KEY `made_for` (`fk_Reservationsid_Reservations`);

--
-- Index pour la table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id_Reservations`);

--
-- Index pour la table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id_Rooms`),
  ADD KEY `belongs_to` (`fk_Hotelsid_Hotels`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `bills`
--
ALTER TABLE `bills`
  ADD CONSTRAINT `assiociated_with` FOREIGN KEY (`fk_Payementsid_Payements`) REFERENCES `payements` (`id_Payements`);

--
-- Contraintes pour la table `booked_ins`
--
ALTER TABLE `booked_ins`
  ADD CONSTRAINT `booked_in` FOREIGN KEY (`fk_Reservationsid_Reservations`) REFERENCES `reservations` (`id_Reservations`);

--
-- Contraintes pour la table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `have_into` FOREIGN KEY (`fk_HotelDBsid_HotelDBs`) REFERENCES `hoteldbs` (`id_HotelDBs`);

--
-- Contraintes pour la table `guests`
--
ALTER TABLE `guests`
  ADD CONSTRAINT `make` FOREIGN KEY (`fk_Reservationsid_Reservations`) REFERENCES `reservations` (`id_Reservations`);

--
-- Contraintes pour la table `hoteladministrators`
--
ALTER TABLE `hoteladministrators`
  ADD CONSTRAINT `have_access_to` FOREIGN KEY (`fk_HotelDBsid_HotelDBs`) REFERENCES `hoteldbs` (`id_HotelDBs`);

--
-- Contraintes pour la table `hotels`
--
ALTER TABLE `hotels`
  ADD CONSTRAINT `assiociated_to` FOREIGN KEY (`fk_HotelDBsid_HotelDBs`) REFERENCES `hoteldbs` (`id_HotelDBs`),
  ADD CONSTRAINT `belong_to` FOREIGN KEY (`fk_Employeesid_Employees`) REFERENCES `employees` (`id_Employees`);

--
-- Contraintes pour la table `hotelservices`
--
ALTER TABLE `hotelservices`
  ADD CONSTRAINT `offered_by` FOREIGN KEY (`fk_Hotelsid_Hotels`) REFERENCES `hotels` (`id_Hotels`);

--
-- Contraintes pour la table `payements`
--
ALTER TABLE `payements`
  ADD CONSTRAINT `made_for` FOREIGN KEY (`fk_Reservationsid_Reservations`) REFERENCES `reservations` (`id_Reservations`);

--
-- Contraintes pour la table `rooms`
--
ALTER TABLE `rooms`
  ADD CONSTRAINT `belongs_to` FOREIGN KEY (`fk_Hotelsid_Hotels`) REFERENCES `hotels` (`id_Hotels`);
--
-- Base de données : `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Structure de la table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Structure de la table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Structure de la table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Structure de la table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Structure de la table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Structure de la table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Structure de la table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Structure de la table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Structure de la table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Structure de la table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Déchargement des données de la table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"voting_db\",\"table\":\"voting_opt\"},{\"db\":\"voting_db\",\"table\":\"voting_list\"},{\"db\":\"voting_db\",\"table\":\"voting_cat_settings\"},{\"db\":\"voting_db\",\"table\":\"users\"},{\"db\":\"voting_db\",\"table\":\"category_list\"}]');

-- --------------------------------------------------------

--
-- Structure de la table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Structure de la table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Structure de la table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Structure de la table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Structure de la table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Structure de la table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Structure de la table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Déchargement des données de la table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2022-11-30 08:56:20', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"fr\"}');

-- --------------------------------------------------------

--
-- Structure de la table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Structure de la table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Index pour la table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Index pour la table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Index pour la table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Index pour la table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Index pour la table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Index pour la table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Index pour la table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Index pour la table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Index pour la table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Index pour la table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Index pour la table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Index pour la table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Index pour la table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Index pour la table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Index pour la table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Index pour la table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Index pour la table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Base de données : `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Base de données : `todos`
--
CREATE DATABASE IF NOT EXISTS `todos` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `todos`;

-- --------------------------------------------------------

--
-- Structure de la table `status`
--

CREATE TABLE `status` (
  `id` int(11) NOT NULL,
  `label` varchar(64) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Déchargement des données de la table `status`
--

INSERT INTO `status` (`id`, `label`) VALUES
(1, 'En attente'),
(2, 'En cour'),
(3, 'Terminé');

-- --------------------------------------------------------

--
-- Structure de la table `todolist`
--

CREATE TABLE `todolist` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT 'Aucune description',
  `creationDate` datetime NOT NULL,
  `dueDate` datetime DEFAULT NULL,
  `statusPk` varchar(255) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Déchargement des données de la table `todolist`
--

INSERT INTO `todolist` (`id`, `title`, `description`, `creationDate`, `dueDate`, `statusPk`) VALUES
(24, 'Devoir de Monsieur Cedric', 'A remettre avant jeudi', '2023-04-22 14:24:59', '2023-04-27 14:25:00', 'En cours');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `todolist`
--
ALTER TABLE `todolist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `status`
--
ALTER TABLE `status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `todolist`
--
ALTER TABLE `todolist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- Base de données : `voting_db`
--
CREATE DATABASE IF NOT EXISTS `voting_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `voting_db`;

-- --------------------------------------------------------

--
-- Structure de la table `category_list`
--

CREATE TABLE `category_list` (
  `id` int(30) NOT NULL,
  `category` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `category_list`
--

INSERT INTO `category_list` (`id`, `category`) VALUES
(1, 'President'),
(3, 'Vice Presindent'),
(4, 'Officer');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `name` varchar(200) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 2 COMMENT '1+admin , 2 = users'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `type`) VALUES
(1, 'Administrator', 'admin', 'admin123', 1),
(2, 'John Smith', 'jsmith', 'admin123', 1),
(3, 'Voter 2', 'voter2', 'voter2', 2),
(4, 'Voter 1', 'voter1', 'voter1', 2);

-- --------------------------------------------------------

--
-- Structure de la table `votes`
--

CREATE TABLE `votes` (
  `id` int(30) NOT NULL,
  `voting_id` int(30) NOT NULL,
  `category_id` int(30) NOT NULL,
  `voting_opt_id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `votes`
--

INSERT INTO `votes` (`id`, `voting_id`, `category_id`, `voting_opt_id`, `user_id`) VALUES
(1, 1, 1, 1, 3),
(2, 1, 3, 5, 3),
(3, 1, 4, 6, 3),
(4, 1, 4, 7, 3),
(5, 1, 4, 8, 3),
(6, 1, 4, 9, 3),
(7, 1, 1, 3, 4),
(8, 1, 3, 12, 4),
(9, 1, 4, 6, 4),
(10, 1, 4, 8, 4),
(11, 1, 4, 10, 4),
(12, 1, 4, 11, 4);

-- --------------------------------------------------------

--
-- Structure de la table `voting_cat_settings`
--

CREATE TABLE `voting_cat_settings` (
  `id` int(30) NOT NULL,
  `voting_id` int(30) NOT NULL,
  `category_id` int(30) NOT NULL,
  `max_selection` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `voting_cat_settings`
--

INSERT INTO `voting_cat_settings` (`id`, `voting_id`, `category_id`, `max_selection`) VALUES
(1, 1, 1, 1),
(2, 1, 3, 1),
(3, 1, 4, 4);

-- --------------------------------------------------------

--
-- Structure de la table `voting_list`
--

CREATE TABLE `voting_list` (
  `id` int(30) NOT NULL,
  `title` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `voting_list`
--

INSERT INTO `voting_list` (`id`, `title`, `description`, `is_default`) VALUES
(1, 'Sample Voting', 'Sample only', 1),
(3, 'Test Voting', 'Test Only', 0);

-- --------------------------------------------------------

--
-- Structure de la table `voting_opt`
--

CREATE TABLE `voting_opt` (
  `id` int(30) NOT NULL,
  `voting_id` int(30) NOT NULL,
  `category_id` int(30) NOT NULL,
  `image_path` text NOT NULL,
  `opt_txt` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `voting_opt`
--

INSERT INTO `voting_opt` (`id`, `voting_id`, `category_id`, `image_path`, `opt_txt`) VALUES
(1, 1, 1, '1600398180_no-image-available.png', 'James Smith'),
(3, 1, 1, '1600415460_avatar2.png', 'James Wilson'),
(5, 1, 3, '1600415520_avatar.jpg', 'George Walker'),
(6, 1, 4, '1600400340_no-image-available.png', 'Cadidate 1'),
(7, 1, 4, '1600400340_no-image-available.png', 'Cadidate 2'),
(8, 1, 4, '1600400340_no-image-available.png', 'Cadidate 3'),
(9, 1, 4, '1600400520_no-image-available.png', 'Cadidate  4'),
(10, 1, 4, '1600400640_no-image-available.png', 'Cadidate 5'),
(11, 1, 4, '1600400400_no-image-available.png', 'Cadidate 6'),
(12, 1, 3, '1600415520_no-image-available.png', 'Claire Blake');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `category_list`
--
ALTER TABLE `category_list`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `voting_cat_settings`
--
ALTER TABLE `voting_cat_settings`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `voting_list`
--
ALTER TABLE `voting_list`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `voting_opt`
--
ALTER TABLE `voting_opt`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `category_list`
--
ALTER TABLE `category_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `votes`
--
ALTER TABLE `votes`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `voting_cat_settings`
--
ALTER TABLE `voting_cat_settings`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `voting_list`
--
ALTER TABLE `voting_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `voting_opt`
--
ALTER TABLE `voting_opt`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- Base de données : `vue-php`
--
CREATE DATABASE IF NOT EXISTS `vue-php` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `vue-php`;

-- --------------------------------------------------------

--
-- Structure de la table `countries`
--

CREATE TABLE `countries` (
  `country_id` int(11) NOT NULL,
  `country_name` varchar(70) NOT NULL,
  `region_name` varchar(80) NOT NULL,
  `flag` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `admin` int(1) NOT NULL DEFAULT 0,
  `email` varchar(60) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`user_id`, `admin`, `email`, `password`) VALUES
(1, 1, 'jul.az@hotmail.com', 'test');

-- --------------------------------------------------------

--
-- Structure de la table `wines`
--

CREATE TABLE `wines` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `year` int(4) NOT NULL,
  `grapes` varchar(100) NOT NULL,
  `country` varchar(70) NOT NULL,
  `region` varchar(70) NOT NULL,
  `description` text NOT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `author` int(100) NOT NULL,
  `publish_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `wines`
--

INSERT INTO `wines` (`id`, `name`, `year`, `grapes`, `country`, `region`, `description`, `picture`, `author`, `publish_date`) VALUES
(15, 'CHATEAU SAINT COSME', 2009, 'Syrah', 'France', 'Southern Rhone / Gigondas', 'The aromas of fruit and spice give one a hint of the light drinkability of this lovely wine, which makes an excellent complement to fish dishes.\r\n', '5f5f56e8dc565_saint_cosme.png', 1, '2020-09-14 11:41:28'),
(16, 'LAN RIOJA CRIANZA', 2006, 'Tempranillo', 'Espagne', 'Riojo', 'A resurgence of interest in boutique vineyards has opened the door for this excellent foray into the dessert wine market. Light and bouncy, with a hint of black truffle, this wine will not fail to tickle the taste buds.\r\n', '5f5f571c39dd8_lan_rioja.png', 1, '2020-09-14 11:42:20'),
(17, 'MARGERUM SYBARITE', 2010, 'Sauvignon', 'USA', 'California Central Cosat', 'The cache of a fine Cabernet in ones wine cellar can now be replaced with a childishly playful wine bubbling over with tempting tastes of\r\nblack cherry and licorice. This is a taste sure to transport you back in time.', '5f5f57438d480_margerum.png', 1, '2020-09-14 11:42:59'),
(18, 'OWEN ROE', 2009, 'Syrah', 'USA', 'Washington', 'A one-two punch of black pepper and jalapeno will send your senses reeling, as the orange essence snaps you back to reality. Don\'t miss\r\nthis award-winning taste sensation.\r\n', '5f5f57674a7ac_ex_umbris.png', 1, '2020-09-14 11:43:35'),
(19, 'REX HILL', 2009, 'Pinot Noir', 'USA', 'Oregon', 'One cannot doubt that this will be the wine served at the Hollywood award shows, because it has undeniable star power. Be the first to catch\r\nthe debut that everyone will be talking about tomorrow.\r\n', '5f5f57fe7aab3_rex_hill.png', 1, '2020-09-14 11:46:06'),
(20, 'VITICCIO CLASSICO', 2007, 'Merlot', 'Italie', 'Tuscany', 'Though soft and rounded in texture, the body of this wine is full and rich and oh-so-appealing. This delivery is even more impressive when one takes note of the tender tannins that leave the taste buds wholly satisfied.\r\n', '5f5f583627b86_viticcio.png', 1, '2020-09-14 11:47:02'),
(21, 'CHATEAU LE DOYENNE', 2005, 'Merlot', 'France', 'Bordeaux', 'Though dense and chewy, this wine does not overpower with its finely balanced depth and structure. It is a truly luxurious experience for the\r\nsenses.', '5f5f58970c0c4_le_doyenne.png', 1, '2020-09-14 11:48:39'),
(22, 'DOMAINE DU BOUSCAT', 2009, 'Merlot', 'France', 'Bordeaux', 'The light golden color of this wine belies the bright flavor it holds. A true summer wine, it begs for a picnic lunch in a sun-soaked vineyard.\r\n', '5f5f58b534a31_bouscat.png', 1, '2020-09-14 11:49:09'),
(23, 'BLOCK NINE', 2009, 'Pinot Noir', 'USA', 'California', 'With hints of ginger and spice, this wine makes an excellent complement to light appetizer and dessert fare for a holiday gathering.\r\n', '5f5f58e9ebad2_block_nine.png', 1, '2020-09-14 11:50:01'),
(24, 'DOMAINE SERENE', 2007, 'Pinot Noir', 'USA', 'Oregon', 'Though subtle in its complexities, this wine is sure to please a wide range of enthusiasts. Notes of pomegranate will delight as the nutty finish completes the picture of a fine sipping experience.\r\n', '5f5f59360caa7_domaine_serene.png', 1, '2020-09-14 11:51:18'),
(25, 'BODEGA LURTON', 2011, 'Pinot Gris', 'Argentine', 'Mendoza', 'Solid notes of black currant blended with a light citrus make this wine an easy pour for varied palates.\r\nAprès de longues recherches dans plusieurs régions d\'Argentine, François Lurton implante son vignoble sur des terres d\'altitude et semi-désertiques, (des graves pauvres rappelant ceux de Pessac-Léognan) au piémont de la Cordillère : la Vallée de Uco. Cette terre inexplorée se trouve être dans le district de Chacayes, nom que François donnera à sa grande cuvée.\r\n', '5f5f597177891_lurton-pinot-gris.png', 1, '2020-09-14 11:52:17'),
(30, 'LES MORIZOTTES', 2009, 'Chardonnay', 'France', 'Bourgogne', 'Breaking the mold of the classics, this offering will surprise and undoubtedly get tongues wagging with the hints of coffee and tobacco in\r\nperfect alignment with more traditional notes. Breaking the mold of the classics, this offering will surprise and\r\nundoubtedly get tongues wagging with the hints of coffee and tobacco in\r\nperfect alignment with more traditional notes. Sure to please the late-night crowd with the slight jolt of adrenaline it brings.\r\n', '5f60c98f470ff_5f5f599e39ad7_morizottes.png', 1, '2020-09-15 14:02:55');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`country_id`),
  ADD KEY `country_name` (`country_name`),
  ADD KEY `region_name` (`region_name`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Index pour la table `wines`
--
ALTER TABLE `wines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `author` (`author`),
  ADD KEY `country` (`country`),
  ADD KEY `region` (`region`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `countries`
--
ALTER TABLE `countries`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `wines`
--
ALTER TABLE `wines`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `countries`
--
ALTER TABLE `countries`
  ADD CONSTRAINT `countries_ibfk_1` FOREIGN KEY (`country_name`) REFERENCES `wines` (`country`),
  ADD CONSTRAINT `countries_ibfk_2` FOREIGN KEY (`region_name`) REFERENCES `wines` (`region`);

--
-- Contraintes pour la table `wines`
--
ALTER TABLE `wines`
  ADD CONSTRAINT `wines_ibfk_1` FOREIGN KEY (`author`) REFERENCES `users` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
