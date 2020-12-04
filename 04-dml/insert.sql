#INSERTAR NUEVOS REGISTROS#

-- El id es null, por que es autoincrementable
INSERT INTO users VALUES(null, 'Alex', 'Ku Dzul', 'alex@email.com', '123', '2020-05-07');
INSERT INTO users VALUES(null, 'Manuel', 'Ku Dzul', 'manuel@email.com', '123', '2020-05-07');
INSERT INTO users VALUES(null, 'Fernando', 'Perez', 'fernando@email.com', '123', '2021-05-07');
INSERT INTO users VALUES(null, 'Luis', 'Gonzalez', 'luis@email.com', '123', '2021-05-07');


#INSERTAR FILAS SOLO CON CIERTAS COLUMNAS#

INSERT INTO users(email, password) VALUES('alex@alex.com', '123');