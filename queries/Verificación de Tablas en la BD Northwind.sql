-- Ver todas las tablas disponibles
SHOW TABLES;

-- Estructura de las tablas clave
DESCRIBE products;
DESCRIBE orders;
DESCRIBE order_details;
DESCRIBE categories;

-- Ver muestra de datos reales
SELECT * FROM products LIMIT 5;
SELECT * FROM orders LIMIT 5;
SELECT * FROM order_details LIMIT 5;
SELECT * FROM categories;

-- Las 4 tablas principales para el análisis financiero
DESCRIBE products;
DESCRIBE orders;
DESCRIBE order_details;
DESCRIBE invoices;

-- Ver datos reales de cada una
SELECT * FROM products LIMIT 3;
SELECT * FROM order_details LIMIT 3;
SELECT * FROM invoices LIMIT 3;

-- Ver específicamente las columnas de products
-- para confirmar cómo se llama la columna de categoría
-- y si existe columna de costo
SHOW COLUMNS FROM products;

-- Ejecuta estas y comparte los resultados
SHOW COLUMNS FROM products;
SHOW COLUMNS FROM order_details;
SHOW COLUMNS FROM orders;