-- Nombre: Alejandro Castellano
-- Proyecto: Base de datos relacional - Control de inventario
-- Archivo: estructura.sql

-- 1) categorias: tipo de producto (tabla padre)
CREATE TABLE IF NOT EXISTS categorias (
id serial primary key,                   
nombre varchar(50) not null unique,       
descripcion varchar(150)                  
);


-- 2) proveedores: empresas que nos venden (tabla padre)
CREATE TABLE IF NOT EXISTS proveedores (
id serial primary key,
nombre varchar(80) not null unique,
ruc varchar(13) not null unique,          
telefono varchar(15),
ciudad varchar(50) not null,
estado varchar(20) not null               
);


-- 3) productos: 1 categoria y 1 proveedor por producto (1:N)
CREATE TABLE IF NOT EXISTS productos (
id serial primary key,
nombre varchar(80) not null unique,
id_categoria int not null REFERENCES categorias(id),    -- FK
id_proveedor int not null REFERENCES proveedores(id),   -- FK
precio numeric(8,2) not null,             
stock int not null,
estado varchar(20) not null               
);

-- 4) movimientos: entradas y salidas de un producto (1:N)
CREATE TABLE IF NOT EXISTS movimientos (
id serial primary key,
id_producto int not null REFERENCES productos(id),      -- FK
tipo varchar(10) not null,               
cantidad int not null,
fecha date not null,                     
estado varchar(20) not null,              
observacion varchar(150)
);


