SELECT
YEAR (OrderDate) AS SalesYear,
MONTH (OrderDate) AS SalesMonth,
SUM(
  TRY_CAST (Quantity AS DECIMAL (18,2)) *
  TRY_CAST (UnitPrice AS DECIMAL (18,2))
)
  AS MonthlySales
FROM Sales
GROUP BY
 YEAR (OrderDate),
 MONTH (OrderDate)
ORDER BY
   SalesYear,
   SalesMonth;
