# Creamos una lista vacia

pila = []


# PUSH: Agregar elementos

pila.append("Libro A")
pila.append("Libro B")
pila.append("Libro C")

print('Pila inicial: ', pila)

# PEEK: Consultar el ultimo elemento
print("Elemento en la cima:", pila[-1])

# POOP: Retirar el ultimo elemento de la pila

retirado = pila.pop()

print("El libro retirado fue:", retirado)
print("La nueva lista es:", pila)