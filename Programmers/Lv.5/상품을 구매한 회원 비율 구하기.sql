SELECT YEAR(s.SALES_DATE)
     , MONTH(s.SALES_DATE)
     , COUNT(DISTINCT s.USER_ID) AS PUCHASED_USERS
     , ROUND(COUNT(DISTINCT i.USER_ID) / (SELECT COUNT(*)
                                          FROM user_info
                                          WHERE YEAR(joined) = 2021),1) AS PUCHASED_RATIO
FROM user_info i
    JOIN online_sale s ON i.user_id = s.user_id 
    AND YEAR(i.joined) = 2021 
GROUP BY 1, 2
ORDER BY 1, 2
