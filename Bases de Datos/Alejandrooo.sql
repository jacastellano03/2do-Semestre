CREATE TABLE IF NOT EXISTS desarrolladores (
id serial primary key,
nombre varchar(80) not null unique,
pais varchar(50) not null,
anio_fundacion int not null,
estado_actual varchar(20) not null
);

CREATE TABLE IF NOT EXISTS juegos(
id serial primary key,
titulo varchar(50) not null unique,
genero varchar(50) not null,
id_desarrollador int not null REFERENCES desarrolladores(id),
anio_lanzamiento int not null
);


CREATE TABLE IF NOT EXISTS consolas(
id serial primary key,
nombre varchar(50) not null unique,
fabricante varchar(50) not null,
generacion int,
unidades_vendidas int
);


CREATE TABLE IF NOT EXISTS personajes(
id serial primary key,
nombre varchar(80) not null,
rol varchar(30) not null,
id_juego int not null REFERENCES juegos(id),
habilidad varchar(60)
);


CREATE TABLE IF NOT EXISTS lanzamientos(
id serial primary key,
id_juego int not null REFERENCES juegos(id),
id_consola int not null REFERENCES consolas(id),
anio_salida int not null,
precio numeric(6,2),
unique (id_juego, id_consola)
);

--Apuntes17/11/26

SELECT * 
FROM clientes 
ORDER BY nombre;

select count(*) FROM clientes;
SELECT COUNT(*) FROM detalle_pedido;
SELECT COUNT(*) FROM mesas;
SELECT COUNT(*) FROM meseros;
SELECT COUNT(*) FROM pedidos;
SELECT COUNT(*) FROM platos;

SELECT  nombre, apellido, correo
FROM clientes
ORDER BY id_cliente;

-- Condicionales
SELECT nombre, apellido, correo
FROM clientes
WHERE (nombre = 'Luis' 
	OR apellido = 'luis') 
	AND apellido = 'Vega';				-- Se debe usar comillas simples


SELECT 
	m.nombre, AS nombre_mesero,
	m.apellido, AS apellido_mesero,
	c.nombre, AS nombre_cliente,
	c.apellido, AS apellido_cliente 
FROM meseros AS m, clientes AS c;
WHERE (m.nombre = 'Luis' OR m.nombre = 'luis' OR c.nombre = 'Luis' OR c.nombre = 'luis')
