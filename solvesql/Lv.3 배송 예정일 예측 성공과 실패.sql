SELECT DATE(order_purchase_timestamp) AS purchase_date
     , COUNT(CASE WHEN order_delivered_customer_date <= order_estimated_delivery_date THEN 'success' END ) AS success
     , COUNT(CASE WHEN order_delivered_customer_date > order_estimated_delivery_date THEN 'fail' END ) AS fail
FROM olist_orders_dataset
WHERE DATE(order_purchase_timestamp) BETWEEN '2017-01-01' AND '2017-01-31'
GROUP BY purchase_date
ORDER BY purchase_date
