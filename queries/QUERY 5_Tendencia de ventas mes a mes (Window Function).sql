-- ============================================================
-- QUERY 5: Tendencia de ventas mes a mes (Window Function)
-- Propósito: Ver la evolución de ingresos en el tiempo
-- LAG() compara cada mes con el anterior
-- SUM() OVER() acumula el total progresivo
-- ============================================================
WITH ventas_mensuales AS (
    SELECT 
        DATE_FORMAT(o.order_date, '%Y-%m')                                  AS mes,
        ROUND(SUM(od.quantity * od.unit_price * (1 - od.discount)), 2)     AS ingresos_mes
    FROM order_details od
    JOIN orders o ON od.order_id = o.id
    WHERE o.order_date IS NOT NULL
    GROUP BY DATE_FORMAT(o.order_date, '%Y-%m')
)
SELECT 
    mes,
    ingresos_mes,
    ROUND(SUM(ingresos_mes) OVER (ORDER BY mes), 2)                         AS ingresos_acumulados,
    LAG(ingresos_mes) OVER (ORDER BY mes)                                   AS mes_anterior,
    ROUND(
        (ingresos_mes - LAG(ingresos_mes) OVER (ORDER BY mes)) 
        / NULLIF(LAG(ingresos_mes) OVER (ORDER BY mes), 0) 
        * 100, 2)                                                           AS crecimiento_pct
FROM ventas_mensuales
ORDER BY mes;