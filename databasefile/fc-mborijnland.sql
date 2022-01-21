-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 18 jan 2022 om 11:50
-- Serverversie: 10.4.13-MariaDB
-- PHP-versie: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fc-mborijnland`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `coach`
--

CREATE TABLE `coach` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `game`
--

CREATE TABLE `game` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `team_id` int(11) NOT NULL,
  `coach_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `player`
--

CREATE TABLE `player` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `team`
--

CREATE TABLE `team` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `lw` int(11) NOT NULL,
  `st` int(11) NOT NULL,
  `rw` int(11) NOT NULL,
  `cm1` int(11) NOT NULL,
  `cm2` int(11) NOT NULL,
  `cm3` int(11) NOT NULL,
  `lb` int(11) NOT NULL,
  `cb1` int(11) NOT NULL,
  `gk` int(11) NOT NULL,
  `cb2` int(11) NOT NULL,
  `rb` int(11) NOT NULL,
  `couch1` int(11) NOT NULL,
  `couch2` int(11) NOT NULL,
  `couch3` int(11) NOT NULL,
  `couch4` int(11) NOT NULL,
  `couch5` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `admin` int(11) DEFAULT NULL,
  `created_on` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `coach`
--
ALTER TABLE `coach`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `game`
--
ALTER TABLE `game`
  ADD PRIMARY KEY (`id`),
  ADD KEY `coach_id` (`coach_id`),
  ADD KEY `team_id` (`team_id`);

--
-- Indexen voor tabel `player`
--
ALTER TABLE `player`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lw` (`lw`),
  ADD KEY `rw` (`rw`),
  ADD KEY `st` (`st`),
  ADD KEY `rb` (`rb`),
  ADD KEY `lb` (`lb`),
  ADD KEY `gk` (`gk`),
  ADD KEY `couch5` (`couch5`),
  ADD KEY `couch4` (`couch4`),
  ADD KEY `couch3` (`couch3`),
  ADD KEY `couch2` (`couch2`),
  ADD KEY `couch1` (`couch1`),
  ADD KEY `cm3` (`cm3`),
  ADD KEY `cm2` (`cm2`),
  ADD KEY `cm1` (`cm1`),
  ADD KEY `cb2` (`cb2`),
  ADD KEY `cb1` (`cb1`);

--
-- Indexen voor tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `coach`
--
ALTER TABLE `coach`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `game`
--
ALTER TABLE `game`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `player`
--
ALTER TABLE `player`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `team`
--
ALTER TABLE `team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Beperkingen voor geëxporteerde tabellen
--

--
-- Beperkingen voor tabel `game`
--
ALTER TABLE `game`
  ADD CONSTRAINT `game_ibfk_1` FOREIGN KEY (`coach_id`) REFERENCES `coach` (`id`),
  ADD CONSTRAINT `game_ibfk_2` FOREIGN KEY (`team_id`) REFERENCES `team` (`id`);

--
-- Beperkingen voor tabel `team`
--
ALTER TABLE `team`
  ADD CONSTRAINT `team_ibfk_1` FOREIGN KEY (`lw`) REFERENCES `player` (`id`),
  ADD CONSTRAINT `team_ibfk_10` FOREIGN KEY (`couch2`) REFERENCES `player` (`id`),
  ADD CONSTRAINT `team_ibfk_11` FOREIGN KEY (`couch1`) REFERENCES `player` (`id`),
  ADD CONSTRAINT `team_ibfk_12` FOREIGN KEY (`cm3`) REFERENCES `player` (`id`),
  ADD CONSTRAINT `team_ibfk_13` FOREIGN KEY (`cm2`) REFERENCES `player` (`id`),
  ADD CONSTRAINT `team_ibfk_14` FOREIGN KEY (`cm1`) REFERENCES `player` (`id`),
  ADD CONSTRAINT `team_ibfk_15` FOREIGN KEY (`cb2`) REFERENCES `player` (`id`),
  ADD CONSTRAINT `team_ibfk_16` FOREIGN KEY (`cb1`) REFERENCES `player` (`id`),
  ADD CONSTRAINT `team_ibfk_2` FOREIGN KEY (`rw`) REFERENCES `player` (`id`),
  ADD CONSTRAINT `team_ibfk_3` FOREIGN KEY (`st`) REFERENCES `player` (`id`),
  ADD CONSTRAINT `team_ibfk_4` FOREIGN KEY (`rb`) REFERENCES `player` (`id`),
  ADD CONSTRAINT `team_ibfk_5` FOREIGN KEY (`lb`) REFERENCES `player` (`id`),
  ADD CONSTRAINT `team_ibfk_6` FOREIGN KEY (`gk`) REFERENCES `player` (`id`),
  ADD CONSTRAINT `team_ibfk_7` FOREIGN KEY (`couch5`) REFERENCES `player` (`id`),
  ADD CONSTRAINT `team_ibfk_8` FOREIGN KEY (`couch4`) REFERENCES `player` (`id`),
  ADD CONSTRAINT `team_ibfk_9` FOREIGN KEY (`couch3`) REFERENCES `player` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
