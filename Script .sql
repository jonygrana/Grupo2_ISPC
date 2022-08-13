CREATE DATABASE Peluqueria_canina;
USE peluqueria_canina;


# CREO LAS 3 TABLAS #


CREATE TABLE Dueno(
DNI INT NOT NULL PRIMARY KEY,
Nombre VARCHAR (30) NOT NULL,
Apellido VARCHAR (30) NOT NULL,
Telefono BIGINT NOT NULL,
Direccion VARCHAR (50) NOT NULL
);

CREATE TABLE Perro(
	ID_perro INT NOT NULL PRIMARY KEY,
    Nombre VARCHAR(30),
    Fecha_nac DATE,
    Sexo VARCHAR(10),
    DNI_dueno INT,
    CONSTRAINT FOREIGN KEY (DNI_dueno) REFERENCES Dueno (DNI)
);

CREATE TABLE Historial(
	ID_historial INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    Fecha DATE,
    Perro INT,
    Descripcion VARCHAR(300),
    Monto INT,
    CONSTRAINT FOREIGN KEY (Perro) REFERENCES Perro (ID_perro)
);

# CARGO DATOS #

INSERT INTO Dueno (DNI, Nombre, Apellido, Telefono, Direccion) VALUES (30437103, "Gonzalo", "Fernandez",514279, "Junzal 633");
INSERT INTO Dueno (DNI, Nombre, Apellido, Telefono, Direccion) VALUES (35961550, "Manuel", "Gomez",12564896, "Richieri 55");
INSERT INTO Dueno (DNI, Nombre, Apellido, Telefono, Direccion) VALUES (41356542, "Laura", "Lopez",2496321, "Rivadavia 1265");

INSERT INTO Perro (ID_perro, Nombre, Fecha_nac, Sexo, DNI_dueno) VALUES (1, "Cartucho", "2011-02-17","Macho", 30437103);
INSERT INTO Perro (ID_perro, Nombre, Fecha_nac, Sexo, DNI_dueno) VALUES (2,"Negro", "2021-02-12","Macho", 35961550);
INSERT INTO Perro (ID_perro, Nombre, Fecha_nac, Sexo, DNI_dueno) VALUES (3,"Titi", "2020-01-15","Macho", 41356542);
INSERT INTO Perro (ID_perro, Nombre, Fecha_nac, Sexo, DNI_dueno) VALUES (4,"Sultan", "2020-06-22","Macho", 35961550);
INSERT INTO Perro (ID_perro, Nombre, Fecha_nac, Sexo, DNI_dueno) VALUES (5,"Uma", "2021-03-25","Hembra", 30437103);
INSERT INTO Perro (ID_perro, Nombre, Fecha_nac, Sexo, DNI_dueno) VALUES (6,"Emma", "2020-04-09","Hembra", 41356542);

# HAGO LA CONSULTA PEDIDA EN EL PUNTO 12 ("Obtener todos los perros de sexo “macho” nacidos entre 2020 y 2022") #

SELECT * FROM perro WHERE sexo = "macho" AND 
EXTRACT(year FROM fecha_nac) BETWEEN 2020 AND 2022;

