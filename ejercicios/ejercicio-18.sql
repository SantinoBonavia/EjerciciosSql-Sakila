/* TABLA CON CLAVE FORANEA 
Objetivo: Practicar la creación de una tabla con una llave foránea relacionada con customer.
*/

/*1. Crear la tabla registros_alquiler.*/

CREATE TABLE registros_alquiler (
    registro_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id SMALLINT UNSIGNED NOT NULL,
    fecha_registro DATETIME DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_registros_customer
        FOREIGN KEY (customer_id)
        REFERENCES customer(customer_id)
);