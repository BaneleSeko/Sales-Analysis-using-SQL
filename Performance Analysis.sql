SELECT
[SalesOrderNumber],
[OrderDate],
[CustomerName],
[EmailAddress],
[Item],
[UnitPrice],
[Quantity],
[TaxAmount],

TRY_CAST (Quantity AS DECIMAL (18,2)) * TRY_CAST (UnitPrice AS DECIMAL (18,2))
AS TotalAmountSpent

FROM sales
WHERE (Item = 'Mountain -100 Silver, 44'OR Item = 'Road -150 Red, 62')
  AND 
      TRY_CAST (TaxAmount AS DECIMAL (18,2)) > 200.000
      OR TRY_CAST (Quantity  AS DECIMAL (18,2)) = 1

ORDER BY TotalAmountSpent DESC;
