CREATE DATABASE RESTAURANT;
USE RESTAURANT;
SELECT * FROM RES_SALES;

/**************************************** Level 1Task 1 **************************************/

/*Task: Top Cuisines
Determine the top three most common cuisines in the dataset.*/
SELECT Cuisines, COUNT(*) AS Cuisine_count
FROM Res_sales
GROUP BY Cuisines
ORDER BY Cuisine_count DESC
LIMIT 3;

/*Calculate the percentage of restaurants that serve each of the top cuisines.*/
SELECT Cuisines, 
       COUNT(*) AS Cuisine_count, 
       (COUNT(*) * 100.0 / (SELECT COUNT(*) FROM Res_sales)) AS percentage
FROM Res_sales
GROUP BY Cuisines
ORDER BY Cuisine_count DESC
LIMIT 3;




