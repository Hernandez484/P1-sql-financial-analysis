# P1 — Análisis Financiero con SQL (Northwind)

## Descripción

Proyecto de análisis financiero usando SQL sobre la base de datos Northwind (variante [`dalers/mywind`](https://github.com/dalers/mywind)). El objetivo es responder preguntas de negocio sobre ingresos, costos, márgenes de ganancia, ROI y tendencias de ventas, a partir de las tablas `products`, `orders` y `order_details`.

## Dataset

- **Northwind Database** — base de datos de ejemplo que representa las operaciones de ventas de una empresa ficticia de alimentos gourmet.
- Fuente: [dalers/mywind](https://github.com/dalers/mywind)
- Motor: MySQL 8.0

## Herramientas

- MySQL
- DBeaver (SQL Editor)

## Estructura del repositorio

```
queries/
├── QUERY 1_Ventas totales por categoría.sql
├── QUERY 2_Margen de ganancia por producto.sql
├── QUERY 3_ROI por categoría.sql
├── QUERY 4_Top 10 productos más rentables.sql
├── QUERY 5_Tendencia de ventas mes a mes (Window).sql
└── Verificación de Tablas en la BD Northwind.sql

resumen_hallazgos.md
README.md
```

## Queries incluidas

| # | Query | Descripción |
|---|---|---|
| 1 | Ventas totales por categoría | Ingresos agrupados por categoría de producto |
| 2 | Margen de ganancia por producto | Ingresos, costos y margen % por producto |
| 3 | ROI por categoría | Retorno sobre inversión agrupado por categoría |
| 4 | Top 10 productos más rentables | Productos ordenados por ganancia bruta |
| 5 | Tendencia de ventas mes a mes | Evolución mensual de ingresos usando funciones de ventana (LAG, SUM OVER) |

## Hallazgos principales

Ver [resumen_hallazgos.md](./resumen_hallazgos.md) para el análisis completo. En resumen:

- Beverages domina con el 56% de los ingresos totales.
- La BD tiene una estructura de costos estandarizada (75% del precio de venta), lo que produce márgenes y ROI casi idénticos entre productos.
- Un solo producto (Coffee) genera el 43.7% de la ganancia bruta total; los top 10 productos representan el 84.7%.
- Las ventas mensuales muestran alta volatilidad, con caídas de hasta -90% y picos de hasta +1,354%.

## Cómo ejecutar

1. Descargar e importar el dataset Northwind (estructura + datos) desde [dalers/mywind](https://github.com/dalers/mywind).
2. Ejecutar cada query de la carpeta `queries/` de forma individual en un cliente SQL (ej. DBeaver).
