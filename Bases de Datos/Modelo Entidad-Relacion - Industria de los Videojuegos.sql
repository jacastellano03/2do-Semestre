-- Nombre: Alejandro Castellano
-- Proyecto: Modelo Entidad-Relacion - Industria de los Videojuegos

/**
 * PASO 1: Recrear tablas (CREATE TABLE IF NOT EXISTS)
 *
*/

DROP TABLE IF EXISTS lanzamientos CASCADE;
DROP TABLE IF EXISTS personajes CASCADE;
DROP TABLE IF EXISTS juegos CASCADE;
DROP TABLE IF EXISTS consolas CASCADE;
DROP TABLE IF EXISTS desarrolladores CASCADE;


create table if not exists desarrolladores (
	id serial primary key,
	nombre varchar(80) not null,
	pais varchar(50) not null,
	anio_fundacion int not null,
	estado_actual varchar(20) not null
);


create table if not exists consolas(
	id serial primary key,
	nombre varchar(50) not null unique,
	fabricante varchar(50) not null,
	generacion int,
	unidades_vendidas int
);


/**
 * Relaciones entre tablas
 * 
*/

create table if not exists juegos(
	id serial primary key,
	titulo varchar(50) not null unique,
	genero varchar(50) not null,
	id_desarrollador int not null REFERENCES desarrolladores(id),
	anio_lanzamiento int not null
);


create table if not exists personajes(
	id serial primary key,
	nombre varchar(80) not null,
	rol varchar(30) not null,
	id_juego int not null REFERENCES juegos(id),
	habilidad varchar(60)
);


create table if not exists lanzamientos(
	id serial primary key,
	id_juego int not null REFERENCES juegos(id),
	id_consola int not null REFERENCES consolas(id),
	anio_salida int not null,
	precio numeric(6,2),
	unique (id_juego, id_consola)
);


/**
 * PASO 3: Cargar datos (INSERT) - minimo 10 filas por tabla
 * 
*/


insert into desarrolladores (nombre, pais, anio_fundacion, estado_actual)
values 
    ('Nintendo', 'Japón', 1889, 'Activo'),
    ('FromSoftware', 'Japón', 1986, 'Activo'),
    ('CD Projekt Red', 'Polonia', 1994, 'Activo'),
    ('Rockstar Games', 'EE.UU.', 1998, 'Activo'),
    ('Valve', 'EE.UU.', 1996, 'Activo'),
    ('Ubisoft', 'Francia', 1986, 'Activo'),
    ('Capcom', 'Japón', 1979, 'Activo'),
    ('Bungie', 'EE.UU.', 1991, 'Activo'),
    ('Mojang Studios', 'Suecia', 2009, 'Activo'),
    ('Westwood Studios', 'EE.UU.', 1985, 'Cerrado');




insert into consolas (nombre, fabricante, generacion, unidades_vendidas)
values 
    ('Switch', 'Nintendo', 8, 130),
    ('PS5', 'Sony', 9, 50),
    ('Xbox Series', 'Microsoft', 9, 25),
    ('PC', 'Varios', NULL, NULL),
    ('PS4', 'Sony', 8, 120),
    ('Wii', 'Nintendo', 7, 101),
    ('PS3', 'Sony', 7, 87),
    ('Xbox 360', 'Microsoft', 7, 84),
    ('Xbox One', 'Microsoft', 8, 58),
    ('Nintendo 64', 'Nintendo', 5, 33);



insert into juegos (titulo, genero, id_desarrollador, anio_lanzamiento)
values 
    ('The Legend of Zelda', 'Aventura', 1, 2017),
    ('Elden Ring', 'RPG', 2, 2022),
    ('The Witcher 3', 'RPG', 3, 2015),
    ('GTA V', 'Acción', 4, 2013),
    ('Half-Life 2', 'Shooter', 5, 2004),
    ('Far Cry 3', 'Acción', 6, 2012),
    ('Resident Evil 4', 'Terror', 7, 2005),
    ('Halo 3', 'Shooter', 8, 2007),
    ('Minecraft', 'Sandbox', 9, 2011),
    ('Command & Conquer', 'Estrategia', 10, 1995);


INSERT INTO personajes (nombre, rol, id_juego, habilidad)
VALUES
    ('Link', 'Protagonista', 1, 'Espadachín'),
    ('Melina', 'Soporte', 2, 'Magia'),
    ('Geralt', 'Protagonista', 3, 'Alquimia'),
    ('Trevor', 'Protagonista', 4, 'Conducción'),
    ('Gordon Freeman', 'Protagonista', 5, 'Armas de fuego'),
    ('Jason Brody', 'Protagonista', 6, 'Sigilo'),
    ('Leon S. Kennedy', 'Protagonista', 7, 'Puntería'),
    ('Master Chief', 'Protagonista', 8, 'Armas de fuego'),
    ('Steve', 'Protagonista', 9, 'Construcción'),
    ('Kane', 'Antagonista', 10, 'Liderazgo');


insert into lanzamientos (id_juego, id_consola, anio_salida, precio)
values
    (1, 1, 2017, 59.99),
    (2, 2, 2022, 59.99),
    (2, 4, 2022, 59.99),
    (3, 5, 2015, 59.99),
    (4, 5, 2014, 59.99),
    (4, 4, 2015, 59.99),
    (5, 4, 2004, 49.99),
    (6, 7, 2012, 59.99),
    (6, 8, 2012, 59.99),
    (7, 7, 2011, 39.99),
    (8, 8, 2007, 59.99),
    (9, 4, 2011, 26.95),
    (10, 4, 1995, 49.99);


/**
 * PASO 4: Consultar todo (SELECT *)
 * 
*/

SELECT * FROM desarrolladores;
SELECT * FROM consolas;
SELECT * FROM juegos;
SELECT * FROM personajes;
SELECT * FROM lanzamientos;


/**
 * PASO 5: Consultar con filtro (WHERE)
 * 
*/

SELECT * FROM consolas
WHERE fabricante = 'Sony';


/**
 * PASO 6: Consultar con filtro (WHERE)
 * 
*/

SELECT titulo, genero, anio_lanzamiento FROM juegos;
