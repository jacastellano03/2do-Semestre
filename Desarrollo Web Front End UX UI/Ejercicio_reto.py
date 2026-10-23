"""Desarrollar un programa que simule un cajero automático.
El sistema debe:
Solicitar una clave.
Validar si la clave es correcta.
Si es correcta, mostrar un menú:
Consultar saldo
Depositar dinero
Retirar dinero
Salir
Para retirar:
Verificar que el monto sea positivo.
Verificar que exista saldo suficiente.
Para depositar:
Verificar que el monto sea mayor que cero."""

# Datos iniciales
clave = "5426"
saldo = [1000.0] 

# 1 y 2. Solicitar y validar la clave
clave_ingresada = input("Ingrese su clave de 4 dígitos: ")

if clave_ingresada == clave:
    print("\nClave correcta")
    
    # Creamos una función para el menú para poder repetirlo fácilmente
    def mostrar_menu():
        print("1. Consultar saldo")
        print("2. Depositar dinero")
        print("3. Retirar dinero")
        print("4. Salir")
        
        opcion = input("Seleccione una opcion: ")
        
        # Opción 1: Consultar saldo
        if opcion == "1":
            print(f"Su saldo actual es: ${saldo[0]:.2f}")
            mostrar_menu() # Vuelve a mostrar el menú
            
        # Opción 2: Depositar dinero
        elif opcion == "2":
            monto_deposito = float(input("Ingrese la cantidad a depositar: $"))
            if monto_deposito > 0:
                saldo[0] += monto_deposito
                print(f"¡Depósito exitoso! Nuevo saldo: ${saldo[0]:.2f}")
            else:
                print("Error: El monto a depositar debe ser mayor que cero.")
            mostrar_menu() # Vuelve a mostrar el menú
            
        # Opción 3: Retirar dinero
        elif opcion == "3":
            monto_retiro = float(input("Ingrese la cantidad a retirar: $"))
            if monto_retiro > 0:
                if monto_retiro <= saldo[0]:
                    saldo[0] -= monto_retiro
                    print(f"¡Retiro exitoso! Saldo restante: ${saldo[0]:.2f}")
                else:
                    print("Error: Saldo insuficiente.")
            else:
                print("Error: El monto a retirar debe ser positivo.")
            mostrar_menu() # Vuelve a mostrar el menú
            
        # Opción 4: Salir
        elif opcion == "4":
            print("Gracias por usar el cajero")
            
        else:
            print("Opción no válida.")
            mostrar_menu() # Vuelve a mostrar el menú si se equivoca

    # Llamamos al menú por primera vez
    mostrar_menu()

else:
    print("\nClave incorrecta. Acceso denegado.")