/****************************************** LEVEL 2 TASK 4: RESTAURANT CHAINS ****************************************/
SELECT * FROM RES_SALES;
/*Identify if there are any restaurant chains present in the dataset.*/
SELECT Restaurant_Name, 
       COUNT(*) AS location_count
FROM res_sales
GROUP BY Restaurant_Name
HAVING COUNT(*) > 1
ORDER BY location_count DESC;

/*Analyze the ratings and popularity of different restaurant chains.*/
SELECT Restaurant_Name, 
       COUNT(*) AS location_count, 
       AVG(Aggregate_rating) AS avg_rating, 
       AVG(Votes) AS avg_votes
FROM res_sales
GROUP BY Restaurant_Name
HAVING COUNT(*) > 1
ORDER BY avg_rating DESC, avg_votes DESC;
