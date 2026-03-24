-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 23, 2026 at 11:39 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

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
  `power_unit` text NOT NULL,
  `team_principal` text NOT NULL,
  `driver_1` text NOT NULL,
  `driver_2` text NOT NULL,
  `wins` int(11) NOT NULL,
  `constructor_titles` int(11) NOT NULL,
  `team_logo` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`ID`, `name`, `country`, `headquarters`, `power_unit`, `team_principal`, `driver_1`, `driver_2`, `wins`, `constructor_titles`, `team_logo`) VALUES
(1, 'Alpine', 'France', 'Enstone, UK', 'Mercedes', 'Flavio Briatore', 'Pierre Gasly', 'Franco Colapinto', 1, 0, NULL),
(2, 'Aston Martin', 'United Kingdom', 'Silverstone, UK', 'Honda', 'Adrian Newey', 'Fernando Alonso', 'Lance Stroll', 0, 0, NULL),
(3, 'Williams', 'United Kingdom', 'Grove, UK', 'Mercedes', 'James Vowles', 'Carlos Sainz', 'Alexander Albon', 114, 9, NULL),
(4, 'Audi', 'Germany', 'Neuburg, Germany & Hinwil, Switzerland', 'Audi', 'Jonathan Wheatley', 'Niko Hülkenberg', 'Gabriel Bortoleto', 0, 0, NULL),
(5, 'Cadillac', 'USA', 'Fishers, USA & Silverstone, UK', 'Ferrari', 'Graeme Lowdon', 'Valtteri Bottas', 'Sergio Pérez', 0, 0, NULL),
(6, 'Ferrari', 'Italy', 'Maranello, Italy', 'Ferrari', 'Fred Vasseur', 'Charles Leclerc', 'Lewis Hamilton', 248, 16, NULL),
(7, 'Haas', 'USA', 'Kannapolis, USA & Banbury, UK', 'Ferarri', 'Ayao Komatsu', 'Oliver Bearman', 'Esteban Ocon', 0, 0, NULL),
(8, 'McLaren', 'United Kingdom', 'Woking, UK', 'Mercedes', 'Andrea Stella', 'Lando Norris', 'Oscar Piastri', 203, 10, NULL),
(9, 'Mercedes', 'Germany', 'Brackley, UK', 'Mercedes', 'Toto Wolff', 'George Russell', 'Kimi Antonelli', 131, 8, NULL),
(10, 'Racing Bulls', 'Italy', 'Faenza, Italy', 'Red Bull Ford', 'Alan Permane', 'Liam Lawson', 'Arvid Lindblad', 0, 0, NULL),
(11, 'Red Bull', 'Austria', 'Milton Keynes, UK', 'Red Bull Ford', 'Laurent Mekies', 'Max Verstappen', 'Isack Hadjar', 130, 6, NULL);

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
