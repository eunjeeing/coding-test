SELECT  H.HISTORY_ID, C.CAR_ID, C.DAILY_FEE,  H.END_DATE-H.START_DATE+1 DAYS, CASE WHEN H.END_DATE-H.START_DATE+1 >= 7 THEN C.DAILY_FEE * (P.DISCOUNT_RATE*0.01) ELSE C.DAILY_FEE
END 

FROM CAR_RENTAL_COMPANY_CAR C
INNER JOIN CAR_RENTAL_COMPANY_RENTAL_HISTORY H
ON H.CAR_ID = C.CAR_ID
LEFT JOIN CAR_RENTAL_COMPANY_DISCOUNT_PLAN P
ON C.CAR_TYPE = P.CAR_TYPE
WHERE C.CAR_TYPE = '트럭'
ORDER BY 1