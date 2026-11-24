-- Nombre: Alejandro Castellano
-- Proyecto: Base de datos relacional - Control de inventario
-- Archivo: datos.sql

-- 10 categorias
INSERT INTO categorias (nombre, descripcion)
VALUES
    ('Laptops', 'Computadoras portátiles'),
    ('Monitores', 'Pantallas para computadora'),
    ('Teclados', 'Teclados de membrana y mecánicos'),
    ('Mouse', 'Mouse con cable e inalámbricos'),
    ('Audífonos', 'Audífonos y headsets'),
    ('Impresoras', 'Impresoras de tinta y láser'),
    ('Almacenamiento', 'Discos duros, SSD y memorias USB'),
    ('Redes', 'Routers, switches y antenas'),
    ('Cables', 'Cables HDMI, USB y de red'),
    ('Accesorios', 'Mochilas, bases y otros accesorios');

-- 10 proveedores
INSERT INTO proveedores (nombre, ruc, telefono, ciudad, estado)
VALUES
    ('TecnoAndes S.A.', '1790012345001', '022456789', 'Quito', 'Activo'),
    ('Distribuidora Pacífico', '0991234567001', '042345678', 'Guayaquil', 'Activo'),
    ('CompuMundo Cía. Ltda.', '1791122334001', '022998877', 'Quito', 'Activo'),
    ('Importadora Sierra Digital', '0190456789001', '072833445', 'Cuenca', 'Activo'),
    ('RedNet Ecuador', '0992345678001', '042667788', 'Guayaquil', 'Activo'),
    ('Grupo Electrox', '1792233445001', '023334455', 'Quito', 'Activo'),
    ('Suministros Cotopaxi', '0590123456001', '032812345', 'Latacunga', 'Inactivo'),
    ('Mega Hardware', '1890345678001', '032425566', 'Ambato', 'Activo'),
    ('PrintSolutions EC', '1390567890001', '052623344', 'Manta', 'Inactivo'),
    ('Conecta Total', '1190678901001', '072571122', 'Loja', 'Activo');

-- 10 productos (id_categoria -> categorias.id, id_proveedor -> proveedores.id)
INSERT INTO productos (nombre, id_categoria, id_proveedor, precio, stock, estado)
VALUES
    ('Laptop Lenovo IdeaPad 3', 1, 1, 649.99, 12, 'Disponible'),
    ('Monitor Samsung 24 pulgadas', 2, 2, 189.50, 20, 'Disponible'),
    ('Teclado mecánico Redragon', 3, 3, 45.00, 35, 'Disponible'),
    ('Mouse inalámbrico Logitech', 4, 3, 22.90, 0, 'Agotado'),
    ('Audífonos HyperX Cloud', 5, 4, 79.99, 15, 'Disponible'),
    ('Impresora Epson L3250', 6, 9, 229.00, 0, 'Agotado'),
    ('Disco SSD Kingston 480GB', 7, 8, 38.75, 40, 'Disponible'),
    ('Router TP-Link Archer C6', 8, 5, 54.90, 9, 'Disponible'),
    ('Cable HDMI 2 metros', 9, 10, 6.50, 100, 'Disponible'),
    ('Laptop HP 15 Ryzen 5', 1, 6, 589.00, 7, 'Disponible');

-- 10 movimientos (id_producto -> productos.id)
INSERT INTO movimientos (id_producto, tipo, cantidad, fecha, estado, observacion)
VALUES
    (1, 'Entrada', 15, '2026-01-10', 'Aprobado', 'Compra inicial de laptops'),
    (2, 'Entrada', 20, '2026-02-05', 'Aprobado', 'Reposición de monitores'),
    (4, 'Salida', 10, '2026-03-12', 'Aprobado', 'Venta a empresa'),
    (6, 'Salida', 5, '2025-11-20', 'Aprobado', 'Venta en mostrador'),
    (3, 'Entrada', 35, '2025-12-01', 'Aprobado', 'Pedido de temporada navideña'),
    (1, 'Salida', 3, '2026-04-18', 'Pendiente', 'Venta por confirmar pago'),
    (7, 'Entrada', 40, '2026-05-22', 'Pendiente', 'Pedido en tránsito'),
    (9, 'Salida', 25, '2026-06-30', 'Aprobado', 'Venta institucional'),
    (5, 'Entrada', 15, '2025-10-15', 'Anulado', 'Pedido cancelado por el proveedor'),
    (10, 'Salida', 2, '2026-08-03', 'Pendiente', 'Reserva de cliente');