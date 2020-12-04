#MOSTRAR TODO LOS REGISTROS O FILAS DE UNA TABLA#


#MOSTRAR TODAS LAS COLUMNAS DE UNA TABLA#
SELECT * FROM users;

#MOSTRAR COMLUMNAS ESPECIFICAS#
-- Puede ser desordenada las columnas, From de que tabla
SELECT email, name, lastname FROM users;

#OPERADORES ARITMETICOS#
-- Las operaciones siempre va en parentesisny se le puede agregar un alias con AS
SELECT id, email, (5+5) AS 'OPERACION' FROM users;

SELECT id, email, (5+5) AS 'OPERACION' FROM users ORDER BY id;
SELECT id, email, (5+5) AS 'OPERACION' FROM users ORDER BY id DESC;
SELECT id, email, (5+5) AS 'OPERACION' FROM users ORDER BY id ASC;
SELECT id, email, (id+5) AS 'OPERACION' FROM users;

#FUNCIONES MATEMATICAS#

-- Obtener valor absoluto
SELECT ABS(7) AS 'OPERACION' FROM users;

-- Redondear un numero en alta, 9
SELECT CEIL(8.40) AS 'OPERACION' FROM users;

-- Redondear un numero en baja 8
SELECT FLOOR(8.40) AS 'OPERACION' FROM users;

-- Obtener el valor de PI
SELECT PI() AS 'OPERACION' FROM users;

-- Obtener un numero aleatorio
SELECT RAND() AS 'OPERACION' FROM users;

-- Redondeo con coma
SELECT ROUND(7,91) AS 'OPERACION' FROM users;

-- Redondeo con la cantidad de decimales que se desea
SELECT ROUND(7.91, 1) AS 'OPERACION' FROM users;

-- Raiz cuadrada
SELECT SQRT(7.91) AS 'OPERATION' FROM users;

-- Truncar o quitar decimales
SELECT TRUNCATE (7.91, 0) AS 'OPERATION' FROM users;


#FUNCIONES CON FECHAS#

-- Muestra la fecha actual
SELECT email, date, CURDATE() AS 'Fecha actual' FROM users;

-- Muestra los dias que hay de diferencia
SELECT email, DATEDIFF(date, CURDATE()) AS 'Fecha actual' FROM users;

-- Obtener el nombre del dia en ingles
SELECT email, DAYNAME(date) AS 'Fecha actual' FROM users;

-- Obtiene el dia del mes
SELECT email, DAYOFMONTH(date) AS 'Fecha actual' FROM users;

-- Obtiene el dia de la semana
SELECT email, DAYOFWEEK(date) AS 'Fecha actual' FROM users;

-- Obtiene el dia del año
SELECT email, DAYOFYEAR(date) AS 'Fecha actual' FROM users;

-- Obtiene el mes del año
SELECT email, MONTH(date) AS 'Fecha actual' FROM users;

-- Obtiene el año
SELECT email, YEAR(date) AS 'Fecha actual' FROM users;

-- Obtiene el dia
SELECT email, DAY(date) AS 'Fecha actual' FROM users;

-- Obtiene la hora
SELECT email, HOUR(date) AS 'Fecha actual' FROM users;

-- Obtiene la hora actual
SELECT email, CURTIME() AS 'Fecha actual' FROM users;

-- Obtiene la fecha y la hora del sistema operativo
SELECT email, SYSDATE() AS 'Fecha actual' FROM users;

-- Formatear una fecha
SELECT email, DATE_FORMAT(date, '%d-%m-%Y') AS 'Fecha actual' FROM users;

#FUNCIONES GENERALES#

SELECT * FROM users;

-- Devuelve los valores que son null
SELECT email, ISNULL(lastname) FROM users;

-- Comprueba si dos campos son iguales, devuelve 0 si es verdadero y 1 si es falso
SELECT email, STRCMP('ALEX', 'ALEX') FROM users;

-- Obtiene la version de mysql
SELECT VERSION() FROM users;

-- Obtiene el usuario de SGBD
-- Por fila
SELECT USER() FROM users;
-- Si todos son igual solo retorna uno
SELECT DISTINCT USER() FROM users;

-- Obtiene la base de datos que se esta utilizando
SELECT DISTINCT DATABASE() FROM users;

-- Funcion if null
SELECT IFNULL(lastname, 'ESTE CAMPO ESTA VACIO') FROM users; 