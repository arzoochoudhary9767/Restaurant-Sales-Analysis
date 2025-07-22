/************************************ LEVEL 1 TASK 3: ONLINE DELIVERY ****************************************/

/*Determine the percentage of restaurants that offer online delivery.*/
SELECT (COUNT(*)*100 / (SELECT COUNT(*) FROM RES_SALES)) AS PERCENTAGE_ONLINE_DELIVERY
FROM RES_SALES
WHERE HAS_ONLINE_DELIVERY = 'YES';

/*Compare the average ratings of restaurants with and without online delivery.*/
SELECT Has_Online_delivery, 
       AVG(Aggregate_rating) AS avg_rating
FROM res_sales
GROUP BY Has_Online_delivery
ORDER BY avg_rating DESC;
