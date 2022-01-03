-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Erstellungszeit: 30. Mrz 2013 um 17:45
-- Server Version: 5.5.27
-- PHP-Version: 5.4.7

--
-- Datenbank: `lagerverwaltung`
--
DROP DATABASE IF EXISTS `lagerverwaltung`;
CREATE DATABASE IF NOT EXISTS `lagerverwaltung` DEFAULT CHARACTER SET utf32 COLLATE utf32_general_ci;
USE `lagerverwaltung`;

-- --------------------------------------------------------
-- Tabellenstruktur für Tabelle `tbl_lager`
--
DROP TABLE IF EXISTS `tbl_lager`;
CREATE TABLE IF NOT EXISTS `tbl_lager` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `artikel_nummer` varchar(45) NOT NULL,
  `menge` int(45) NOT NULL,
  PRIMARY KEY (`id`)
--  , UNIQUE KEY `artikel_nummer_UNIQUE` (`artikel_nummer`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf32 AUTO_INCREMENT=1;


--
-- Tabellenstruktur für Tabelle `tbl_auftrag`
--
DROP TABLE IF EXISTS `tbl_auftrag`;
CREATE TABLE IF NOT EXISTS `tbl_auftrag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `auftrag_nummer` varchar(45) NOT NULL,
  `anzahl` decimal(10,0) NOT NULL,
  `artikel_nummer` varchar(45),
  `fk_lager` int(11) NOT NULL,
  PRIMARY KEY (`id`)
-- , KEY `fk_tbl_auftrag_tbl_fk_lagerx` (`fk_lager`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf32 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------


select count(*) from tbl_lager;
select count(*) from tbl_auftrag;



-- ================================================================================

 ALTER TABLE `tbl_auftrag`
  ADD CONSTRAINT `fk_tbl_auftrag_tbl_lager` FOREIGN KEY (`fk_lager`) REFERENCES `tbl_lager` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ==================================== DDL ===============================================

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Datenbank: `lagerverwaltung`
--

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `gen_lagerartikel`(IN anzahl_artikel INT)
BEGIN

-- CALL gen_lagerartikel(50000);
  DECLARE i INT;
  DECLARE vorhanden INT;
  DECLARE flag INT;
  DECLARE artikelNummer INT;
  DECLARE menge INT;
  DECLARE txt_artnummer VARCHAR(50);
  DECLARE txt_artnummerstart VARCHAR(50);


  SELECT COUNT(`artikel_nummer`) INTO flag FROM tbl_lager;
  SET artikelNummer = 1;
  SET i = 1;
  SET menge = 20;
  SELECT NOW() INTO txt_artnummerstart;

  WHILE i < anzahl_artikel DO
    SET i = i + 1;
    SET artikelNummer = artikelNummer + 1;
    SELECT CONCAT(txt_artnummerstart,'-',artikelNummer) INTO txt_artnummer;
    INSERT INTO tbl_lager (artikel_nummer,menge)
      VALUES (txt_artnummer,menge);


    IF (i > 1000) AND (i < 4999) THEN
      SET menge = 34;
    END IF;

    IF (i > 5000) AND (i < 10000) THEN
      SET menge = 200;
    END IF;

    IF (i > 10000) AND (i < 50000) THEN
      SET menge = 18;
    END IF;

    IF (i > 50000) AND (i < 100000) THEN
      SET menge = 32;
    END IF;

    IF (i > 100000)  THEN
      SET menge = 320;
    END IF;

    END WHILE;

	IF (flag = 0) THEN
	SET vorhanden = 0;
	SELECT COUNT(*) INTO vorhanden FROM tbl_lager
          WHERE artikel_nummer='4711';
          IF (vorhanden = 0) THEN
	    INSERT INTO tbl_lager (artikel_nummer,menge)
	    VALUES ('4711',10);
	  END IF;
	  INSERT INTO tbl_lager (artikel_nummer,menge)
	    VALUES ('4712',20);
    END IF;



END$$

DELIMITER ;

-- =======================================================================================
DELIMITER $$
--
-- Prozeduren
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `gen_auftrag`(IN anzahl_auftrag INT)
BEGIN
-- CALL gen_auftrag(500);
  DECLARE i INT;
  DECLARE j INT;
  DECLARE anz_auftragpositionen INT;
  DECLARE menge INT;
  DECLARE artikelnummer VARCHAR(50);
  DECLARE auftrag_nummer VARCHAR(50);

  DECLARE cur1 CURSOR FOR SELECT artikel_nummer FROM tbl_lager;
  OPEN cur1;

  SET anz_auftragpositionen = 3;
  SET menge = 20;


  SET i = 1;
  WHILE (i < anzahl_auftrag / anz_auftragpositionen) DO



      SET j = 1;
      WHILE (j < anz_auftragpositionen) DO

	    FETCH cur1 into artikelnummer;


    SELECT CONCAT('A001','-',j,i) into auftrag_nummer;

        INSERT INTO tbl_auftrag (auftrag_nummer,anzahl,fk_lager)
          SELECT auftrag_nummer,menge,id from tbl_lager where artikel_nummer = artikelnummer;

        IF (i > 1) AND (i < 100) THEN
         SET menge = 33;
        END IF;

        IF (i > 100) AND (i < 200) THEN
          SET menge = 15;
        END IF;

        IF (i > 200) AND (i < 300) THEN
          SET menge = 32;
        END IF;

        IF (i > 300) AND (i < 400) THEN
          SET menge = 12;
        END IF;

        IF (i > 400)  THEN
          SET menge = 30;
        END IF;

        SET j = j + 1;
      END WHILE;





	SET i = i + 1;

  END WHILE;
  INSERT INTO tbl_auftrag (auftrag_nummer,anzahl,artikel_nummer,fk_lager)
      SELECT 'A009-',2,'4711',id from tbl_lager where artikel_nummer = '4711';
  INSERT INTO tbl_auftrag (auftrag_nummer,anzahl,artikel_nummer,fk_lager)
    SELECT 'A012-',5,'4712',id from tbl_lager where artikel_nummer = '4712';
  INSERT INTO tbl_auftrag (auftrag_nummer,anzahl,artikel_nummer,fk_lager)
    SELECT 'A099-',10,'4711',id from tbl_lager where artikel_nummer = '4711';
  CLOSE cur1;
END$$
DELIMITER ;
-- =======================================================================================


--


--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `tbl_auftrag`
--
-- ALTER TABLE `tbl_auftrag`
--  ADD CONSTRAINT `fk_tbl_auftrag_tbl_lager` FOREIGN KEY (`fk_lager`) REFERENCES `tbl_lager` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;


