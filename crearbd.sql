CREATE DATABASE mcampost1 TEMPLATE template1;

\c mcampost1

CREATE SCHEMA a;

/*dominios */

CREATE DOMAIN 	a.quince_caracteres		varchar(15);
CREATE DOMAIN 	a.treinta_caracteres	varchar(30);
CREATE DOMAIN	a.fecha_1				date 
	/*CHECK(VALUE > '19000101');*/
	CHECK(VALUE > '01/01/1900');
CREATE DOMAIN	a.fecha_2 				date;
CREATE DOMAIN	a.siete_caracteres		varchar(7)
	CHECK (VALUE IN ('drama', 'accion', 'terror','comedia','anime'));
CREATE DOMAIN	a.entero_positivo1		INT
	DEFAULT(1)
	CHECK (VALUE > 0);
CREATE DOMAIN	a.entero_positivo2		INT
	CHECK (VALUE > 0);
CREATE DOMAIN	a.fecha_3				date
	/*CHECK(VALUE >= '20170101');*/
	CHECK(VALUE >= '01/01/2017');

CREATE TABLE a.cine(
	rif					a.quince_caracteres			NOT NULL,
	sucursal			a.treinta_caracteres		NOT NULL,
	telefono			a.quince_caracteres,
	direccion			a.treinta_caracteres		NOT NULL,
	fecha_inaugurado	a.fecha_1					NOT NULL,
	PRIMARY KEY (rif,sucursal)		
);

CREATE TABLE a.pelicula(
	nombre_pe			a.treinta_caracteres		NOT NULL,
	fecha_estreno		a.fecha_2					NOT NULL,
	director			a.treinta_caracteres		NOT NULL,
	genero				a.siete_caracteres			NOT	NULL,
	PRIMARY KEY	(nombre_pe,fecha_estreno)
);

CREATE TABLE a.sala(
	numero				a.entero_positivo1,
	codigo				a.quince_caracteres			NOT NULL,
	ubicacion			a.treinta_caracteres		NOT NULL,
	capacidad			a.entero_positivo2			NOT NULL,
	PRIMARY KEY	(numero,codigo,ubicacion),
	FOREIGN KEY (codigo,ubicacion) REFERENCES a.cine
		ON UPDATE CASCADE
		ON DELETE CASCADE	
);

CREATE TABLE a.proyecta (
	sala				a.entero_positivo2			NOT NULL,
	cod  				a.quince_caracteres			NOT NULL,
	lugar				a.treinta_caracteres		NOT NULL,
	pelicula			a.treinta_caracteres		NOT NULL,
	estreno 			a.fecha_2					NOT NULL,
	fecha 				a.fecha_3					NOT NULL,
	hora				a.quince_caracteres			NOT NULL,
	PRIMARY KEY (sala, cod, pelicula, estreno, fecha, hora),
	FOREIGN KEY (sala, cod, lugar) REFERENCES a.sala
		ON UPDATE CASCADE
		ON DELETE CASCADE,
	FOREIGN KEY(pelicula, estreno) REFERENCES a.pelicula
		ON UPDATE CASCADE
		ON DELETE CASCADE 
);