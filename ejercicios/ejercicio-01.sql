/* 1. Mostrar el título, descripción y año de
   lanzamiento de todas las películas.*/

SELECT title, description, release_year
FROM film;

/* 2. Encontrar todas las películas cuya duración
   de alquiler sea de 7 días.*/

SELECT title, rental_duration
FROM film WHERE rental_duration = 7;

/* 3. Listar las películas que tengan rating
   'PG-13' o 'R'.*/

SELECT title,rating FROM film
WHERE rating IN ('PG-13', 'R');


/* para probar ejecutar en terminal (mysql -u root -p) donde tenga sakila instalado y USE sakila; */