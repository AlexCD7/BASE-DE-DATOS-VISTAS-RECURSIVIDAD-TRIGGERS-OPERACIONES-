CREATE TABLE futbolistas(
id Serial PRIMARY KEY,
nombre text NOT NULL,
apellido text NOT NULL,
edad int NOT NULL,
posicion varchar(30)
);

--MUESTRA TABLA CREADA
SELECT * FROM  futbolistas;
--INGRESA VALORES A LOS CAMPOS
INSERT INTO futbolistas(nombre,apellido,edad,posicion)
VALUES ('Cristiano','Ronaldo',33,'Delantero' );

INSERT INTO futbolistas(nombre,apellido,edad,posicion)
VALUES ('Neymar','Da Silva',25,'Extremo Izquierdo' );

INSERT INTO futbolistas(nombre,apellido,edad,posicion)
VALUES ('Antonio','Valencia',32,'Medio Campista Derecho' );

INSERT INTO futbolistas(nombre,apellido,edad,posicion)
VALUES ('Hernan','Barcos',31,'Delantero' );

INSERT INTO futbolistas(nombre,apellido,edad,posicion)
VALUES ('Zlatan','Ibrahimovic',31,'Delantero' );

--TABLA EQUIPOS DONDE JUGARON

CREATE TABLE equipos(
id Serial PRIMARY KEY,
nombreEquipo text NOT NULL,
pais text NOT NULL
);

--INGRESAS REGISTROS
INSERT INTO equipos(nombreEquipo,pais)
VALUES ('Manchester United','Inglaterra' );

INSERT INTO equipos(nombreEquipo,pais)
VALUES ('FC Barcelona','España' );

INSERT INTO equipos(nombreEquipo,pais)
VALUES ('PSG','Francia' );

INSERT INTO equipos(nombreEquipo,pais)
VALUES ('Liga de Quito','Ecuador' );

INSERT INTO equipos(nombreEquipo,pais)
VALUES ('Real Madrid','España' );


CREATE TABLE futbolistaEquipo(
id SERIAL,
idFutbolistas INT,
idEquipos INT
);



--CREACION DE LLAVE FORANEA
ALTER TABLE futbolistaEquipo ADD  FOREIGN KEY (idFutbolistas) REFERENCES futbolistas(id);
ALTER TABLE futbolistaEquipo ADD  FOREIGN KEY (idEquipos) REFERENCES equipos(id);

INSERT INTO futbolistaEquipo(idFutbolistas,idEquipos)
VALUES (1,1 );

INSERT INTO futbolistaEquipo(idFutbolistas,idEquipos)
VALUES (1,5 );

INSERT INTO futbolistaEquipo(idFutbolistas,idEquipos)
VALUES (2,2 );

INSERT INTO futbolistaEquipo(idFutbolistas,idEquipos)
VALUES (2,3 );

INSERT INTO futbolistaEquipo(idFutbolistas,idEquipos)
VALUES (4,4 );

INSERT INTO futbolistaEquipo(idFutbolistas,idEquipos)
VALUES (5,3 );

INSERT INTO futbolistaEquipo(idFutbolistas,idEquipos)
VALUES (3,1 );


 

--VISUALIZAMOS LA RELACION  REALIZADA CON TRES TABLAS
SELECT 
   futbolistas.nombre, 
   equipos.nombreEquipo 
FROM futbolistaEquipo
INNER JOIN futbolistas ON futbolistas.id =  futbolistaEquipo.idFutbolistas
INNER JOIN equipos ON equipos.id =  futbolistaEquipo.idEquipos

--VISTA
CREATE VIEW miVista AS
	SELECT nombre,nombreEquipo
	FROM futbolistas,equipos
	WHERE nombre=nombre;
SELECT * FROM miVista



Select * from equipos;
Select * from futbolistas;
Select * from futbolistaEquipo;