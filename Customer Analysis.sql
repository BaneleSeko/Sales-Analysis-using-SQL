SELECT TOP 5
CustomerName,
SUM(
  TRY_CAST(Quantity AS DECIMAL (18,2)) *
  TRY_CAST(UnitPrice AS DECIMAL (18,2))
  ) AS TotalSales
  FROM Sales
  GROUP BY CustomerName
  ORDER BY TotalSales DESC;