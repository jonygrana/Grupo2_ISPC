# Crear una lista en Python denominada “Dueno” que contenga los siguientes valores:

# 28957346,  Juan,  Perez, 4789689,  Belgrano 101

# Dichos datos se corresponden  con los datos del dueño de un perro:
#(DNI, nombre, apellido, teléfono y dirección).

# Muestre en pantalla el teléfono del dueño si el DNI es mayor a 26000000.


DNI = 28957346
nombre = "Juan"
apellido = "Perez"
telefono = 351443567
direccion = "Belgrano 101"

Dueno = [DNI, nombre, apellido, telefono, direccion]

if DNI > 26000000:
    print ("Telefono del dueño:", Dueno[3])


