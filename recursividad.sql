CREATE TABLE mundo(
id Serial PRIMARY KEY,
detalle text NOT NULL,
padre int
);



ALTER TABLE mundo ADD  FOREIGN KEY (padre) REFERENCES mundo(id);


INSERT INTO mundo(detalle)
VALUES ('America' );

INSERT INTO mundo(detalle)
VALUES ('Asia' );

INSERT INTO mundo(detalle)
VALUES ('Europa' );

INSERT INTO mundo(detalle)
VALUES ('Africa' );

INSERT INTO mundo(detalle,padre)
VALUES ('España',3 );

INSERT INTO mundo(detalle,padre)
VALUES ('China',2 );

INSERT INTO mundo(detalle,padre)
VALUES ('Ecuador',1);

INSERT INTO mundo(detalle,padre)
VALUES ('Italia',3);

SELECT  * FROM mundo;
SELECT * FROM mundo WHERE padre= 3 

