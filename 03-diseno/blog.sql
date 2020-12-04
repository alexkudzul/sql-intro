-- SE RECOMIENDA CREAR PRIMERO LAS TABLAS QUE NO CONTENGA LLAVES FORANEAS, SINO MARCARA ERROR AL EJECUTAR EL SQL

-- Para hacer prueba insertando datos en solo 2 columnas
-- nombre, apellidos y fecha seran null INSERT INTO usuarios(email, password) VALUES('alex@alex.com', '123');
CREATE TABLE users(
    id INT (255) AUTO_INCREMENT NOT NULL,
    name VARCHAR(100) NULL,
    lastname VARCHAR(100) NULL,
    email VARCHAR(255) NOT NULL,
    password VARCHAR (255) NOT NULL,
    date DATE NULL,

    CONSTRAINT pk_users PRIMARY KEY (id),
    CONSTRAINT uq_email UNIQUE(email)
) ENGINE=InnoDb; -- por defecto, permite matener la integridad referencial

CREATE TABLE categories(
    id INT(255) AUTO_INCREMENT NOT NULL,
    name VARCHAR(100),

    CONSTRAINT pk_categories PRIMARY KEY (id)
)ENGINE=InnoDb; -- por defecto, permite matener la integridad referencial

-- cuando se elimine la categoria de esta entrada, que se elimine el registro donde este relacionado ON DELETE CASCADE
CREATE TABLE posts(
    id INT(255) AUTO_INCREMENT NOT NULL,
    user_id INT(255) NOT NULL,
    category_id INT(255) NOT NULL,
    title VARCHAR(255) NOT NULL,
    description MEDIUMTEXT,
    date DATE NOT NULL,

    CONSTRAINT pk_posts PRIMARY KEY(id),
    CONSTRAINT fk_post_user FOREIGN KEY (user_id) REFERENCES users(id),
    CONSTRAINT fk_post_category FOREIGN KEY(category_id) REFERENCES categories(id) ON DELETE CASCADE 
)ENGINE=InnoDb; -- por defecto, permite matener la integridad referencial