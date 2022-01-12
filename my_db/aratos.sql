-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Εξυπηρετητής: 127.0.0.1
-- Χρόνος δημιουργίας: 12 Ιαν 2022 στις 17:23:55
-- Έκδοση διακομιστή: 10.4.22-MariaDB
-- Έκδοση PHP: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Βάση δεδομένων: `aratos`
--

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `teacher`
--

CREATE TABLE `teacher` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `SURNAME` varchar(50) NOT NULL,
  `USERNAME` varchar(50) NOT NULL,
  `PASSWORD` varchar(50) NOT NULL,
  `EMAIL` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Άδειασμα δεδομένων του πίνακα `teacher`
--

INSERT INTO `teacher` (`ID`, `NAME`, `SURNAME`, `USERNAME`, `PASSWORD`, `EMAIL`) VALUES
(1, 'john', 'johnson', 'admin', 'admin', '');

--
-- Ευρετήρια για άχρηστους πίνακες
--

--
-- Ευρετήρια για πίνακα `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT για άχρηστους πίνακες
--

--
-- AUTO_INCREMENT για πίνακα `teacher`
--
ALTER TABLE `teacher`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
