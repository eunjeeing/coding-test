SELECT CONCAT(QUARTER(DIFFERENTIATION_DATE), 'Q') QUARTER, COUNT(ID) ECOLI_COUNT
FROM ECOLI_DATA 
GROUP BY CONCAT(QUARTER(DIFFERENTIATION_DATE), 'Q')