/*1. Mostrar el título de cada película y
   el nombre de su categoría.*/

   SELECT film.title, category.name as categoria 
   FROM film
   INNER JOIN film_category ON film.film_id = film_category.film_id
   INNER JOIN category ON film_category.category_id = category.category_id;

   /* 2. Mostrar la categoría que tiene la mayor
   cantidad de películas.*/

   SELECT category.name as categoria, COUNT (film.film_id) as total_peliculas)
   FROM category
   INNER JOIN film_category ON category.category_id = film_category.category_id
   GROUP BY category.category_id, category.name
   ORDER BY total_peliculas DESC
   LIMIT 1;