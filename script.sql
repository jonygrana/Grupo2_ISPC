CREATE DATABASE Peluqueria_Canina;
use Peluqueria_Canina;

-- ************************************** [Dueno]
CREATE TABLE [Dueno]
(
 [DNI]       int NOT NULL ,
 [Nombre]    varchar(50) NOT NULL ,
 [Apellido]  varchar(50) NOT NULL ,
 [Telefono]  bigint(40) NOT NULL ,
 [Direccion] varchar(100) NOT NULL ,


 CONSTRAINT [PK_1] PRIMARY KEY CLUSTERED ([DNI] ASC)
);


-- ************************************** [Perro]
CREATE TABLE [Perro]
(
 [ID_Perro]  int NOT NULL ,
 [Nombre]    varchar(50) NOT NULL ,
 [DNI_dueno] int NOT NULL ,
 [Fecha_nac] date NOT NULL ,
 [Sexo]      varchar(10) NOT NULL ,


 CONSTRAINT [PK_1] PRIMARY KEY CLUSTERED ([ID_Perro] ASC),
 CONSTRAINT [FK_1] FOREIGN KEY ([DNI_dueno])  REFERENCES [Dueno]([DNI])
);


CREATE NONCLUSTERED INDEX [FK_2] ON [Perro] 
 (
  [DNI_dueno] ASC
 )


CREATE NONCLUSTERED INDEX [FK_2] ON [Historial] 
 (
  [Perro] ASC
 )

-- ************************************** [Historial]
CREATE TABLE [Historial]
(
 [ID_Historial] int NOT NULL ,
 [Fecha]        date NOT NULL ,
 [Perro]        int NOT NULL ,
 [Descripcion]  varchar(500) NOT NULL ,
 [Monto]        int NOT NULL ,


 CONSTRAINT [PK_1] PRIMARY KEY CLUSTERED ([ID_Historial] ASC),
 CONSTRAINT [FK_2] FOREIGN KEY ([Perro])  REFERENCES [Perro]([ID_Perro])
);


-- ************************************* [Carga Dueños]

INSERT INTO `dueno` (`DNI`, `Nombre`, `Apellido`, `Telefono`, `Direccion`) VALUES ('11323435', 'Pedro', 'Alvarado', '2974334345', 'Rio Mayo 3273'), ('24858394', 'Mariela', 'Rodriguez', '2974576894', 'Rio Lepa 231');
INSERT INTO `dueno` (`DNI`, `Nombre`, `Apellido`, `Telefono`, `Direccion`) VALUES ('12384764', 'Pedro', 'Suarez', '2974253475', 'San Martin 849');
INSERT INTO `dueno` (`DNI`, `Nombre`, `Apellido`, `Telefono`, `Direccion`) VALUES ('34485768', 'Pedro', 'Lamela', '2974574356', 'Avda. Rivadavia 345');
INSERT INTO `dueno` (`DNI`, `Nombre`, `Apellido`, `Telefono`, `Direccion`) VALUES ('2345456', 'Martin', 'Gutierrez', '2974879453', 'Cardenal Cagliero 2944');


-- ************************************* [Carga Perros]
INSERT INTO `perro` (`ID_Perro`, `Nombre`, `Fecha_nac`, `Sexo`, `DNI_dueno`) VALUES ('00001', 'Toto', '2020-08-04', 'Macho', '11323435');
INSERT INTO `perro` (`ID_Perro`, `Nombre`, `Fecha_nac`, `Sexo`, `DNI_dueno`) VALUES ('00002', 'Olivia', '2021-09-15', 'Hembra', '2345456');
INSERT INTO `perro` (`ID_Perro`, `Nombre`, `Fecha_nac`, `Sexo`, `DNI_dueno`) VALUES ('00003', 'Chicho', '2022-04-05', 'Macho', '12384764');
INSERT INTO `perro` (`ID_Perro`, `Nombre`, `Fecha_nac`, `Sexo`, `DNI_dueno`) VALUES ('00004', 'Roberta', '2018-05-10', 'Hembra', '34485768');
INSERT INTO `perro` (`ID_Perro`, `Nombre`, `Fecha_nac`, `Sexo`, `DNI_dueno`) VALUES ('00005', 'Malvicio', '2020-05-07', 'Macho', '30453413');
INSERT INTO `perro` (`ID_Perro`, `Nombre`, `Fecha_nac`, `Sexo`, `DNI_dueno`) VALUES ('00006', 'Malone', '2018-01-03', 'Macho', '24858394');


-- ************************************* [Consulta Multitabla 5. Realice una consulta multitabla que arroje el nombre de todos los perros cuyos dueños se llaman Pedro]

SELECT `dueno`.`Nombre`, `dueno`.`Apellido`, `perro`.`Nombre`
FROM `dueno` 
	LEFT JOIN `perro` ON `perro`.`DNI_dueno` = `dueno`.`DNI`
WHERE `dueno`.`Nombre` = 'Pedro';