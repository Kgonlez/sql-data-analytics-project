/*
===============================================================================
Change Over Time Analysis
===============================================================================
Purpose:
    - To track trends, growth, and changes in key metrics over time.
    - For time-series analysis and identifying seasonality.
    - To measure growth or decline over specific periods.

SQL Functions Used:
    - Date Functions: DATE_FORMAT()
    - Aggregate Functions: SUM(), COUNT(), AVG()
===============================================================================
*/
-- Analyse sales performance over time
-- Quick Date Functions

SELECT 
       YEAR(order_date) AS order_year, 
       MONTH(order_date) AS order_month, 
       SUM(sales_amount) AS total_sales,
       COUNT(DISTINCT customer_key) AS total_customers,
       SUM(quantity) AS total_quantity
FROM `gold.fact_sales`
WHERE order_date IS NOT NULL AND order_date <> ''
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY YEAR(order_date), MONTH(order_date);

-- DATE_FORMAT()
SELECT 
    DATE_FORMAT(order_date, '%Y-%m-01') AS order_date,  
    SUM(sales_amount) AS total_sales,
    COUNT(DISTINCT customer_key) AS total_customers,
    SUM(quantity) AS total_quantity
FROM  `gold.fact_sales`
WHERE order_date IS NOT NULL AND order_date <> ''
GROUP BY DATE_FORMAT(order_date, '%Y-%m-01')
ORDER BY DATE_FORMAT(order_date, '%Y-%m-01');

-- FORMAT()
SELECT 
       DATE_FORMAT(order_date, '%Y-%m-01') AS order_date, 
       SUM(sales_amount) AS total_sales,
       COUNT(DISTINCT customer_key) AS total_customers,
       SUM(quantity) AS total_quantity
FROM `gold.fact_sales`
WHERE order_date IS NOT NULL AND order_date <> ''
GROUP BY DATE_FORMAT(order_date, '%Y-%m-01')
ORDER BY DATE_FORMAT(order_date, '%Y-%m-01');
