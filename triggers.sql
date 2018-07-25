CREATE TABLE cantante (

    id SERIAL NOT NULL PRIMARY KEY,
    nombre varchar(30),
    nacionalidad varchar (30),
    genero varchar(30)
   
);

CREATE TABLE auditoria (
    id SERIAL NOT NULL PRIMARY KEY,
    registros varchar(100),
    acciones varchar(100)
);



insert into cantante (nombre,nacionalidad,genero)
 values ('Roberto Carlos', 'Brasileño', 'Baladas');

insert into cantante (nombre,nacionalidad,genero)
 values ('Michael Jackson', 'Americano', 'Pop');
 
 insert into cantante (nombre,nacionalidad,genero)
 values ('Fausto Miño', 'Ecuatoriano', 'Pop');

 insert into cantante (nombre,nacionalidad,genero)
 values ('Carlos Vives', 'Ecuatoriano', 'Vallenato');

 
SELECT *  FROM cantante ;
SELECT *  FROM auditoria;

 
--Crear funcion que retorne trigger (DELETE)
CREATE OR REPLACE FUNCTION insertar_trigger() RETURNS TRIGGER 
AS $insertar$
DECLARE BEGIN
	
	
	INSERT INTO auditoria VALUES (OLD.id,OLD.nombre|| ' ' ||OLD.nacionalidad|| ' ' ||OLD.genero,' DELETE');
	RETURN NULL;
END;
$insertar$ LANGUAGE plpgsql;

--Crear funcion que retorne trigger (UPDATE)
CREATE OR REPLACE FUNCTION update_trigger() RETURNS TRIGGER 
AS $insertar$
DECLARE BEGIN
	
	
	INSERT INTO auditoria VALUES (OLD.id,OLD.nombre|| ' ' ||OLD.nacionalidad|| ' ' ||OLD.genero,' UPDATE');
	RETURN NULL;
END;
$insertar$ LANGUAGE plpgsql;


--Crear funcion que retorne trigger ( INSERT)

CREATE OR REPLACE FUNCTION nuevo_trigger() RETURNS TRIGGER 
AS $insertar$
DECLARE BEGIN
	
	
	INSERT INTO auditoria VALUES (NEW.id,NEW.nombre|| ' ' ||NEW.nacionalidad|| ' ' ||NEW.genero,' INSERT');
	RETURN NULL;
END;
$insertar$ LANGUAGE plpgsql;

--Creacion de trigger DELETE
CREATE TRIGGER insertar_auditoria AFTER DELETE
   ON cantante FOR EACH ROW 
    EXECUTE PROCEDURE insertar_trigger();
--Creacion de trigger UPDATE
CREATE TRIGGER actualizar  AFTER  UPDATE
   ON cantante FOR EACH ROW 
    EXECUTE PROCEDURE update_trigger();
    
 --Creacion de trigger INSERT
CREATE TRIGGER nuevo AFTER INSERT
   ON cantante FOR EACH ROW 
    EXECUTE PROCEDURE nuevo_trigger();
    
    



    
--pruebas
DELETE FROM cantante WHERE id=2
UPDATE cantante SET nacionalidad = 'Colombiano' WHERE id=4

 INSERT INTO cantante (nombre,nacionalidad,genero)
 VALUES ('Alejandro Fernandez', 'Mexicano', 'Rancheras');