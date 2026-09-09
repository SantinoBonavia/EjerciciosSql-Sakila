/* MAYOR DURACIÓN DE ALQUILER 
    Objetivo: Practicar subconsultas utilizando MAX.
*/

/* 1. Encontrar las películas con la duración
   de alquiler más larga.*/

   SELECT title, rental_duration FROM film
   WHERE rental_duration = (SELECT MAX(rental_duration) FROM film);