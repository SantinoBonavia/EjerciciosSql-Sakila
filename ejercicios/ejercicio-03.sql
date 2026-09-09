/* 1. Contar cuántas películas hay en la base de datos. */

SELECT COUNT(*) as total_peliculas FROM film;

/* 2. Calcular el número de películas por categoría. */

SELECT category.name as categoria, 
    COUNT(film.film_id) as total_peliculas
FROM category
INNER JOIN film_category ON category.category_id = film_category.category_id
GROUP BY category.name;

/* 3. Determinar cuántos clientes tiene cada tienda. */

SELECT store_id, COUNT(customer_id) as total_clientes
FROM customer
GROUP BY store_id;