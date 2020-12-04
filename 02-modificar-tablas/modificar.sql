#RENOMBRAR UNA TABLLA#

ALTER TABLE users RENAME TO users_renom;

#CAMBIAR EL NOMBRE DE UNA COLUMNA#

ALTER TABLE users_renom CHANGE lastname apellido VARCHAR(100) NULL; -- CHANGE columna_antiguo columna_nueva tipo_dato

#MODIFICAR COLUMNA SIN CAMBIAR NOMBRE#

ALTER TABLE users_renom MODIFY apellido CHAR (40) NOT NULL;

#AÑADIR UNA NUEVA COLUMNA#

ALTER TABLE users_renom ADD website VARCHAR(100) NULL;

#AÑARDIR UNA RESTRICCION A COLUMNA#

ALTER TABLE users_renom ADD CONSTRAINT uq_email UNIQUE(email); -- campo unico email

#BORRAR UNA COLUMNA#

ALTER TABLE users_renom DROP website;