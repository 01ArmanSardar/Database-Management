use dummydb;
SELECT MAX(SALARY) -- aVAbhe bakih COUNT,MIN,AVG,SUM bher korah jai.
FROM EMPLOYEES;

SELECT DEPARTMENT_ID ,MAX(SALARY)
FROM EMPLOYEES
GROUP BY DEPARTMENT_ID ;-- AKHNE AMRAH GROUP BY KEYWORD USE KOREH KONO AKTAH DEPARMENT_ID ER UNDER A JOTOGULAH EMPLOYEE ACHE TAR MODDEH MAX SALARY TAH DEKACCHI

SELECT DEPARTMENT_ID ,MAX(SALARY)
FROM EMPLOYEES
GROUP BY DEPARTMENT_ID
HAVING MAX(SALARY)>10000 -- HAVING keyword tah use hoi group function er upor kono condition applie korleh