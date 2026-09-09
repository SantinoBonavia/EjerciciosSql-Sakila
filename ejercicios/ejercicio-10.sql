/* INSERTAR UN NUEVO CLIENTE 
    Objetivo: Practicar el comando INSERT INTO para agregar 
     un nuevo registro en la tabla customer.
*/ 

/* 1. Agregar un nuevo cliente a la tabla customer. */

INSERT INTO customer (store_id, first_name, last_name, email, address_id, active, create_date)
VALUES (1, 'SANTINO', 'BONAVIA', 'santino.bonavia@email.com', 1, 1, NOW());