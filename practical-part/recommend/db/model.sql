-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema ebsd-lap
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema ebsd-lap
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `ebsd-lap` DEFAULT CHARACTER SET utf8 ;
USE `ebsd-lap` ;

-- -----------------------------------------------------
-- Table `ebsd-lap`.`brand`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ebsd-lap`.`brand` (
  `code` VARCHAR(1) NOT NULL,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`code`),
  UNIQUE INDEX `id_UNIQUE` (`code` ASC) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ebsd-lap`.`model`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ebsd-lap`.`model` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `code` VARCHAR(45) NULL,
  `brand_id` VARCHAR(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) ,
  INDEX `fk_model_brand_idx` (`brand_id` ASC) ,
  CONSTRAINT `fk_model_brand`
    FOREIGN KEY (`brand_id`)
    REFERENCES `ebsd-lap`.`brand` (`code`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ebsd-lap`.`customer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ebsd-lap`.`customer` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `firstName` VARCHAR(45) NULL,
  `lastName` VARCHAR(45) NULL,
  `email` VARCHAR(45) NULL,
  `tel` VARCHAR(45) NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ebsd-lap`.`vehicle`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ebsd-lap`.`vehicle` (
  `vin` INT NOT NULL,
  `model_id` INT NOT NULL,
  `customer_id` INT NOT NULL,
  PRIMARY KEY (`vin`),
  UNIQUE INDEX `vin_UNIQUE` (`vin` ASC) ,
  INDEX `fk_vehicle_model1_idx` (`model_id` ASC) ,
  INDEX `fk_vehicle_customer1_idx` (`customer_id` ASC) ,
  CONSTRAINT `fk_vehicle_model1`
    FOREIGN KEY (`model_id`)
    REFERENCES `ebsd-lap`.`model` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_vehicle_customer1`
    FOREIGN KEY (`customer_id`)
    REFERENCES `ebsd-lap`.`customer` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ebsd-lap`.`type`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ebsd-lap`.`type` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `brand_code` VARCHAR(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) ,
  INDEX `fk_type_brand1_idx` (`brand_code` ASC) ,
  CONSTRAINT `fk_type_brand1`
    FOREIGN KEY (`brand_code`)
    REFERENCES `ebsd-lap`.`brand` (`code`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ebsd-lap`.`card`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ebsd-lap`.`card` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `createdAt` DATE NOT NULL,
  `validTo` DATE NOT NULL,
  `vehicle_vin` INT NOT NULL,
  `type_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) ,
  INDEX `fk_card_vehicle1_idx` (`vehicle_vin` ASC) ,
  INDEX `fk_card_type1_idx` (`type_id` ASC) ,
  CONSTRAINT `fk_card_vehicle1`
    FOREIGN KEY (`vehicle_vin`)
    REFERENCES `ebsd-lap`.`vehicle` (`vin`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_card_type1`
    FOREIGN KEY (`type_id`)
    REFERENCES `ebsd-lap`.`type` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
