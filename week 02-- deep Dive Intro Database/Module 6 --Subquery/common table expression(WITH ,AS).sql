WITH TEMP AS
(
SELECT * -- Ai Query tah jeh result dibhe seh result tah amrah TEMP a save kore raklam, TEMP er jaigai onno jeh kono name oh dithe parih no problem 
FROM EMPLOYEES
LIMIT 5
)
SELECT *
FROM TEMP;

-- a example for : IT department er avg salary tekeh choto abong  mrkting deprtmnt er max salary tekeh boro salary jadher ,tader sudhu dekabho
WITH AVGIT AS -- IT department er jeh avg salary asbhe setah AVGIT teh rakbho
	(
		SELECT AVG(SALARY) AS SAL1
		FROM EMPLOYEES
		WHERE DEPARTMENT_ID=60 -- IT
	),
MAXMKT AS -- MARKETING department er jeh max salary asbhe setah MAXMKT teh rakbho
	( 
		SELECT MAX(SALARY) AS SAL2
		FROM EMPLOYEES
		WHERE DEPARTMENT_ID =20 -- MKT
      )
SELECT *
FROM EMPLOYEES
WHERE SALARY >(SELECT SAL1 FROM AVGIT) AND SALARY< (SELECT SAL2 FROM MAXMKT) /*ai line tekeh bher korbho
avgit salary tekeh beshi abong max mrkting dprtmnt salary tekeh  kom salary jaderh tader deatails gulu
dekteh parbho */