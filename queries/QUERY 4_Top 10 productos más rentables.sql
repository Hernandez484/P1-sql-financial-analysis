-- ============================================================
-- QUERY 4: Top 10 productos más rentables
-- Propósito: Identificar los productos que más ganancia generan
-- Combina volumen de ventas con margen para priorizar decisiones
-- ============================================================
SELECT 
    p.product_name                                                          AS producto,
    p.category                                                              AS categoria,
    ROUND(SUM(od.quantity * od.unit_price * (1 - od.discount)), 2)         AS ingresos,
    ROUND(SUM(od.quantity * p.standard_cost), 2)                           AS costos,
    ROUND(SUM(od.quantity * od.unit_price * (1 - od.discount)) 
        - SUM(od.quantity * p.standard_cost), 2)                           AS ganancia_bruta,
    ROUND(
        (SUM(od.quantity * od.unit_price * (1 - od.discount)) 
        - SUM(od.quantity * p.standard_cost)) 
        / NULLIF(SUM(od.quantity * p.standard_cost), 0) 
        * 100, 2)                                                           AS roi_pct
FROM order_details od
JOIN products p ON od.product_id = p.id
GROUP BY p.id, p.product_name, p.category
ORDER BY ganancia_bruta DESC
LIMIT 10;