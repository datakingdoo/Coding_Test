# 요일별로 가장 높은 금액의 결제 내역을 출력하는 쿼리를 작성

SELECT total_bill , tip , sex , smoker , day, time , size
FROM (SELECT *
           , ROW_NUMBER() OVER(PARTITION BY day ORDER BY total_bill DESC) AS row_n 
      FROM tips) AS tips_row_n
WHERE row_n = 1 
