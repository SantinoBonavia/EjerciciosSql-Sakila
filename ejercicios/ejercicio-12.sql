/*
EJERCICIO 12 - ELIMINAR UN ACTOR

Objetivo: Practicar DELETE junto con una subconsulta para
eliminar un actor que no tenga películas asociadas.
*/

USE sakila;


/* 1. Buscar actores que no participaron en ninguna película.*/

SELECT
    actor.actor_id,
    actor.first_name,
    actor.last_name
FROM actor
LEFT JOIN film_actor
    ON actor.actor_id = film_actor.actor_id
WHERE film_actor.film_id IS NULL;


/* 2. Eliminar uno de esos actores.*/

DELETE FROM actor
WHERE actor_id = (
    SELECT actor_id
    FROM (
        SELECT
            actor.actor_id
        FROM actor
        LEFT JOIN film_actor
            ON actor.actor_id = film_actor.actor_id
        WHERE film_actor.film_id IS NULL
        LIMIT 1
    ) AS actor_sin_peliculas
);