SELECT
Item,
SUM (TRY_CAST(Quantity AS INT)) AS
QuantitySold,
SUM (
TRY_CAST (Quantity AS DECIMAL (18,2)) *
TRY_CAST (UnitPrice AS DECIMAL (18,2))
) AS Revenue
FROM Sales
GROUP BY Item 
ORDER BY Revenue DESC;