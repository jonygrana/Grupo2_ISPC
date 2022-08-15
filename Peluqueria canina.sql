/*Crear una BD para Peluqueria Canina*/

CREATE DATABASE `Huellitas` ;
USE Huellitas;

/*Agregar Tabla Dueno con clave primaria*/

CREATE TABLE Dueno
(DNI INT  NOT NULL,
Nombre VARCHAR (30) NOT NULL,
Apellido VARCHAR (20) NOT NULL,
Telefono BIGINT NULL,
Direccion VARCHAR (50) NULL,
PRIMARY KEY (DNI));

/*Agregar Tabla Perro con clave primaria y foranea*/

CREATE TABLE Perro
(ID_Perro INT  NOT NULL AUTO_INCREMENT,
Nombre_Pe VARCHAR (20) NOT NULL,
FechaNac_Pe DATE NULL,
Sexo_Pe VARCHAR (6),
DNI_Dueno INT NOT NULL,
PRIMARY KEY (Nombre_Pe),
CONSTRAINT FOREIGN KEY (DNI_dueno) REFERENCES Dueno (DNI)
);

/*Agregar Tabla Historial con clave primaria y foranea*/

CREATE TABLE Historial
(ID_Historial INT NOT NULL AUTO_INCREMENT,
Fecha_Historial DATE NOT NULL,
Perro INT NOT NULL AUTO_INCREMENT,
Servicio VARCHAR (10) NULL,
Monto FLOAT,
PRIMARY KEY (ID_Historial),
CONSTRAINT FOREIGN KEY (Perro) REFERENCES Perro (ID_Perro)
);

/*Agregar datos a las tablas*/

USE Huellitas;
 
/*En Tabla Dueno*/
INSERT INTO Dueno (DNI,Nombre,Apellido,Telefono,Direccion) VALUES (33617400,"Emilia","Garzon",0351145678755,"Sarmiento 383");
INSERT INTO Dueno (DNI,Nombre,Apellido,Telefono,Direccion) VALUES (33617401,"Regina","Gimenez",0351245678755,"Rivadavia 56");
INSERT INTO Dueno (DNI,Nombre,Apellido,Telefono,Direccion) VALUES (33617402,"Pablo","Suarez",0351345678755,"Nores Martinez 2766");

/*En Tabla Perro*/
INSERT INTO Perro (ID_Perro,Nombre_Pe,FechaNac_Pe,Sexo_Pe,DNI_Dueno) VALUES (001,"Gilbert","2021-03-13","macho",33617400);
INSERT INTO Perro (ID_Perro,Nombre_Pe,FechaNac_Pe,Sexo_Pe,DNI_Dueno) VALUES (002,"Bruno","2015-01-30","macho",33617401);
INSERT INTO Perro (ID_Perro,Nombre_Pe,FechaNac_Pe,Sexo_Pe,DNI_Dueno) VALUES (003,"Antonia","2017-06-26","hembra",33617402);

/*En Tabla Historial*/
INSERT INTO Historial (ID_Historial,Fecha_Historial,Perro,Servicio,Monto) VALUES (1,"2021-06-04",001,"Completo",1000);
INSERT INTO Historial (ID_Historial,Fecha_Historial,Perro,Servicio,Monto) VALUES (2,"2021-08-01",002,"Corte",800);
INSERT INTO Historial (ID_Historial,Fecha_Historial,Perro,Servicio,Monto) VALUES (3,"2022-01-10",003,"Baño",800);

/*Consultar todos los perros que asistieron a la peluqueria en 2022*/

SELECT * FROM Historial WHERE Perro BETWEEN 2022-01-01 AND 2022-12-31;
