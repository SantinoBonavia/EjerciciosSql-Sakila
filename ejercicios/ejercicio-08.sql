/* CLIENTES QUE HAN GASTADO MÁS 
    Objetivo: Practicar SUM, GROUP BY e INNER JOIN.
*/

/* 1. Calcular el total de pagos por cada cliente
   y mostrar su nombre junto con el total gastado.*/

   SELECT customer.first_name, customer.last_name, SUM(payment.amount) as total_gastado
   FROM customer 
   INNER JOIN payment ON customer.customer_id = payment.customer_id
   GROUP BY customer.customer_id, customer.first_name, customer.last_name
   ORDER BY total_gastado DESC;