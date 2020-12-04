# CONSULTAS AGRUPAMIENTO #

-- Obtener cantidad de titles de posts, agrupadas en una misma categoria o agrupar posts por categorias
SELECT COUNT(title) AS 'NÚMERO DE POSTS', category_id FROM posts GROUP BY category_id;

#CONSULTAS AGRUPAMIENTO CON CONDICIONES#
-- No se puede usar un where en un group by, se utiliza HAVING
-- WHERE actua sobre una columna de datos
-- HAVING actua sobre un grupo de datos

-- Obtener cantidad de titles de posts, agrupadas en una misma categoria o agrupar posts por categorias con posts mayores a 4
SELECT COUNT(title) AS 'NÚMERO DE POSTS', category_id FROM posts GROUP BY category_id HAVING COUNT(title) >= 4;

/*
FUNCIONES AGRUPAMIENTO:
AVG     Sacar la media
COUNT   Contar el numero de elementos
MAX     Valor maximo del grupo
MIN     Valor minimo del grupo
SUM     Sumar todo el contenido del grupo
*/

-- No necesariamente se tiene que utilizar en un grupo de datos

-- Media de la suma de cada ID 
SELECT AVG(id) AS 'Media de POSTS' FROM posts;
-- El usuario con el id mas grande
SELECT MAX(id) AS 'MAXIMO ID', title FROM posts;
-- Sumar todo los id
SELECT SUM(id) AS 'SUMA DE ID', title FROM posts;