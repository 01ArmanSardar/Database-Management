-- 1 INTERSECTION
SELECT *
FROM EMPLOYEES
WHERE SALARY >10000
INTERSECT -- jeh shob employees er modeeh 2tah query ei common porbeh ,sudhu taderh e dekabhe ,jemon jader salary 10000 er beshi abong id 100 sudhu tader e dekabhe .
SELECT *
FROM EMPLOYEES 
WHERE DEPARTMENT_ID=100

-- UNION 
SELECT *
FROM EMPLOYEES
WHERE SALARY >10000
UNION -- 2tah query er moddeh duplicate gulu badh porbhe, atah kichu tah distinct er motoi kaj koreh
SELECT *
FROM EMPLOYEES 
WHERE DEPARTMENT_ID=100

-- 3 UNION ALL
SELECT *
FROM EMPLOYEES
WHERE SALARY >10000
UNION ALL -- shob gulu e dekabhhe salary 10000 er beshi holeo dekabhe id 100 holeo dekabhe ,dulicate takleo dekabhe
SELECT *
FROM EMPLOYEES 
WHERE DEPARTMENT_ID=100


-- 4 MINUS
SELECT *
FROM EMPLOYEES
WHERE SALARY >10000 AND DEPARTMENT_ID !=100 -- SQL ER EI VESION A MINUS TAH KAJ KOREH NAH TAI MINUS ER OPERATION TAH AVBHE KORA JAI