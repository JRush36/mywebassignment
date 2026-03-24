-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 24, 2026 at 01:51 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.3.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `formuladb`
--

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `ID` int(11) NOT NULL,
  `name` text NOT NULL,
  `country` text NOT NULL,
  `headquarters` text NOT NULL,
  `chassis` varchar(10) NOT NULL,
  `power_unit` text NOT NULL,
  `team_principal` text NOT NULL,
  `driver_1` text NOT NULL,
  `driver_2` text NOT NULL,
  `wins` int(11) NOT NULL,
  `constructor_titles` int(11) NOT NULL,
  `team_logo` varchar(100) DEFAULT NULL,
  `car_image` text DEFAULT NULL,
  `slug` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`ID`, `name`, `country`, `headquarters`, `chassis`, `power_unit`, `team_principal`, `driver_1`, `driver_2`, `wins`, `constructor_titles`, `team_logo`, `car_image`, `slug`) VALUES
(1, 'BWT Alpine F1 Team', 'France', 'Enstone, UK', 'A526', 'Mercedes-AMG F1 M17', 'Flavio Briatore', 'Pierre Gasly', 'Franco Colapinto', 1, 0, 'alpine_img.png', 'alpine_car.png', 'bwt-alpine-f1-team'),
(2, 'Aston Martin Aramco F1 Team', 'United Kingdom', 'Silverstone, UK', 'AMR26', 'Honda RA626H', 'Adrian Newey', 'Fernando Alonso', 'Lance Stroll', 0, 0, 'astonmartin_img.png', 'astonmartin_car.png', 'aston-martin-aramco-f1-team'),
(3, 'Atlassian Williams F1 Team', 'United Kingdom', 'Grove, UK', 'FW48', 'Mercedes-AMG F1 M17', 'James Vowles', 'Carlos Sainz', 'Alexander Albon', 114, 9, 'williams_img.png', 'williams_car.png', 'atlassian-williams-f1-team'),
(4, 'Audi Revolut F1 Team', 'Germany', 'Neuburg, Germany & Hinwil, Switzerland', 'R26', 'Audi AFR 26 Hybrid', 'Mattia Binotto', 'Niko Hülkenberg', 'Gabriel Bortoleto', 0, 0, 'audi_img.png', 'audi_car.png', 'audi-revolut-f1-team'),
(5, 'Cadillac Formula 1 Team', 'USA', 'Fishers, USA & Silverstone, UK', 'MAC-26', 'Ferrari 067/6', 'Graeme Lowdon', 'Valtteri Bottas', 'Sergio Pérez', 0, 0, 'cadillac_img.png', 'cadillac_img.png', 'cadillac-formula-1-team'),
(6, 'Scuderia Ferrari HP', 'Italy', 'Maranello, Italy', 'SF-26', 'Ferrari 067/6', 'Fred Vasseur', 'Charles Leclerc', 'Lewis Hamilton', 248, 16, 'ferrari_img.png', 'ferrari_car.png', 'scuderia-ferrari-hp'),
(7, 'TGR Haas F1 Team', 'USA', 'Kannapolis, USA & Banbury, UK', 'VF-26', 'Ferrari 067/6', 'Ayao Komatsu', 'Oliver Bearman', 'Esteban Ocon', 0, 0, 'haas_img.png', 'haas_car.png', 'tgr-haas-f1-team'),
(8, 'McLaren Mastercard F1 Team', 'United Kingdom', 'Woking, UK', 'MCL40', 'Mercedes-AMG F1 M17', 'Andrea Stella', 'Lando Norris', 'Oscar Piastri', 203, 10, 'mclaren_img.png', 'mclaren_car.png', 'mclaren-mastercard-f1-team'),
(9, 'Mercedes-AMG Petronas F1 Team', 'Germany', 'Brackley, UK', 'F1 W17', 'Mercedes-AMG F1 M17', 'Toto Wolff', 'George Russell', 'Kimi Antonelli', 131, 8, 'mercedes_img.png', 'mercedes_car.png', 'mercedes-amg-petronas-f1-team'),
(10, 'Visa Cash App Racing Bulls F1 Team', 'Italy', 'Faenza, Italy', 'VCARB 03', 'Red Bull Ford DM01', 'Alan Permane', 'Liam Lawson', 'Arvid Lindblad', 0, 0, 'vcarb_img.png', 'vcarb_car.png', 'visa-cash-app-racing-bulls-f1-team'),
(11, 'Oracle Red Bull Racing', 'Austria', 'Milton Keynes, UK', 'RB22', 'Red Bull Ford DM01', 'Laurent Mekies', 'Max Verstappen', 'Isack Hadjar', 130, 6, 'redbull_img.png', 'redbull_car.png', 'oracle-red-bull-racing');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
