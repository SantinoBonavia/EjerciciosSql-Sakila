/*
1. Encontrar el nombre y apellido de todos
   los clientes activos.
*/

SELECT first_name, last_name
FROM customer WHERE active = 1;

/*2. Mostrar la dirección de los clientes que
   viven en el distrito de 'California'.*/

SELECT customer.first_name, customer.last_name, address.address, address.district
FROM customer
INNER JOIN address ON customer.address_id = address.address_id
WHERE address.district = 'California';

