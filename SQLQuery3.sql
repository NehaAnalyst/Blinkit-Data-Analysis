USE Blinkitdb;
GO

SELECT * FROM blinkit_data

SELECT CAST(SUM(Sales)/1000000 AS DECIMAL(10,2)) AS Total_Sales_Millions
FROM blinkit_data
WHERE Outlet_Establishment_Year = '2022'

SELECT CAST(AVG(Sales) AS DECIMAL(10,0)) AS Avg_Sales
FROM blinkit_data

SELECT COUNT(*) AS No_of_Items FROM blinkit_data

SELECT CAST(AVG(Rating) AS DECIMAL(10,2)) AS Avg_Sales
FROM blinkit_data
