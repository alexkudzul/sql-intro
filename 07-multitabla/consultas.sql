/* 
 CONSULTA MULTITABLA:
Son consultas que sirven para consultar varias tablas en una sola sentencia
 */

#Mostrar los entradas con el nombre del autor y el nombre de la categoria#

SELECT p.id, p.titulo, u.nombre AS 'Autor', c.nombre AS 'Categoria'
FROM posts p, users u, categories c
WHERE p.user_id = u.id AND p.category_id = c.id;

#Mostrar el nombre de las categories y a lado cuantas entradas tienen#
-- donde la category_id sea igual al id de la categoria y agruparlo por la category_id
SELECT c.nombre, COUNT(p.id) FROM categories c, posts p
WHERE p.category_id = c.id GROUP BY p.category_id;

#Mostrar el email de los users y al lado cuantas entradas tienen#
SELECT u.email, COUNT(p.id) FROM users u, posts p 
WHERE p.user_id = u.id GROUP BY p.user_id;


#INNER JOIN#
-- inner join unir o mezclar tablas, ON es la condicion
#Mostrar las entradas con el nombre del autor y el nombre de la categoria#

SELECT p.id, p.titulo, u.nombre AS 'Autor', c.nombre AS 'Categoría'
FROM posts p
INNER JOIN users u ON p.user_id = u.id
INNER JOIN categories c ON p.category_id = c.id;

#LEFT JOIN#
-- Mantiene toda las filas de la tabla izquierda y si hay alguna coincidencia en la tabla de a lado(derecha) 
-- mostraria los valores que se requiere o null o cero en caso que no tenga valores
SELECT c.nombre, COUNT(p.id) FROM categories c
LEFT JOIN posts p ON p.category_id = c.id
GROUP BY p.category_id;

#RIGHT JOIN#

-- Lo mismo con el left solo que ahora mantiene las filas de la tabla derecha
SELECT c.nombre, COUNT(p.id) FROM posts p
RIGHT JOIN categories c ON p.category_id = c.id
GROUP BY p.category_id;
