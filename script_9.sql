CREATE DATABASE Peluqueria_canina;
use Peluqueria_canina;
-- -------------------------------------------------------------------------------------------
-- --------------------------------------- TABLA Dueno ---------------------------------------
-- -------------------------------------------------------------------------------------------
CREATE TABLE Dueno(
	DNI int primary key not null auto_increment,
    Nombre varchar(30),
    Apellido varchar(30),
    Telefono bigint,
    Direccion varchar(30)
);
-- --------------------------------- valores de la tabla dueno ------------------------------------
insert into Dueno (DNI, Nombre, Apellido, Telefono, Direccion) values (42057570, "Hernan", "Sanchez",
1161555257, "Atilio Supparo 373");
insert into Dueno (DNI, Nombre, Apellido, Telefono, Direccion) values (11111111, "Juan", "Suarez",
1111111111, "Erezcano 3200");
insert into Dueno (DNI, Nombre, Apellido, Telefono, Direccion) values (22222222, "Mirta", "Romero",
2222222222, "Gral Roca 823");
insert into Dueno (DNI, Nombre, Apellido, Telefono, Direccion) values (33333333, "Jorge", " Martinez",
3333333333, "Laprida 2222");
insert into Dueno (DNI, Nombre, Apellido, Telefono, Direccion) values (44444444, "Lucas", "Ledesma",
4444444444, "Adolfo Alsina 989");
insert into Dueno (DNI, Nombre, Apellido, Telefono, Direccion) values (55555555, "Matias", "Islas",
5555555555, "Villaguay 378");
insert into Dueno (DNI, Nombre, Apellido, Telefono, Direccion) values (66666666, "Cristina", "Romero",
6666666666, "Alcorta  4453");
insert into Dueno (DNI, Nombre, Apellido, Telefono, Direccion) values (77777777, "Micaela", "Menendez",
7777777777, "Suipacha 500");
insert into Dueno (DNI, Nombre, Apellido, Telefono, Direccion) values (88888888, "Franco", "Ramirez",
8888888888, "Garibaldi 4562");
insert into Dueno (DNI, Nombre, Apellido, Telefono, Direccion) values (99999999, "Ricardo", "Morales",
9999999999, "Alberdi 563");

-- -------------------------------------------------------------------------------------------
-- --------------------------------------- TABLA PERRO ---------------------------------------
-- -------------------------------------------------------------------------------------------
CREATE TABLE Perro(
	ID_perro int primary key not null auto_increment,
    Nombre varchar(30),
    Fecha_nac date,
    Sexo varchar(6),
    DNI_dueno int,
    constraint FOREIGN KEY (DNI_dueno) references Dueno (DNI)
);
-- --------------------------------- valores de la tabla perro ---------------------------------
insert into Perro (ID_perro, Nombre, Fecha_nac, Sexo, DNI_dueno) values (1, "Zeus", "2010/07/20",
"Macho", 42057570);
insert into Perro (ID_perro, Nombre, Fecha_nac, Sexo, DNI_dueno) values (2, "Otto", "2007/01/05",
"Macho", 11111111);
insert into Perro (ID_perro, Nombre, Fecha_nac, Sexo, DNI_dueno) values (3, "Laika", "2009/03/15",
"Hembra", 22222222);
insert into Perro (ID_perro, Nombre, Fecha_nac, Sexo, DNI_dueno) values (4, "Snoopy", "2005/10/10",
"Macho", "33333333");
insert into Perro (ID_perro, Nombre, Fecha_nac, Sexo, DNI_dueno) values (5, "Frida", "2020/08/25",
"Hembra", 44444444);
insert into Perro (ID_perro, Nombre, Fecha_nac, Sexo, DNI_dueno) values (6, "Lassie", "2018/12/10",
"Hembra", 55555555);
insert into Perro (ID_perro, Nombre, Fecha_nac, Sexo, DNI_dueno) values (7, "Draco", "2010/10/09",
"Macho", 66666666);
insert into Perro (ID_perro, Nombre, Fecha_nac, Sexo, DNI_dueno) values (8, "Apolo", "2021/11/20",
"Macho", 77777777);
insert into Perro (ID_perro, Nombre, Fecha_nac, Sexo, DNI_dueno) values (9, "Bolt", "2003/09/07",
"Macho", 88888888);
insert into Perro (ID_perro, Nombre, Fecha_nac, Sexo, DNI_dueno) values (10, "Blue", "2022/02/20",
"Macho", 99999999);

-- -------------------------------------------------------------------------------------------
-- ----------------------------------- TABLA HISTORIAL ---------------------------------------
-- -------------------------------------------------------------------------------------------
CREATE TABLE Historial(
	ID_historial int primary key not null auto_increment,
    Fecha date,
    Perro int,
    Descripcion varchar(255),
    Monto int,
    constraint FOREIGN KEY (Perro) references Perro (ID_perro)
);
-- ------------------------------ valores de la tabla historial ---------------------------------
insert into Historial (ID_historial, Fecha, Perro, Descripcion, Monto) values (1, "2022/01/01", 1,
"Perro grande, baño completo", 3500);
insert into Historial (ID_historial, Fecha, Perro, Descripcion, Monto) values (2, "2022/07/11", 2,
"Perro grande, baño completo", 3500);
insert into Historial (ID_historial, Fecha, Perro, Descripcion, Monto) values (3, "2022/02/05", 3,
"Perro grande, baño completo mas corte de pelo", 4800);
insert into Historial (ID_historial, Fecha, Perro, Descripcion, Monto) values (4, "2022/08/02", 4,
"Perro pequeño, baño completo", 2000);
insert into Historial (ID_historial, Fecha, Perro, Descripcion, Monto) values (5, "2022/07/21", 5,
"Perro mediano, baño completo", 2700);
insert into Historial (ID_historial, Fecha, Perro, Descripcion, Monto) values (6, "2022/03/28", 6,
"Perro pequeño, baño completo mas corte de pelo", 2800);
insert into Historial (ID_historial, Fecha, Perro, Descripcion, Monto) values (7, "2022/06/12", 7,
"Perro pequeño, baño completo", 2000);
insert into Historial (ID_historial, Fecha, Perro, Descripcion, Monto) values (8, "2022/08/07", 8,
"Perro mediano, baño completo", 2700);
insert into Historial (ID_historial, Fecha, Perro, Descripcion, Monto) values (9, "2022/02/25", 9,
"Perro grande, baño completo mas corte de pelo", 4800);
insert into Historial (ID_historial, Fecha, Perro, Descripcion, Monto) values (10, "2022/02/17", 10,
"Perro grande, baño completo mas corte de pelo", 4800);


-- -------------------------- MODIFICANDO UN VALORE DE LA TABLA DUENO ------------------------
update Dueno set Direccion = "Libertad 123"
where DNI = 77777777;
-- select * from Dueno; Verifico si se cambio la direccion

-- -------------------------------------------------------------------------------------------