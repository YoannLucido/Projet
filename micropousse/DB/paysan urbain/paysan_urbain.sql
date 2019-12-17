-- MySQL Script generated by MySQL Workbench
-- mar. 17 déc. 2019 17:35:11 CET
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema micropousses
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema micropousses
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `micropousses` DEFAULT CHARACTER SET utf8 ;
USE `micropousses` ;

-- -----------------------------------------------------
-- Table `micropousses`.`Client`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `micropousses`.`Client` (
  `ID_CL` INT NOT NULL AUTO_INCREMENT,
  `CL_nom` VARCHAR(45) NULL,
  `CL_adresse` VARCHAR(255) NULL,
  `CL_code_postal` VARCHAR(5) NULL,
  `CL_ville` VARCHAR(100) NULL,
  `CL_tel` VARCHAR(10) NULL,
  `CL_mail` VARCHAR(105) NULL,
  PRIMARY KEY (`ID_CL`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `micropousses`.`Fournisseur_matériels`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `micropousses`.`Fournisseur_matériels` (
  `ID_FM` INT NOT NULL AUTO_INCREMENT,
  `FM_nom` VARCHAR(50) NULL,
  `FM_adresse` VARCHAR(255) NULL,
  `FM_ville` VARCHAR(5) NULL,
  `FM_tel` VARCHAR(10) NULL,
  `FM_numéro_siret` VARCHAR(20) NULL,
  `FM_mail` VARCHAR(50) NULL,
  PRIMARY KEY (`ID_FM`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `micropousses`.`Paysan_Urbain`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `micropousses`.`Paysan_Urbain` (
  `ID_PU` INT NOT NULL AUTO_INCREMENT,
  `PU_nom` VARCHAR(20) NULL,
  `PU_adresse` VARCHAR(250) NULL,
  `PU_TEL` VARCHAR(10) NULL,
  `PU_mail` VARCHAR(50) NULL,
  PRIMARY KEY (`ID_PU`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `micropousses`.`Microupousse`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `micropousses`.`Microupousse` (
  `ID_MP` INT NOT NULL AUTO_INCREMENT,
  `MP_NOM` VARCHAR(50) NULL,
  `MP_quantité` VARCHAR(10) NULL,
  `MP_prix` FLOAT NULL,
  `MP_date_plantation` DATE NULL,
  `MP_date_recolte` DATE NULL,
  PRIMARY KEY (`ID_MP`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `micropousses`.`Commande_graines`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `micropousses`.`Commande_graines` (
  `ID_CG` INT NOT NULL AUTO_INCREMENT,
  `CG_commande` VARCHAR(45) NULL,
  `CG_date_commande` DATE NULL,
  `CG_date_livraison` DATE NULL,
  `CG_quantité` INT NULL,
  `CG_prix` FLOAT NULL,
  PRIMARY KEY (`ID_CG`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `micropousses`.`Commande_Clients`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `micropousses`.`Commande_Clients` (
  `ID_CC` INT NOT NULL AUTO_INCREMENT,
  `CC_date_commande` DATE NULL,
  `CC_date_livraison` DATE NULL,
  `CC_prix` INT NULL,
  PRIMARY KEY (`ID_CC`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `micropousses`.`Matériels`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `micropousses`.`Matériels` (
  `ID_MA` INT NOT NULL AUTO_INCREMENT,
  `MA_nom` VARCHAR(10) NULL,
  `MA_quantité` FLOAT NULL,
  PRIMARY KEY (`ID_MA`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `micropousses`.`Commande_Matériels`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `micropousses`.`Commande_Matériels` (
  `ID_CM` INT NOT NULL AUTO_INCREMENT,
  `CM_date_commande` DATE NULL,
  `CM_date_livraison` DATE NULL,
  `CM_prix_unitaire` FLOAT NULL,
  `CM_prix_total` FLOAT NULL,
  PRIMARY KEY (`ID_CM`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `micropousses`.`Fournisseur_Graines`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `micropousses`.`Fournisseur_Graines` (
  `iD_FG` INT NOT NULL AUTO_INCREMENT,
  `FG_numero_siret` VARCHAR(50) NULL,
  `FG_nom` VARCHAR(250) NULL,
  `FG_adresse` VARCHAR(50) NULL,
  `FG_ville` VARCHAR(10) NULL,
  `FG_ tel` VARCHAR(100) NULL,
  PRIMARY KEY (`iD_FG`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `micropousses`.`Graines`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `micropousses`.`Graines` (
  `ID_GR` INT NOT NULL,
  `GR_nom` VARCHAR(45) NULL,
  `GR_quantité` INT NULL,
  PRIMARY KEY (`ID_GR`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;