-- Total revenue by month
SELECT STRFTIME('%Y-%m', InvoiceDate) as Month, SUM(Quantity*UnitPrice) as Revenue
FROM sales_data
GROUP BY Month
ORDER BY Month;

-- Top 10 customers by revenue
SELECT CustomerID, SUM(Quantity*UnitPrice) as TotalRevenue
FROM sales_data
GROUP BY CustomerID
ORDER BY TotalRevenue DESC
LIMIT 10;

-- Revenue by product
SELECT Description, SUM(Quantity*UnitPrice) as Revenue
FROM sales_data
GROUP BY Description
ORDER BY Revenue DESC;

-- Revenue by country
SELECT Country, SUM(Quantity*UnitPrice) as Revenue
FROM sales_data
GROUP BY Country
ORDER BY Revenue DESC;
