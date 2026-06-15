-- ============================================================
-- QUERY 1: Ventas totales por categoría
-- Propósito: Identificar qué categorías generan más ingresos
-- Fórmula: ingreso = cantidad * precio_unitario * (1 - descuento)
-- ============================================================
SELECT 
    p.category                                                        AS categoria,
    COUNT(DISTINCT od.order_id)                                       AS total_ordenes,
    ROUND(SUM(od.quantity * od.unit_price * (1 - od.discount)), 2)   AS ingresos_totales
FROM order_details od
JOIN products p ON od.product_id = p.id
GROUP BY p.category
ORDER BY ingresos_totales DESC;