/*
int(n° cifras)                  ENTERO
integer(n° cifras)              ENTERO (maximo 4294967295)
varchar(n° caracteres)          STRING / ALFANUMERICO (maximo 255)
char(n° caracteres)             STRING / ALFANUMERICO
float(n° cifras, n° decimales)  DECIMAL / COMA FLOTANTE
date, time, timestamp

TEXT 65535 cracteres
MEDIUMTEXT 16 millones
LONGTEXT 4 billones

ENTEROS MAS GRANDES
MEDIUMINT
BIGINT 

*/



/*
CREAR TABLA
*/
-- ejecutar en phpmyadmin o heidisql

-- restricciones de integridad(auto_increment, not null, default, constraint primary key)
CREATE TABLE users(
    id int(11) AUTO_INCREMENT not null ,
    name varchar(100) not null,
    lastname varchar(255) default 'Hola',
    email varchar(100) not null,
    password varchar(255),

    CONSTRAINT pk_users PRIMARY KEY (id)
);

-- show tables -- Mostrar tablas 
-- drop table users; -- eliminar una tabla
-- describe users -- muestra la descripcion de la tabla