/* PELÍCULAS NO ALQUILADAS 
    Objetivo: Practicar LEFT JOIN para encontrar registros sin coincidencias.
*/

/* 1. Encontrar las películas que nunca
   fueron alquiladas. */

   SELECT film.title FROM film
   LEFT JOIN inventory ON film.film_id = inventory.film_id
   LEFT JOIN rental ON inventory.inventory_id = rental.inventory_id
   WHERE rental.rental_id IS NULL;