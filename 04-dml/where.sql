#CONSULTA CON UNA CONDICION#

-- Obtener en la tabla users el email donde sea igual a alex@alex.com
SELECT * FROM users WHERE email = 'alex@alex.com';

/**
OPERADOR DE COMPARACION

Igual               =
Distinto            !=
Menor               <
Mayor               >
Menor o igual       <=
Mayor o igual       >=
Entre               between A and B
En                  in
Es nulo             is null
No nulo             is not null
Como                like
No es como          not like

*/

/*
OPERADORES LOGICOS:
O       OR
Y       AND
NO      NOT
*/

/*
COMODINES

Cualquier cantidad de caracteres: %
Un caracter desconocido: _ , ejemplo si hay una palabra pero no se sabe la letras de en medio, sql obtiene los registros que coicidan
*/

#EJEMPLOS#
-- 1. Mostrar name y lastname de todos los users registrados en 2021
SELECT name, lastname FROM users WHERE YEAR(date) = 2021;

-- 2. Mostrar name y lastname de todos los users QUE NO se registraron en 2021 o que sea null
SELECT name, lastname FROM users WHERE YEAR(date) != 2021 OR ISNULL(date);

-- 3. Mostrar el email de los users cuyo apellido contenga la letra A y que su contraseña sea 123 
-- LIKE => Contenga, %% => no se sabe que hay por detras y por delante
SELECT email FROM users WHERE lastname LIKE '%a%' AND password == '123';

-- 4. Sacar todo los registros de la tabla users cuyo año sea par
SELECT * FROM users WHERE (YEAR(date) % 2 = 0);

-- 5. Sacar toso los registros de la tabla users cuyo name tenga mas de 5 letras y 
-- que se hayan registrados antes del 2021 y mostrar el name en mayusculas

SELECT UPPER(name) AS 'Name', lastname FROM users WHERE LENGTH(name) > 5 AND YEAR(date) < 2021;

# ORDER BY ORDENA DE FORMA DESCENDENTE O ASCENDENTE #

SELECT * FROM users ORDER BY id;
SELECT * FROM users ORDER BY id DESC;
SELECT * FROM users ORDER BY id ASC;

SELECT * FROM users ORDER BY date DESC;
SELECT * FROM users ORDER BY date ASC;

#LIMIT LIMITA LA CANTIDAD DE REGISTROS A MOSTRAR#

-- Muestra los primeros registros
SELECT * FROM users LIMIT 1;
SELECT * FROM users LIMIT 3;

-- Muestra los primeros registros del 0 en adelante 
SELECT * FROM users LIMIT 0,2;
SELECT * FROM users LIMIT 0,4;