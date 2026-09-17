CREATE DATABASE ecommerce_analysis;

CREATE TABLE ecommerce_sales (
    Order_ID VARCHAR(20),
    Order_Date DATE,
    Customer_Name VARCHAR(100),
    Category VARCHAR(50),
    Product VARCHAR(100),
    City VARCHAR(50),
    State VARCHAR(50),
    Quantity INT,
    Sales DECIMAL(12,2),
    Discount DECIMAL(5,2),
    Profit DECIMAL(12,2),
    Payment_Mode VARCHAR(50)
);

SELECT COUNT(*) AS Total_Records
FROM ecommerce_sales;

SELECT Category,
       ROUND(SUM(Sales), 2) AS Total_Sales,
       ROUND(SUM(Profit), 2) AS Total_Profit
FROM ecommerce_sales
GROUP BY Category
ORDER BY Total_Sales DESC;

SELECT State,
       ROUND(SUM(Sales), 2) AS Total_Sales
FROM ecommerce_sales
GROUP BY State
ORDER BY Total_Sales DESC;

SELECT Product,
       ROUND(SUM(Sales), 2) AS Total_Sales
FROM ecommerce_sales
GROUP BY Product
ORDER BY Total_Sales DESC
LIMIT 10;

SELECT Payment_Mode,
       ROUND(SUM(Sales), 2) AS Total_Sales
FROM ecommerce_sales
GROUP BY Payment_Mode
ORDER BY Total_Sales DESC;
