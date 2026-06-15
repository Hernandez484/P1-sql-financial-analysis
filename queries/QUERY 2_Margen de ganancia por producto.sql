-- ============================================================
-- QUERY 2: Margen de ganancia por producto
-- Propósito: Ver qué tan rentable es cada producto individualmente
-- Fórmula: margen = (ingresos - costos) / ingresos * 100
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
        / NULLIF(SUM(od.quantity * od.unit_price * (1 - od.discount)), 0) 
        * 100, 2)                                                           AS margen_pct
FROM order_details od
JOIN products p ON od.product_id = p.id
GROUP BY p.id, p.product_name, p.category
ORDER BY ganancia_bruta DESC;