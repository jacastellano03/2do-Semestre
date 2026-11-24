-- Nombre: Alejandro Castellano
-- Proyecto: Base de datos relacional - Control de inventario
-- Comprobacion de datos

SELECT * FROM categorias;
SELECT * FROM proveedores;
SELECT * FROM productos;
SELECT * FROM movimientos;

-- Todas las consultas usan una sola tabla (sin JOIN)

-- Necesidad 1: todos los registros principales del modulo (productos)
SELECT * FROM productos;

-- Necesidad 3: movimientos en estado Pendiente
SELECT * FROM movimientos
WHERE estado = 'Pendiente';

-- Necesidad 4: dos condiciones a la vez (AND)
-- productos disponibles con stock bajo (menos de 15)
SELECT nombre, precio, stock, estado FROM productos
WHERE estado = 'Disponible' AND stock < 15;

-- Necesidad 6: buscar por parte del nombre (LIKE)
SELECT * FROM productos
WHERE nombre LIKE '%Laptop%';

-- Necesidad 8: movimientos del mas reciente al mas antiguo
SELECT id, id_producto, tipo, cantidad, fecha, estado FROM movimientos
ORDER BY fecha DESC;

-- Necesidad 9: proveedores en orden alfabetico
SELECT nombre, ciudad, estado FROM proveedores
ORDER BY nombre;