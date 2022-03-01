-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 23 Lut 2022, 21:59
-- Wersja serwera: 10.4.14-MariaDB
-- Wersja PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `hotel`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `lokatorzy`
--

CREATE TABLE `lokatorzy` (
  `imie` text NOT NULL,
  `nazwisko` text NOT NULL,
  `urodzenie` varchar(10) NOT NULL,
  `pesel` varchar(11) NOT NULL,
  `oplata` varchar(11) NOT NULL,
  `zameldowanie` varchar(10) NOT NULL,
  `wymeldowanie` varchar(10) NOT NULL,
  `godz_zameldowania` varchar(5) NOT NULL,
  `telefon` varchar(11) NOT NULL,
  `iloscOsob` int(2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `lokatorzy`
--

INSERT INTO `lokatorzy` (`imie`, `nazwisko`, `urodzenie`, `pesel`, `oplata`, `zameldowanie`, `wymeldowanie`, `godz_zameldowania`, `telefon`, `iloscOsob`) VALUES
('1354', '513', '53-13-5153', '135', '31513', '53-15-1353', '53-15-3113', '35:15', '5135135', 13513),
('1354', '513', '53-13-5153', '531531', '31513', '53-15-1353', '53-15-3113', '35:15', '5135135', 13513);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pokoje`
--

CREATE TABLE `pokoje` (
  `nr` int(11) NOT NULL,
  `stan` int(11) NOT NULL,
  `wymiar` float NOT NULL,
  `wyposazenie` varchar(7) NOT NULL,
  `lozka` int(11) NOT NULL,
  `standard` varchar(10) NOT NULL COMMENT 'możliwe: apartament, standard',
  `lokator` varchar(11) NOT NULL COMMENT 'odwołanie do lokatora w tabeli lokatorzy'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `pokoje`
--

INSERT INTO `pokoje` (`nr`, `stan`, `wymiar`, `wyposazenie`, `lozka`, `standard`, `lokator`) VALUES
(1, 0, 25, '1111111', 2, 'Apartament', '135'),
(2, 0, 36, '0111100', 1, 'Standard', '');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pracownicy`
--

CREATE TABLE `pracownicy` (
  `id` int(11) NOT NULL,
  `imie` text NOT NULL,
  `nazwisko` text NOT NULL,
  `pesel` varchar(11) NOT NULL,
  `stanowisko` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `lokatorzy`
--
ALTER TABLE `lokatorzy`
  ADD UNIQUE KEY `pesel` (`pesel`);

--
-- Indeksy dla tabeli `pokoje`
--
ALTER TABLE `pokoje`
  ADD PRIMARY KEY (`nr`);

--
-- Indeksy dla tabeli `pracownicy`
--
ALTER TABLE `pracownicy`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `pokoje`
--
ALTER TABLE `pokoje`
  MODIFY `nr` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=532;

--
-- AUTO_INCREMENT dla tabeli `pracownicy`
--
ALTER TABLE `pracownicy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
