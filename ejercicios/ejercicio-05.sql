/* EJERCICIO 5 - ALQUILERES DE CLIENTES
Objetivo: Practicar INNER JOIN entre varias tablas y agrupación con COUNT.
*/

/* 1. Mostrar el nombre del cliente y el título
   de todas las películas que ha alquilado.*/

SELECT customer.first_name, customer.last_name, film.title
FROM customer
INNER JOIN rental ON customer.customer_id = rental.customer_id
INNER JOIN inventory ON rental.inventory_id = inventory.inventory_id
INNER JOIN film ON inventory.film_id = film.film_id;

/*2. Mostrar la película más alquilada.*/

SELECT film.title, COUNT(rental.rental_id) as total_alquileres
FROM rental
INNER JOIN inventory ON rental.inventory_id = inventory.inventory_id
INNER JOIN film ON inventory.film_id = film.film_id
GROUP BY film.film_id, film.title
ORDER BY total_alquileres DESC  
LIMIT 1;