-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema bdBiblioteca
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `bdBiblioteca` ;

-- -----------------------------------------------------
-- Schema bdBiblioteca
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `bdBiblioteca` DEFAULT CHARACTER SET utf8 ;
USE `bdBiblioteca` ;

-- -----------------------------------------------------
-- Table `bdBiblioteca`.`tLibro`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `bdBiblioteca`.`tLibro` ;

CREATE TABLE IF NOT EXISTS `bdBiblioteca`.`tLibro` (
  `idLibro` INT NOT NULL AUTO_INCREMENT,
  `codigo` VARCHAR(45) NOT NULL,
  `titulo` VARCHAR(150) NOT NULL,
  `editorial` VARCHAR(150) NOT NULL,
  `anio` VARCHAR(4) NOT NULL,
  `fechaRegistro` DATETIME NOT NULL,
  `estadoLibro` VARCHAR(250) NOT NULL,
  `estadoActivo` VARCHAR(15) NOT NULL,
  PRIMARY KEY (`idLibro`),
  UNIQUE INDEX `idLibro_UNIQUE` (`idLibro` ASC) VISIBLE,
  UNIQUE INDEX `codigo_UNIQUE` (`codigo` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bdBiblioteca`.`tAutor`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `bdBiblioteca`.`tAutor` ;

CREATE TABLE IF NOT EXISTS `bdBiblioteca`.`tAutor` (
  `idAutor` INT NOT NULL AUTO_INCREMENT,
  `Nombres` VARCHAR(150) NOT NULL,
  `LugarNacimiento` VARCHAR(150) NOT NULL,
  `GeneroLiterario` VARCHAR(150) NOT NULL,
  `Periodo` VARCHAR(150) NOT NULL,
  PRIMARY KEY (`idAutor`),
  UNIQUE INDEX `idAutor_UNIQUE` (`idAutor` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bdBiblioteca`.`tLibro_has_tAutor`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `bdBiblioteca`.`tLibro_has_tAutor` ;

CREATE TABLE IF NOT EXISTS `bdBiblioteca`.`tLibro_has_tAutor` (
  `idDetalleLibroAutor` INT NOT NULL AUTO_INCREMENT,
  `idLibro` INT NOT NULL,
  `idAutor` INT NOT NULL,
  PRIMARY KEY (`idDetalleLibroAutor`, `idLibro`, `idAutor`),
  INDEX `fk_tLibro_has_tAutor_tAutor1_idx` (`idAutor` ASC) VISIBLE,
  INDEX `fk_tLibro_has_tAutor_tLibro_idx` (`idLibro` ASC) VISIBLE,
  UNIQUE INDEX `idDetalleLibroAutor_UNIQUE` (`idDetalleLibroAutor` ASC) VISIBLE,
  CONSTRAINT `fk_tLibro_has_tAutor_tLibro`
    FOREIGN KEY (`idLibro`)
    REFERENCES `bdBiblioteca`.`tLibro` (`idLibro`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tLibro_has_tAutor_tAutor1`
    FOREIGN KEY (`idAutor`)
    REFERENCES `bdBiblioteca`.`tAutor` (`idAutor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
