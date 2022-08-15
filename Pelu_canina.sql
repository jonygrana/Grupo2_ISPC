CREATE DATABASE Pelu_canina DEFAULT CHARACTER SET utf8 ;
USE pelu_canina;

#--------------------------------------------------------------#
# CREO LAS TABLAS #
#--------------------------------------------------------------#

CREATE TABLE Dueno(
DNI INT NOT NULL PRIMARY KEY,
Nombre VARCHAR (40) NOT NULL,
Apellido VARCHAR (40) NOT NULL,
Telefono BIGINT NOT NULL,
Direccion VARCHAR (60) NOT NULL
);

CREATE TABLE Perro(
	ID_Perro INT NOT NULL PRIMARY KEY,
    Nombre VARCHAR(40),
    Fecha_Nac DATE,
    Sexo VARCHAR(15),
    DNI_Dueno INT,
    CONSTRAINT FOREIGN KEY (DNI_dueno) REFERENCES Dueno (DNI)
);

CREATE TABLE Historial(
	ID_Historial INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    Fecha DATE,
    Perro INT,
    Descripcion VARCHAR(230),
    Monto INT,
    CONSTRAINT FOREIGN KEY (Perro) REFERENCES Perro (ID_Perro)
);

#--------------------------------------------------------------#
# INGRESO DE DATOS #
#--------------------------------------------------------------#

INSERT INTO Dueno (DNI, Nombre, Apellido, Telefono, Direccion) VALUES (33265395, "Gastón", "Grosso",155171132, "25 de Mayo 2313");
INSERT INTO Dueno (DNI, Nombre, Apellido, Telefono, Direccion) VALUES (32360907, "Sol", "Orrego",152516108, "Lavalle 55");
INSERT INTO Dueno (DNI, Nombre, Apellido, Telefono, Direccion) VALUES (41356542, "Laura", "Orrego",17532754, "Colon 23");

INSERT INTO Perro (ID_Perro, Nombre, Fecha_nac, Sexo, DNI_dueno) VALUES (001, "Arya", "2017-02-17","Hembra", 32360907);
INSERT INTO Perro (ID_Perro, Nombre, Fecha_nac, Sexo, DNI_dueno) VALUES (002,"Tyrion", "2001-02-02","Macho", 33265395);
INSERT INTO Perro (ID_Perro, Nombre, Fecha_nac, Sexo, DNI_dueno) VALUES (003,"Yuki", "2010-01-15","Hembra", 32360907);
INSERT INTO Perro (ID_Perro, Nombre, Fecha_nac, Sexo, DNI_dueno) VALUES (004,"Nayla", "2010-06-22","Hembra", 32360907);
INSERT INTO Perro (ID_Perro, Nombre, Fecha_nac, Sexo, DNI_dueno) VALUES (005,"Luna", "2001-03-25","Hembra", 30437103);
INSERT INTO Perro (ID_Perro, Nombre, Fecha_nac, Sexo, DNI_dueno) VALUES (006,"Katniss", "2000-04-09","Hembra", 41356542);

INSERT INTO Historial (ID_Historial, Fecha, Perro, Descripcion , Monto) VALUES ('0001', '22/07/2022','001', 'Baño', '1200');
INSERT INTO Historial (ID_Historial, Fecha, Perro, Descripcion , Monto) VALUES ('0002', '24/03/2021', '004', 'Corte', '1800'); 
INSERT INTO Historial (ID_Historial, Fecha, Perro, Descripcion , Monto) VALUES ('0003', '17/07/2022', '003', 'Corte de uñas', '500');
INSERT INTO Historial (ID_Historial, Fecha, Perro, Descripcion , Monto) VALUES ('0011', '22/05/2021', 'Corte', '1800', '005');
INSERT INTO Historial (ID_Historial, Fecha, Perro, Descripcion , Monto) VALUES ('0012', '24/09/2021', '002', 'Baño y corte de uñas', '1500');
INSERT INTO Historial (ID_Historial, Fecha, Perro, Descripcion , Monto) VALUES ('0013', '17/07/2022', '004', 'Corte y baño', '2000');

# Ejercicio 7: Obtener los ingresos percibidos en Julio del 2022 #

SELECT SUM(Monto) as TOTAL_MONTO FROM Historial WHERE Fecha BETWEEN '01/07/2022' AND '31/07/2022';
