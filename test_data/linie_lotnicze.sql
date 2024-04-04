-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 02, 2024 at 09:33 PM
-- Wersja serwera: 10.4.32-MariaDB
-- Wersja PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `linie_lotnicze`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `linie_lotnicze`
--

CREATE TABLE `linie_lotnicze` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `linie_lotnicze`
--

INSERT INTO `linie_lotnicze` (`id`, `nazwa`) VALUES
(1, 'LOT Polish Airlines'),
(2, 'Lufthansa'),
(3, 'British Airways'),
(4, 'Emirates'),
(5, 'Delta Air Lines');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `lot`
--

CREATE TABLE `lot` (
  `id` int(11) NOT NULL,
  `data_wylotu` date DEFAULT NULL,
  `data_ladowania` date DEFAULT NULL,
  `opoznienie` decimal(10,0) DEFAULT NULL,
  `samolot_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lot`
--

INSERT INTO `lot` (`id`, `data_wylotu`, `data_ladowania`, `opoznienie`, `samolot_id`) VALUES
(81, '2024-04-01', '2024-04-01', NULL, 1),
(82, '2024-04-02', '2024-04-02', 1, 1),
(83, '2024-04-03', '2024-04-03', NULL, 2),
(84, '2024-04-04', '2024-04-04', NULL, 3),
(85, '2024-04-05', '2024-04-05', NULL, 4),
(86, '2024-04-06', '2024-04-06', NULL, 5),
(87, '2024-04-07', '2024-04-07', NULL, 6),
(88, '2024-04-08', '2024-04-08', 2, 7),
(89, '2024-04-09', '2024-04-09', NULL, 8),
(90, '2024-04-10', '2024-04-10', NULL, 9),
(91, '2024-04-11', '2024-04-11', NULL, 10),
(92, '2024-04-12', '2024-04-12', 1, 11);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `model`
--

CREATE TABLE `model` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `model`
--

INSERT INTO `model` (`id`, `nazwa`) VALUES
(1, 'Boeing 737'),
(2, 'Airbus A320'),
(3, 'Boeing 787 Dreamliner'),
(4, 'Airbus A380'),
(5, 'Boeing 777'),
(6, 'Embraer E190'),
(7, 'Bombardier CRJ700');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pasazer`
--

CREATE TABLE `pasazer` (
  `id` int(11) NOT NULL,
  `imie` varchar(45) DEFAULT NULL,
  `nazwisko` varchar(45) DEFAULT NULL,
  `pesel` varchar(11) DEFAULT NULL,
  `telefon` varchar(15) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pasazer`
--

INSERT INTO `pasazer` (`id`, `imie`, `nazwisko`, `pesel`, `telefon`, `email`) VALUES
(1, 'Jan', 'Kowalski', '12345678901', '123456789', 'jan.kowalski@example.com'),
(2, 'Anna', 'Nowak', '23456789012', '234567890', 'anna.nowak@example.com'),
(3, 'Kamil', 'Wiśniewski', NULL, '345678901', 'kamil.wisniewski@example.com'),
(4, 'Karolina', 'Lewandowska', '34567890123', '456789012', 'karolina.lewandowska@example.com'),
(5, 'Piotr', 'Duda', NULL, '567890123', 'piotr.duda@example.com'),
(6, 'Magdalena', 'Zając', '45678901234', NULL, 'magdalena.zajac@example.com'),
(7, 'Krzysztof', 'Wójcik', '56789012345', '678901234', 'krzysztof.wojcik@example.com'),
(8, 'Aleksandra', 'Kaczmarek', '67890123456', NULL, 'aleksandra.kaczmarek@example.com'),
(9, 'Marcin', 'Wójcik', NULL, '789012345', 'marcin.wojcik@example.com'),
(10, 'Monika', 'Kowalczyk', '78901234567', '890123456', 'monika.kowalczyk@example.com');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `rezerwacja`
--

CREATE TABLE `rezerwacja` (
  `id` int(11) NOT NULL,
  `numer_siedzenia` int(11) DEFAULT NULL,
  `dodatkowy_bagaz` tinyint(1) DEFAULT 0,
  `pasazer_id` int(11) DEFAULT NULL,
  `numer_lotu` int(11) DEFAULT NULL,
  `status_rezerwacji_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rezerwacja`
--

INSERT INTO `rezerwacja` (`id`, `numer_siedzenia`, `dodatkowy_bagaz`, `pasazer_id`, `numer_lotu`, `status_rezerwacji_id`) VALUES
(21, 12, 0, 1, 81, 1),
(22, 5, 1, 2, 82, 2),
(23, 8, 0, 3, 83, 1),
(24, 20, 1, 4, 84, 2),
(25, 15, 0, 5, 85, 1),
(26, 10, 0, 6, 86, 2),
(27, 7, 1, 7, 87, 1),
(28, 18, 0, 8, 88, 2),
(29, 3, 0, 9, 89, 1),
(30, 14, 1, 10, 90, 2),
(31, 11, 0, 1, 91, 1),
(32, 6, 0, 2, 92, 1),
(33, 9, 1, 3, 81, 2),
(34, 16, 0, 4, 82, 1),
(35, 19, 1, 5, 83, 2),
(36, 13, 0, 6, 84, 2),
(37, 4, 1, 7, 85, 1),
(38, 17, 0, 8, 86, 2),
(39, 2, 0, 9, 87, 1),
(40, 1, 1, 10, 88, 2);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `samolot`
--

CREATE TABLE `samolot` (
  `id` int(11) NOT NULL,
  `linie_lotnicze_id` int(11) DEFAULT NULL,
  `model_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `samolot`
--

INSERT INTO `samolot` (`id`, `linie_lotnicze_id`, `model_id`) VALUES
(1, 1, 1),
(2, 1, 6),
(3, 1, 7),
(4, 2, 2),
(5, 2, 5),
(6, 3, 3),
(7, 3, 4),
(8, 4, 4),
(9, 4, 5),
(10, 5, 1),
(11, 5, 2);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `status_rezerwacji`
--

CREATE TABLE `status_rezerwacji` (
  `id` int(11) NOT NULL,
  `status` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `status_rezerwacji`
--

INSERT INTO `status_rezerwacji` (`id`, `status`) VALUES
(1, 'Zarezerwowane'),
(2, 'Potwierdzone'),
(3, 'Anulowane');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `linie_lotnicze`
--
ALTER TABLE `linie_lotnicze`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `lot`
--
ALTER TABLE `lot`
  ADD PRIMARY KEY (`id`),
  ADD KEY `samolot_id` (`samolot_id`);

--
-- Indeksy dla tabeli `model`
--
ALTER TABLE `model`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `pasazer`
--
ALTER TABLE `pasazer`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `rezerwacja`
--
ALTER TABLE `rezerwacja`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pasazer_id` (`pasazer_id`),
  ADD KEY `numer_lotu` (`numer_lotu`),
  ADD KEY `status_rezerwacji_id` (`status_rezerwacji_id`);

--
-- Indeksy dla tabeli `samolot`
--
ALTER TABLE `samolot`
  ADD PRIMARY KEY (`id`),
  ADD KEY `linie_lotnicze_id` (`linie_lotnicze_id`),
  ADD KEY `model_id` (`model_id`);

--
-- Indeksy dla tabeli `status_rezerwacji`
--
ALTER TABLE `status_rezerwacji`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `linie_lotnicze`
--
ALTER TABLE `linie_lotnicze`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `lot`
--
ALTER TABLE `lot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `model`
--
ALTER TABLE `model`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pasazer`
--
ALTER TABLE `pasazer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `rezerwacja`
--
ALTER TABLE `rezerwacja`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `samolot`
--
ALTER TABLE `samolot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `status_rezerwacji`
--
ALTER TABLE `status_rezerwacji`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `lot`
--
ALTER TABLE `lot`
  ADD CONSTRAINT `lot_ibfk_1` FOREIGN KEY (`samolot_id`) REFERENCES `samolot` (`id`);

--
-- Constraints for table `rezerwacja`
--
ALTER TABLE `rezerwacja`
  ADD CONSTRAINT `rezerwacja_ibfk_1` FOREIGN KEY (`pasazer_id`) REFERENCES `pasazer` (`id`),
  ADD CONSTRAINT `rezerwacja_ibfk_2` FOREIGN KEY (`numer_lotu`) REFERENCES `lot` (`id`),
  ADD CONSTRAINT `rezerwacja_ibfk_3` FOREIGN KEY (`status_rezerwacji_id`) REFERENCES `status_rezerwacji` (`id`);

--
-- Constraints for table `samolot`
--
ALTER TABLE `samolot`
  ADD CONSTRAINT `samolot_ibfk_1` FOREIGN KEY (`linie_lotnicze_id`) REFERENCES `linie_lotnicze` (`id`),
  ADD CONSTRAINT `samolot_ibfk_2` FOREIGN KEY (`model_id`) REFERENCES `model` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
