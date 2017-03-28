INSERT INTO a.cine
	VALUES	('J-23421', 'Valencia', '02414553698','valencia', '01/02/2000'),
			('J-34225', 'Caracas','02122453685','caracas','05/03/2001'),
			('J-25123', 'Barquisimento','02512136354','barquisimento','07/05/2000'),
			('J-23648',	'Maracay','02544513652','maracay','01/02/2005');

INSERT INTO a.pelicula
	VALUES	('Mohana', '02/03/2015', 'James Cameron', 'anime'),
			('Assanssins Creed','02/03/2014','Vicente Perez', 'accion'),
			('Cars 2','02/03/2011','Justin Linn','anime'),
			('Fast And Furious','02/03/2010','Vin Diesel','accion'),
			('Capitan America','02/03/2017','Marvel Roos','drama');	

INSERT INTO a.sala
	VALUES 	(1,'J-23421','Valencia',60),
			(2,'J-34225','Caracas', 75),
			(3,'J-23648','Maracay', 64);

INSERT INTO a.proyecta
	VALUES	(1,'J-23421','Valencia','Mohana','02/03/2015','02/01/2017','11:30 am'),
			(2,'J-34225','Caracas','Fast And Furious','02/03/2010','02/01/2017','14:30 pm'),
			(1,'J-23421','Valencia','Capitan America','02/03/2017','02/01/2017','22:30 pm'),
			(3,'J-23648','Maracay','Assanssins Creed','02/03/2014','02/01/2017','18:30 pm'),
			(1,'J-23421','Valencia','Cars 2','02/03/2011','02/01/2017','15:30 pm'),
			(3,'J-23648','Maracay','Capitan America','02/03/2017','02/01/2017','12:30 pm'),
			(2,'J-34225','Caracas','Assanssins Creed','02/03/2014','02/01/2017','11:30 am');			
