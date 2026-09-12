# Sales-Analysis-using-SQL

📊 Retail Sales Analysis (SQL Server)
📖 Project Overview
This project demonstrates the use of Microsoft SQL Server (T-SQL) to clean, transform, and analyze a retail sales dataset (BranchDB). The project simulates real-world data analysis tasks, converting raw sales data into actionable business insights regarding revenue, customer behavior, and product performance.

🛠️ Tech Stack
Database: Microsoft SQL Server 2017+

Language: T-SQL

Tools: SQL Server Management Studio (SSMS)

🗂️ Dataset Structure
The analysis is performed on the dbo.sales table which contains transactional data with the following schema:

SalesOrderNumber (nvarchar)

OrderDate (datetime)

CustomerName (nvarchar)

EmailAddress (nvarchar)

Item (nvarchar)

Quantity (nvarchar)

UnitPrice (nvarchar)

TaxAmount (nvarchar)

Note: The raw data stored numeric values as strings (nvarchar), necessitating the use of TRY_CAST for calculations.

🔎 Key SQL Queries & Insights
The project answers several critical business questions through specific SQL scripts:

1. Data Cleaning & Validation

Identified corrupted or invalid data using TRY_CAST to find rows where Quantity, UnitPrice, or TaxAmount could not be converted to decimals.

2. Revenue Analysis

Monthly Sales Trends: Aggregated total revenue by Year and Month to track business growth over time.

Product Performance: Calculated total revenue and quantity sold per item to identify best-sellers.

3. Customer Insights

Top Spenders: Used GROUP BY and SUM to identify the top 10 customers by total sales volume.

Bottom Spenders: Identified low-value transactions to analyze purchasing patterns.

4. Specific Filtering

Performed complex filtering to find specific high-value orders (e.g., specific items like 'Mountain-100 Silver' or 'Road-150 Red' with tax amounts exceeding 200.00).
