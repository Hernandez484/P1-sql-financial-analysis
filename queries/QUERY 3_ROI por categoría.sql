-- ============================================================
-- QUERY 3: ROI por categoría
-- Propósito: Medir el retorno sobre la inversión por categoría
-- Fórmula: ROI = (ganancia / costo_total) * 100
-- Un ROI de 80% significa que por cada $100 invertidos se ganan $80
-- ============================================================
SELECT 
    p.category                                                              AS categoria,
    ROUND(SUM(od.quantity * od.unit_price * (1 - od.discount)), 2)         AS ingresos_totales,
    ROUND(SUM(od.quantity * p.standard_cost), 2)                           AS costos_totales,
    ROUND(SUM(od.quantity * od.unit_price * (1 - od.discount)) 
        - SUM(od.quantity * p.standard_cost), 2)                           AS ganancia_bruta,
    ROUND(
        (SUM(od.quantity * od.unit_price * (1 - od.discount)) 
        - SUM(od.quantity * p.standard_cost)) 
        / NULLIF(SUM(od.quantity * p.standard_cost), 0) 
        * 100, 2)                                                           AS roi_pct
FROM order_details od
JOIN products p ON od.product_id = p.id
GROUP BY p.category
ORDER BY roi_pct DESC;