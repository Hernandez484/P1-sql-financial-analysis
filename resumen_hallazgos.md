# Resumen de Hallazgos — P1 Análisis Financiero (Northwind)

Análisis basado en el cruce de las tablas `order_details`, `products` y `orders` de la base de datos Northwind.

## 1. Concentración de ingresos por categoría

De las 14 categorías analizadas, **Beverages** domina con $38,260 (56% de los $68,137 totales). Junto con Jams & Preserves y Dried Fruit & Nuts, las 3 categorías principales concentran el **70%** de los ingresos, mientras que las 5 categorías más bajas no superan los $1,000 cada una.

## 2. Estructura de costos estandarizada

22 de 24 productos tienen un margen idéntico de **25%** (ROI de 33.33%), porque el costo está fijado al 75% del precio de venta. Las únicas excepciones — Green Tea (33.11%) y Dried Plums (14.29%) — confirman que el patrón es generalizado, no casualidad.

## 3. Alta concentración de rentabilidad en pocos productos

**Northwind Traders Coffee** genera el **43.7%** de la ganancia bruta total ($7,475 de $17,072), 4.4 veces más que el segundo producto (Beer). A nivel agregado, los **10 productos más rentables representan el 84.7%** de toda la ganancia, dejando solo 15.3% para los otros 14 productos.

## 4. El volumen, no la eficiencia, define el ranking

Dado que el ROI es prácticamente idéntico entre productos y categorías, la posición de cada uno en el ranking de rentabilidad depende exclusivamente de **cuánto se vende** — no de qué tan eficiente es la operación.

## 5. Volatilidad mensual extrema

Entre enero y junio de 2006, los ingresos fluctuaron drásticamente:

| Mes | Ingresos | Crecimiento |
|---|---|---|
| 2006-01 | $3,836.00 | — |
| 2006-02 | $2,241.50 | -41.57% |
| 2006-03 | $32,609.25 | +1,354.80% |
| 2006-04 | $19,355.25 | -40.64% |
| 2006-05 | $1,788.50 | -90.76% |
| 2006-06 | $8,306.50 | +364.44% |

Marzo concentra el 47.9% de los ingresos del semestre en un solo mes. Esta inestabilidad sugiere un volumen de datos limitado que impide identificar patrones estacionales confiables.
