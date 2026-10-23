"""Sistema de Evaluación Académica en Python que decide el estado final de un estudiante cruzando dos condiciones (calificación y asistencia) con if / elif / else anidados — eso es justo lo que le da la complejidad media: no es una sola comparación, sino varias combinadas.
Planteamiento (las reglas):
•	Calificación ≥ 90 y asistencia ≥ 80 → Aprobado con Honores
•	Calificación ≥ 90 y asistencia < 80 → Aprobado (sin honores)
•	Calificación ≥ 70 y asistencia ≥ 80 → Aprobado
•	Calificación ≥ 70 y asistencia < 80 → Aprobado a prueba
•	Calificación ≥ 60 y asistencia ≥ 80 → Aprobado con recuperación
•	Calificación ≥ 60 y asistencia < 80 → Reprobado por inasistencia
•	Calificación < 60 → Reprobado
También valida que los datos estén entre 0 y 100 (y vuelve a pedirlos si no)
"""
calificacion = float(input("Ingrese la calificación del estudiante (0-100): "))
if calificacion <= 0 or calificacion > 100:
    print("Fuera de rango, ingrese de uno a 100")
else:
    asistencia = float(input("Ingrese el porcentaje de asistencia (0-100): "))
    if asistencia <= 0 or asistencia > 100:
        print("Fuera de rango, ingrese de uno a 100")
    else:
        if calificacion >= 90 and asistencia >= 80:
            estado = "Aprobado con Honores"  
        elif calificacion >= 90 and asistencia < 80:
            estado = "Aprobado (sin honores)"  
        elif calificacion >= 70 and asistencia >= 80:
            estado = "Aprobado"
        elif calificacion >= 70 and asistencia < 80:
            estado = "Aprobado a prueba"
        elif calificacion >= 60 and asistencia >= 80:
            estado = "Aprobado con recuperación" 
        elif calificacion >= 60 and asistencia < 80:
            estado = "Reprobado por inasistencia"  
        else:
            estado = "Reprobado"
        print(f"Calificación: {calificacion}")
        print(f"Asistencia: {asistencia}%")
        print(f"Estado del estudiante: {estado}")