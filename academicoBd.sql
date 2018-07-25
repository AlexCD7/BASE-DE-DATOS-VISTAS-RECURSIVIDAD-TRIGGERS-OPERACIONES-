--Crea una tabla
CREATE TABLE estudiante(
id Serial PRIMARY KEY,
nombre1 text NOT NULL,
nombre2 text NOT NULL,
apellido1 text NOT NULL,
apellido2 text NOT NULL,
fecha_Nacimiento date,
cedula varchar(15),
genero varchar(15),
nota_Bd decimal,
nota_Programacion decimal
);
--Muestra tabla creada
SELECT * FROM  estudiante;
--Ingreso de datos
INSERT INTO estudiante(nombre1,nombre2,apellido1,apellido2,fecha_Nacimiento,cedula,genero,nota_Bd,nota_Programacion)
VALUES ('Henry','Jose','Andrade','Montenegro','1995/03/15','1745187985','masculino',9.3,8 );

INSERT INTO estudiante(nombre1,nombre2,apellido1,apellido2,fecha_Nacimiento,cedula,genero,nota_Bd,nota_Programacion)
VALUES ('Randy','Fabian','Cabrera','Ortiz','1993/04/21','1745178942','masculino',9.9,8.7 );

INSERT INTO estudiante(nombre1,nombre2,apellido1,apellido2,fecha_Nacimiento,cedula,genero,nota_Bd,nota_Programacion)
VALUES ('Alex','Dario','Calispa','Castro','1993/09/21','1724216197','masculino',9,8.9 );

INSERT INTO estudiante(nombre1,nombre2,apellido1,apellido2,fecha_Nacimiento,cedula,genero,nota_Bd,nota_Programacion)
VALUES ('Mishell','Antonia','Taco','Hernandez','1997/08/21','1723647887','femenino',10,8.6 );

INSERT INTO estudiante(nombre1,nombre2,apellido1,apellido2,fecha_Nacimiento,cedula,genero,nota_Bd,nota_Programacion)
VALUES ('Noemi','Dana','Bastidas','Lopez','1991/10/11','1717217903','femenino',9.8,7 );

INSERT INTO estudiante(nombre1,nombre2,apellido1,apellido2,fecha_Nacimiento,cedula,genero,nota_Bd,nota_Programacion)
VALUES ('Aracely','Diana','Sisa','Velez','1993/03/22','1745174785','femenino',9.2 ,7.1 );

INSERT INTO estudiante(nombre1,nombre2,apellido1,apellido2,fecha_Nacimiento,cedula,genero,nota_Bd,nota_Programacion)
VALUES ('David','Ricardo','Quinaluiza','Chiluiza','1997/11/20','1724786197','masculino',9.1,9.4 );

INSERT INTO estudiante(nombre1,nombre2,apellido1,apellido2,fecha_Nacimiento,cedula,genero,nota_Bd,nota_Programacion)
VALUES ('Rodrigo','Alexander','Diaz','Perez','1995/04/15','1778967887','masculino',10,8.9 );

INSERT INTO estudiante(nombre1,nombre2,apellido1,apellido2,fecha_Nacimiento,cedula,genero,nota_Bd,nota_Programacion)
VALUES ('Sebastian','Alejandro','Guaman','Teran','1996/08/16','1747894568','masculino',9.8,7.9  );

INSERT INTO estudiante(nombre1,nombre2,apellido1,apellido2,fecha_Nacimiento,cedula,genero,nota_Bd,nota_Programacion)
VALUES ('Alanys','Yulli','Rojas','Gaibor','1996/07/20','1727894562','femenino',9.2 ,6);

INSERT INTO estudiante(nombre1,nombre2,apellido1,apellido2,fecha_Nacimiento,cedula,genero,nota_Bd,nota_Programacion)
VALUES ('Evelyn','Katerine','Faz','Armijos','1999/06/14','1723678943','femenino',9.4,7.5 );

INSERT INTO estudiante(nombre1,nombre2,apellido1,apellido2,fecha_Nacimiento,cedula,genero,nota_Bd,nota_Programacion)
VALUES ('Sofia','Lorena','Andrango','Perez','1998/07/26','17454874568','femenino',8 ,8.8 );

INSERT INTO estudiante(nombre1,nombre2,apellido1,apellido2,fecha_Nacimiento,cedula,genero,nota_Bd,nota_Programacion)
VALUES ('Daniel','Efrain','Taipe','Rodriguez','1992/25/10','1727894562','masculino',7,7.6 );

INSERT INTO estudiante(nombre1,nombre2,apellido1,apellido2,fecha_Nacimiento,cedula,genero,nota_Bd,nota_Programacion)
VALUES ('Tania','Elizabeth','Lopez','Moposita','1997/02/28','1125367894','femenino',9.1,9.5 );

INSERT INTO estudiante(nombre1,nombre2,apellido1,apellido2,fecha_Nacimiento,cedula,genero,nota_Bd,nota_Programacion)
VALUES ('Johana','Alejandra','Montenegro','Arias','1994/03/21','1125784894','femenino',10,10 );

--Seleccionamos las columnas que deseamos en este caso nombres y apellidos completos y cédula
SELECT nombre1,nombre2,apellido1,apellido2,cedula FROM estudiante

--Visualiza máxima nota de Base de Datos
SELECT * FROM estudiante
WHERE nota_Bd = (SELECT MAX(nota_Bd) FROM estudiante)
ORDER BY nombre1
--Visualiza mínima nota de Base de Datos
SELECT * FROM estudiante
WHERE nota_Bd = (SELECT MIN(nota_Bd) FROM estudiante)
ORDER BY nombre1
--Visualiza máxima nota de Programación
SELECT * FROM estudiante
WHERE nota_Programacion = (SELECT MAX(nota_Programacion) FROM estudiante)
ORDER BY nombre1
--Visualiza mínima nota de Programación
SELECT * FROM estudiante
WHERE nota_Programacion = (SELECT MIN(nota_Programacion) FROM estudiante)
ORDER BY nombre1

--ORDENA DE MAYOR a MENOR DESCENDENTE
SELECT * FROM estudiante
ORDER BY nota_bd DESC ;

--ORDENA DE MAYOR a MENOR ASCENDENTE
SELECT * FROM estudiante
ORDER BY nota_bd  ;

--ORDENA POR GÉNERO
SELECT * FROM estudiante where
genero =  'femenino'or genero = 'masculino'  ORDER BY genero ASC

-- CUENTA NÚMERO DE MASCULINOS Y FEMENINOS
SELECT genero , count(*) AS estudiante
FROM estudiante
GROUP BY genero
-- VISUALIZA LOS 5 MEJORES ESTUDIANTES
SELECT * FROM
estudiante ORDER BY nota_bd DESC LIMIT 5 
