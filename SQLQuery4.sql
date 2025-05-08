USE Blinkitdb;
GO

SELECT * FROM blinkit_data
--All metrics by outlet type:
SELECT 
	Outlet_Type,
	CAST(SUM(Sales) AS DECIMAL(10,2)) AS Total_Sales,
	CAST((SUM(Sales) * 100.0 / SUM(SUM(Sales)) OVER()) AS DECIMAL(10,2)) AS Sales_Percentage,
	CAST(AVG(Sales) AS DECIMAL(10,1)) AS Avg_Sales,
	COUNT(*) AS No_Of_Items,
	CAST(AVG(Rating) AS DECIMAL(10,2)) AS Avg_Ratings
FROM blinkit_data
GROUP BY Outlet_Type
ORDER BY Total_Sales DESC;

