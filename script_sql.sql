create database Duenos_Perros;
create table Duenos_Perros . Duenos(
DNI int not null primary key,
Nombre varchar (50) not null,
Apellido varchar (50) not null,
Telefono int not null,
Direccion varchar (50) not null
);

create table Duenos_Perros . Perros (
ID_Perro int not null primary key,
Nombre varchar (50) not null,
Fecha_nac date not null,
Sexo varchar (10) not null,
DNI_Dueno int,
constraint DNI_Dueno foreign key (DNI_Dueno) references duenos_perros.duenos(DNI)
);

create table Duenos_Perros . Historial (
ID_Historial int not null primary key,
Fecha date not null,
Perro int,
Descripcion varchar(100),
Monto int,
constraint Perro foreign key (Perro) references duenos_perros.perros(ID_Perro)
);

insert into duenos_perros.duenos(DNI, Nombre, Apellido, Telefono, Direccion) values (42888765, "Rocio", "Volpato", 351456345, "Derqui 285");

insert into duenos_perros.perros (ID_Perro, Nombre, Fecha_nac, sexo,DNI_Dueno) values (1,"Tenten",20201212,"hembra",42888765);

UPDATE duenos_perros.perros
SET Fecha_nac = 20211212
WHERE ID_Perro = 1;