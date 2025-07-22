/************************************ LEVEL 1 TASK 2: CITY ANALYSIS ****************************************/

/*Identify the city with the highest number of restaurants in the dataset.*/
SELECT City, COUNT(*) AS City_count FROM res_sales GROUP BY City ORDER BY City_count DESC LIMIT 1;

/*Calculate the average rating for restaurants in each city.*/
SELECT City, avg(Aggregate_rating) as Avg_rating from res_sales group by city order by Avg_rating DESC;

/*Determine the city with the highest average rating.*/
SELECT City, avg(Aggregate_rating) as Avg_rating from res_sales group by city order by Avg_rating DESC LIMIT 1;