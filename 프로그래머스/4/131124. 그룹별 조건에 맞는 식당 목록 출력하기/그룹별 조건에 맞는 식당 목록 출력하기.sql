-- 코드를 입력하세요
WITH TEMP AS (
SELECT MP.MEMBER_ID, COUNT(*) COUNT  
FROM REST_REVIEW RR
INNER JOIN MEMBER_PROFILE MP
ON MP.MEMBER_ID = RR.MEMBER_ID
GROUP BY MP.MEMBER_ID
ORDER BY COUNT DESC
FETCH FIRST 1 ROW ONLY)

SELECT MP.MEMBER_NAME, RR.REVIEW_TEXT, TO_CHAR(RR.REVIEW_DATE, 'YYYY-MM-DD') REVIEW_DATE
FROM REST_REVIEW RR
INNER JOIN MEMBER_PROFILE MP
ON MP.MEMBER_ID = RR.MEMBER_ID
WHERE MP.MEMBER_ID = (SELECT MEMBER_ID FROM TEMP)
ORDER BY 3, 2