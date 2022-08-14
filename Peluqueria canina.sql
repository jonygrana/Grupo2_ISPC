-- -----------------------------------------------------
-- Schema PeluqueriaHuellitas
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `PeluqueriaHuellitas` DEFAULT CHARACTER SET utf8 ;
USE `PeluqueriaHuellitas` ;

-- -----------------------------------------------------
-- Table `PeluqueriaHuellitas`.`Dueno`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `PeluqueriaHuellitas`.`Dueno` (
  `DNI_Du` INT NOT NULL,
  `nombre_Du` VARCHAR(30) NOT NULL,
  `apellido_Du` VARCHAR(50) NOT NULL,
  `telefono_Du` BIGINT(30) NOT NULL,
  `direccion_Du` LONGTEXT NULL,
  PRIMARY KEY (`DNI_Du`))
;


-- -----------------------------------------------------
-- Table `PeluqueriaHuellitas`.`Perro`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `PeluqueriaHuellitas`.`Perro` (
  `ID_Perro` INT NOT NULL AUTO_INCREMENT,
  `nombre_Perro` VARCHAR(50) NOT NULL,
  `fecha_NacPerro` DATE NOT NULL,
  `sexo_Perro` VARCHAR(6) NOT NULL,
  `DNI_Dueno` INT NULL,
  PRIMARY KEY (`ID_Perro`),
  INDEX `DNI_Dueno_idx` (`DNI_Dueno` ASC) VISIBLE,
  CONSTRAINT `DNI_Dueno`
    FOREIGN KEY (`DNI_Dueno`)
    REFERENCES `PeluqueriaHuellitas`.`Dueno` (`DNI_Du`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
;


-- -----------------------------------------------------
-- Table `PeluqueriaHuellitas`.`Historial`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `PeluqueriaHuellitas`.`Historial` (
  `ID_His` INT NOT NULL AUTO_INCREMENT,
  `fecha_His` DATE NOT NULL,
  `descripcion_His` LONGTEXT NULL,
  `Monto_His` FLOAT NULL,
  `Perro` INT NOT NULL,
  PRIMARY KEY (`ID_His`),
  INDEX `Perro_idx` (`Perro` ASC) VISIBLE,
  CONSTRAINT `Perro`
    FOREIGN KEY (`Perro`)
    REFERENCES `PeluqueriaHuellitas`.`Perro` (`ID_Perro`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
;



