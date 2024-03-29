SELECT DISTINCT(c.CAR_ID)
     , c.CAR_TYPE
     , ROUND(DAILY_FEE * 30 - (DAILY_FEE * 30 * (DISCOUNT_RATE/100))) AS FEE
FROM CAR_RENTAL_COMPANY_CAR c 
JOIN CAR_RENTAL_COMPANY_RENTAL_HISTORY h ON c.CAR_ID = h.CAR_ID
JOIN CAR_RENTAL_COMPANY_DISCOUNT_PLAN p ON c.CAR_TYPE = p.CAR_TYPE
WHERE c.CAR_TYPE IN ('SUV','세단') 
    AND c.CAR_ID NOT IN (SELECT CAR_ID
                       FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
                       WHERE END_DATE>='2022-11-01' AND START_DATE<'2022-12-01'
                       ) 
    AND p.DURATION_TYPE = '30일 이상'
    AND ROUND(DAILY_FEE * 30 - (DAILY_FEE * 30 * (DISCOUNT_RATE/100))) BETWEEN 500000 AND 2000000
ORDER BY FEE DESC, C.CAR_TYPE, C.CAR_ID DESC;
