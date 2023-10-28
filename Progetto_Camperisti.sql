-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `mydb` ;

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Viaggiatore`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Viaggiatore` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Viaggiatore` (
  `ID_Viaggiatore` CHAR(10) NOT NULL,
  `Nome` VARCHAR(45) NULL,
  `Cognome` VARCHAR(45) NULL,
  `Registrato` INT NULL,
  PRIMARY KEY (`ID_Viaggiatore`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Mezzo`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Mezzo` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Mezzo` (
  `ID_Mezzo` CHAR(10) NOT NULL,
  `Targa` VARCHAR(45) NULL,
  `TipologiaMezzo` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`ID_Mezzo`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Proprietario`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Proprietario` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Proprietario` (
  `ID_Viaggiatore` CHAR(10) NOT NULL,
  `ID_Mezzo` CHAR(10) NOT NULL,
  PRIMARY KEY (`ID_Viaggiatore`, `ID_Mezzo`),
  INDEX `fk_Proprietario_Mezzo1_idx` (`ID_Mezzo` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Registrazione`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Registrazione` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Registrazione` (
  `ID_Registrazione` CHAR(10) NOT NULL,
  `Data` DATE NULL,
  PRIMARY KEY (`ID_Registrazione`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Spot`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Spot` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Spot` (
  `ID_Spot` CHAR(10) NOT NULL,
  `TipologiaSpot` VARCHAR(45) NOT NULL,
  `Regione` VARCHAR(45) NULL,
  `Luogo` VARCHAR(45) NULL,
  PRIMARY KEY (`ID_Spot`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Recensione`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Recensione` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Recensione` (
  `ID_Recensione` CHAR(10) NOT NULL,
  `Valutazione` SMALLINT(5) NULL,
  `Spot_ID_Spot` CHAR(10) NOT NULL,
  `Testo` VARCHAR(100) NULL,
  PRIMARY KEY (`ID_Recensione`),
  INDEX `fk_Recensione_Spot1_idx` (`Spot_ID_Spot` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Scrive`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Scrive` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Scrive` (
  `Viaggiatore_ID_Viaggiatore` CHAR(10) NOT NULL,
  `Recensione_ID_Recensione` CHAR(10) NOT NULL,
  PRIMARY KEY (`Viaggiatore_ID_Viaggiatore`, `Recensione_ID_Recensione`),
  INDEX `fk_Commento_Viaggiatore1_idx` (`Viaggiatore_ID_Viaggiatore` ASC) VISIBLE,
  INDEX `fk_Scrive_Recensione1_idx` (`Recensione_ID_Recensione` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Viaggio`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Viaggio` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Viaggio` (
  `Data` VARCHAR(45) NOT NULL,
  `Viaggiatore_ID_Viaggiatore` CHAR(10) NOT NULL,
  `Spot_ID_Spot` CHAR(10) NOT NULL,
  PRIMARY KEY (`Viaggiatore_ID_Viaggiatore`, `Spot_ID_Spot`, `Data`),
  INDEX `fk_Viaggio_Spot1_idx` (`Spot_ID_Spot` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Valuta`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Valuta` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Valuta` (
  `Recensione_ID_Recensione` CHAR(10) NOT NULL,
  `Viaggiatore_ID_Viaggiatore` CHAR(10) NOT NULL,
  PRIMARY KEY (`Recensione_ID_Recensione`, `Viaggiatore_ID_Viaggiatore`),
  INDEX `fk_Valuta_Recensione1_idx` (`Recensione_ID_Recensione` ASC) VISIBLE,
  INDEX `fk_Valuta_Viaggiatore1_idx` (`Viaggiatore_ID_Viaggiatore` ASC) VISIBLE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
