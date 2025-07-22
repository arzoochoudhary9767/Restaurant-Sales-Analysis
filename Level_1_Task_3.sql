/************************************ LEVEL 1 TASK 3: RANGE DISTRIBUTION ****************************************/

/*Calculate the percentage of restaurants in each price range category.*/
SELECT price_range, count(*) as price_range_count, (count(*)*100/ (select count(*) from res_sales)) as percentage
from res_sales
group by price_range
order by percentage DESC;