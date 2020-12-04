/* 
 Vistas:
Las podemos definir como una consulta almacenada en la base de datos que 
se utiliza como una tabla virtual.
No almacena datos sino que utiliza asociaciones y los datos originales
de las tablas, de forma que siempre se mantiene actualizada.
 */

-- Es como reutilizar una consulta, en vez de estar ejecutando varias veces se almacena en una tabla virtual como un alias
CREATE VIEW entradas_con_nombres AS 
SELECT p.id, p.title, u.name AS 'Autor', c.name AS 'Categoría'
FROM posts p
INNER JOIN users u ON p.user_id = u.id
INNER JOIN categories c ON p.category_id = c.id;

-- Para visualizar la vista creada
-- show CREATE VIEW entradas_con_nombres;