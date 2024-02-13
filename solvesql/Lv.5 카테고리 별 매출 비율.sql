WITH sum_sub AS (
  SELECT category 
       , sub_category
       , SUM(sales) AS sum_sales
  FROM records
  GROUP BY category , sub_category
)

SELECT category
     , sub_category
     , ROUND(sum_sales,2) AS sales_sub_category
     , ROUND(SUM(sum_sales) OVER(PARTITION BY category),2) AS sales_category
     , ROUND(SUM(sum_sales) OVER() ,2) AS sales_total
     , ROUND(sum_sales / SUM(sum_sales) OVER(PARTITION BY category) * 100, 2) AS pct_in_category
     , ROUND(sum_sales / SUM(sum_sales) OVER() * 100 ,2) AS pct_in_total
FROM sum_sub
