-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 17, 2026 at 02:37 PM
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
  `Name` text NOT NULL,
  `Country` text NOT NULL,
  `Headquarters` text NOT NULL,
  `Engine Manufacturer` text NOT NULL,
  `Driver 1` text NOT NULL,
  `Driver 2` text NOT NULL,
  `Wins` int(11) NOT NULL,
  `Constructor Titles` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`ID`, `Name`, `Country`, `Headquarters`, `Engine Manufacturer`, `Driver 1`, `Driver 2`, `Wins`, `Constructor Titles`) VALUES
(1, 'Alpine', 'France', 'Enstone, UK', 'Mercedes', 'Pierre Gasly', 'Franco Colapinto', 1, 0),
(2, 'Aston Martin', 'United Kingdom', 'Silverstone, UK', 'Honda', 'Fernando Alonso', 'Lance Stroll', 0, 0),
(3, 'Williams', 'United Kingdom', 'Grove, UK', 'Mercedes', 'Carlos Sainz', 'Alexander Albon', 114, 9),
(4, 'Audi', 'Germany', 'Neuburg, Germany & Hinwil, Switzerland', 'Audi', 'Niko Hülkenberg', 'Gabriel Bortoleto', 0, 0),
(5, 'Cadillac', 'USA', 'Fishers, USA & Silverstone, UK', 'Ferrari', 'Valtteri Bottas', 'Sergio Pérez', 0, 0),
(6, 'Ferrari', 'Italy', 'Maranello, Italy', 'Ferrari', 'Charles Leclerc', 'Lewis Hamilton', 248, 16),
(7, 'Haas', 'USA', 'Kannapolis, USA & Banbury, UK', 'Ferarri', 'Oliver Bearman', 'Esteban Ocon', 0, 0),
(8, 'McLaren', 'United Kingdom', 'Woking, UK', 'Mercedes', 'Lando Norris', 'Oscar Piastri', 203, 10),
(9, 'Mercedes', 'Germany', 'Brackley, UK', 'Mercedes', 'George Russell', 'Kimi Antonelli', 131, 8),
(10, 'Racing Bulls', 'Italy', 'Faenza, Italy', 'Red Bull Ford', 'Liam Lawson', 'Arvid Lindblad', 0, 0),
(11, 'Red Bull', 'Austria', 'Milton Keynes, UK', 'Red Bull Ford', 'Max Verstappen', 'Isack Hadjar', 130, 6);

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
