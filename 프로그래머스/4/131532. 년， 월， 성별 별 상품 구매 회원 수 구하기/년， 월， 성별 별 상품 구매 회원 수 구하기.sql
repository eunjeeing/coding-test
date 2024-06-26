SELECT EXTRACT(YEAR FROM OS.SALES_DATE) YEAR, EXTRACT(MONTH FROM OS.SALES_DATE) MONTH, UI.GENDER, COUNT(DISTINCT UI.USER_ID) USERS
FROM USER_INFO UI
INNER JOIN ONLINE_SALE OS
ON OS.USER_ID = UI.USER_ID
WHERE UI.GENDER IS NOT NULL
GROUP BY EXTRACT(YEAR FROM OS.SALES_DATE), EXTRACT(MONTH FROM OS.SALES_DATE), UI.GENDER
ORDER BY 1, 2, 3

-- SELECT EXTRACT(YEAR FROM OS.SALES_DATE) YEAR, EXTRACT(MONTH FROM OS.SALES_DATE) MONTH, UI.GENDER, UI.USER_ID
-- FROM USER_INFO  UI
-- INNER JOIN ONLINE_SALE OS
-- ON OS.USER_ID = UI.USER_ID
-- WHERE UI.GENDER = 0 AND EXTRACT(YEAR FROM OS.SALES_DATE) = 2022 AND 
-- EXTRACT(MONTH FROM OS.SALES_DATE) = 2

