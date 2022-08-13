"""
Ejercicio 2 - " Crear una lista en Python denominada “Dueno2”  y recorrerla con un bucle  mostrando sus elementos por pantalla con excepción del DNI y el apellido. Los elementos de la lista son:
23546987,  “Maria”,  “Perez”, 4789689,  “Pueyrredon  811” que representan los datos del dueño de un perro (DNI, nombre, apellido, teléfono y dirección)

"""

dni = 23546987
nombre = "Maria"
apellido = "Perez"
telefono = 4789689
direccion = "Pueyrredon  811"

Dueno2 = [nombre,apellido,telefono,dni,direccion]
largo = len(Dueno2)

for i in range(largo):
    if Dueno2[i] == dni:
        continue
    if Dueno2[i] == apellido:
        continue
    print(Dueno2[i])