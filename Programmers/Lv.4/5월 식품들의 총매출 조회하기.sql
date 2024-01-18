SELECT p.PRODUCT_ID
     , p.PRODUCT_NAME
     , SUM(p.PRICE*o.AMOUNT) AS TOTAL_SALES
FROM FOOD_PRODUCT p
JOIN FOOD_ORDER o ON p.PRODUCT_ID = o.PRODUCT_ID
WHERE o.PRODUCE_DATE LIKE '2022-05%'
GROUP BY PRODUCT_ID 
ORDER BY TOTAL_SALES DESC , PRODUCT_ID
