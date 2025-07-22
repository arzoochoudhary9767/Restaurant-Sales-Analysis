USE RESTAURANT;
SELECT * FROM RES_SALES;
/***************************************** LEVEL 2 TASK 1: RESTAURANT RATINGS ********************************************/

/*Analyze the distribution of aggregate ratings and determine the most common rating range.*/
Select Aggregate_rating, Count(*) as common_aggregate_rating from res_sales 
Group by aggregate_rating
order by aggregate_rating DESC;

/*Calculate the average number of votes received by restaurants.*/
Select restaurant_name, avg(votes) as Avg_votes from res_sales group by restaurant_name order by Avg_votes DESC;
