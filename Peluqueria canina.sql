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
-- Ingreso de valores en Dueno
-- -----------------------------------------------------

SELECT * FROM PeluqueriaHuellitas.Dueno;
INSERT INTO `PeluqueriaHuellitas`.`Dueno` (`DNI_Du`, `nombre_Du`, `apellido_Du`, `telefono_Du`, `direccion_Du`) VALUES ('33617400', 'Emilia', 'Garzon', '3511', 'sarmiento 383');
INSERT INTO `PeluqueriaHuellitas`.`Dueno` (`DNI_Du`, `nombre_Du`, `apellido_Du`, `telefono_Du`, `direccion_Du`) VALUES ('33617401', 'Regina', 'Suarez', '3512', 'rivadavia 56');
INSERT INTO `PeluqueriaHuellitas`.`Dueno` (`DNI_Du`, `nombre_Du`, `apellido_Du`, `telefono_Du`, `direccion_Du`) VALUES ('33617402', 'Pablo', 'Diaz', '3513', 'nores martinez 2766');

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
-- Ingreso de valores en Perro
-- -----------------------------------------------------
SELECT * FROM PeluqueriaHuellitas.Perro;

INSERT INTO `PeluqueriaHuellitas`.`Perro` (`ID_Perro`, `nombre_Perro`, `fecha_NacPerro`, `sexo_Perro`, `DNI_Dueno`) VALUES ('1', 'Gilberto', '13/03/2021', 'macho', '33617400');
INSERT INTO `PeluqueriaHuellitas`.`Perro` (`ID_Perro`, `nombre_Perro`, `fecha_NacPerro`, `sexo_Perro`, `DNI_Dueno`) VALUES ('2', 'Bruno', '30/01/2015', 'macho', '33617401');
INSERT INTO `PeluqueriaHuellitas`.`Perro` (`ID_Perro`, `nombre_Perro`, `fecha_NacPerro`, `sexo_Perro`, `DNI_Dueno`) VALUES ('3', 'Antonia', '26/06/2017', 'hembra', '33617402');

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

-- -----------------------------------------------------
-- Ingreso de valores en Historial
-- -----------------------------------------------------

SELECT * FROM PeluqueriaHuellitas.Historial;
INSERT INTO `PeluqueriaHuellitas`.`historial` (`ID_His`, `fecha_His`, `descripcion_His`, `Monto_His`, `Perro`) VALUES ('001', '22/02/2021', 'corte', '1500', '1');
INSERT INTO `PeluqueriaHuellitas`.`historial` (`ID_His`, `fecha_His`, `descripcion_His`, `Monto_His`, `Perro`) VALUES ('002', '24/02/2021', 'corte', '1500', '2');
INSERT INTO `PeluqueriaHuellitas`.`historial` (`ID_His`, `fecha_His`, `descripcion_His`, `Monto_His`, `Perro`) VALUES ('003', '17/01/2022', 'corte', '2000', '3');


