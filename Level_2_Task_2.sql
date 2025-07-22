/************************************ LEVEL 2 TASK 2: CUISINE COMBINATION *********************************/

/*Identify the most common combinations of cuisines in the dataset.*/
SELECT * FROM RES_SALES;
Select Cuisines, count(*) as common_cuisines from res_sales 
group by cuisines
order by common_cuisines DESC 
LIMIT 10;

/*Determine if certain cuisine combination stend to have higher ratings.*/
Select Cuisines, Avg(Aggregate_rating) as Avg_rating, count(*) as Restaurant_count from res_sales
Group by Cuisines
Order by Restaurant_count DESC;
