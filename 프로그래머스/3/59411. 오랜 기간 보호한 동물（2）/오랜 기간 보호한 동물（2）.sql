SELECT ANIMAL_ID, NAME FROM
(SELECT AI.ANIMAL_ID, AI.NAME, AO.DATETIME-AI.DATETIME
FROM ANIMAL_INS AI
INNER JOIN ANIMAL_OUTS AO
ON AO.ANIMAL_ID = AI.ANIMAL_ID
ORDER BY 3 DESC)
WHERE ROWNUM <= 2