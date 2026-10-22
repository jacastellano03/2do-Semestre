
pila_calificaciones = []

pila_calificaciones.append(10)
pila_calificaciones.append(20)
pila_calificaciones.append(30)
pila_calificaciones.append(50)
pila_calificaciones.append(40)


print("Pila inicial:", pila_calificaciones)

# Primer elemento retirado
retirado = pila_calificaciones.pop()
print("Primer retiro realizado:", retirado)

print("Pila actualizada:",pila_calificaciones)


# Segundo elemento retirado
retirado = pila_calificaciones.pop()
print("Segundo retiro realizado:", retirado)

print("Pila actualizada:",pila_calificaciones)


# Dos elementos retirados a la vez

retirado_2 = pila_calificaciones.pop(), pila_calificaciones.pop()

print("Elementos retirados:", retirado_2)

print("Pila actualizada y final:", pila_calificaciones)