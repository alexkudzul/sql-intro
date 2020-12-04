/* 
SUBCONSULTAS:
- Son consultas que se ejecutan dentro de otras.
- Consiste en utilizar los resultados de la subconsulta para operar en la 
  consulta principal.
- Jugando con las claves ajenas / foraneas.
 */

#Sacar users con posts#
-- IN, existe, clausula que puede devolver varios resultados y no uno. 
-- = Si solo se quiere un solo resultado se usa el = 
-- NOT IN si no existe dentro de la subconsulta
-- Consulta seleccionar todo los users donde el id de los users exista los user_id de las posts
-- subconsulta seleccionar users de posts
SELECT * FROM users WHERE id IN (SELECT user_id FROM posts);

#Sacar los users que tengan alguna entrada que en su title hable de GTA#
-- sacar el name y lastname de los users donde el id de los users exista en la tabla de posts o que allan creado alguna entrada
SELECT name, lastname FROM users WHERE id 
    IN (SELECT user_id FROM posts WHERE title LIKE '%GTA%');


# Sacar todas las posts de la categoria Acción utilizando su name
SELECT category_id, title FROM posts WHERE category_id 
                IN (SELECT id FROM categories WHERE name = 'Deportes');

#Mostrar las categories con 3 o más posts#
SELECT * FROM categories WHERE 
    id IN (SELECT category_id FROM posts GROUP BY category_id HAVING COUNT(category_id)>=3);


#Mostrar los users que crearon una entrada un martes#
SELECT * FROM users WHERE id IN 
       (SELECT user_id FROM posts WHERE DAYOFWEEK(fecha)=3);


#Mostrar el name del usuario que tenga mas posts#
-- limit 1 indica que solo se requiere un usuario con mas posts, como solo devuelve un registro se utiliza = en vez de IN
SELECT CONCAT(name,' ',lastname) AS 'El usuario con mas posts' FROM users WHERE id =
    (SELECT user_id FROM posts GROUP BY user_id ORDER BY COUNT(id) DESC LIMIT 1);


#Mostrar las categories sin posts#
SELECT * FROM categories WHERE id 
        NOT IN (SELECT category_id FROM posts);
