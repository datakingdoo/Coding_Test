WITH month AS (
  SELECT r.customer_id
       , r.order_id
       , r.order_date
       , c.first_order_date
       , DATE_FORMAT(r.order_date,'%Y-%m-%01') AS order_month
       , DATE_FORMAT(c.first_order_date,'%Y-%m-%01') AS first_order_month
  FROM records AS r 
  JOIN customer_stats c ON r.customer_id = c.customer_id
)
SELECT first_order_month
     , COUNT(DISTINCT customer_id) AS month0
     , COUNT(DISTINCT CASE WHEN DATE_ADD(first_order_month,INTERVAL 1 MONTH) = order_month THEN customer_id END) AS month1
     , COUNT(DISTINCT CASE WHEN DATE_ADD(first_order_month,INTERVAL 2 MONTH) = order_month THEN customer_id END ) AS month2
     , COUNT(DISTINCT CASE WHEN DATE_ADD(first_order_month,INTERVAL 3 MONTH) = order_month THEN customer_id END ) AS month3
     , COUNT(DISTINCT CASE WHEN DATE_ADD(first_order_month,INTERVAL 4 MONTH) = order_month THEN customer_id END ) AS month4
     , COUNT(DISTINCT CASE WHEN DATE_ADD(first_order_month,INTERVAL 5 MONTH) = order_month THEN customer_id END ) AS month5
     , COUNT(DISTINCT CASE WHEN DATE_ADD(first_order_month,INTERVAL 6 MONTH) = order_month THEN customer_id END ) AS month6
     , COUNT(DISTINCT CASE WHEN DATE_ADD(first_order_month,INTERVAL 7 MONTH) = order_month THEN customer_id END ) AS month7
     , COUNT(DISTINCT CASE WHEN DATE_ADD(first_order_month,INTERVAL 8 MONTH) = order_month THEN customer_id END ) AS month8
     , COUNT(DISTINCT CASE WHEN DATE_ADD(first_order_month,INTERVAL 9 MONTH) = order_month THEN customer_id END ) AS month9
     , COUNT(DISTINCT CASE WHEN DATE_ADD(first_order_month,INTERVAL 10 MONTH) = order_month THEN customer_id END ) AS month10
     , COUNT(DISTINCT CASE WHEN DATE_ADD(first_order_month,INTERVAL 11 MONTH) = order_month THEN customer_id END ) AS month11
FROM month 
GROUP BY first_order_month
ORDER BY first_order_month
