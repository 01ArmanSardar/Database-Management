-- JOIN QUERY syntax chara join korah jai 2 tah table er column keh avbhe
SELECT EMPLOYEES.FIRST_NAME,DEPARTMENT_NAME
FROM EMPLOYEES,DEPARTMENTS
WHERE EMPLOYEES.DEPARTMENT_ID=DEPARTMENTS.DEPARTMENT_ID;
-- JOIN QUERY SYNTAX USE KOREH JOIN KORAR UPAI
SELECT EMPLOYEES.FIRST_NAME,DEPARTMENTS.DEPARTMENT_NAME
FROM EMPLOYEES JOIN DEPARTMENTS ON EMPLOYEES.DEPARTMENT_ID=DEPARTMENTS.DEPARTMENT_ID;

-- left join

SELECT DEPARTMENTS.DEPARTMENT_NAME
FROM DEPARTMENTS -- departments ar employees left join krlm ,jathe koreh departmnets ar employee teh common ache seh gulah dekabhe sudhu department ache seh gulah oh asbhe,jodhi amn departmnet ache kinut sekhane employee nai ,toh seh employee.department_id kinut NULL hobhe ,toh amrah seh deparrmnt tai dekabho
		LEFT JOIN EMPLOYEES
             ON DEPARTMENTS.DEPARTMENT_ID=EMPLOYEES.DEPARTMENT_ID
WHERE EMPLOYEES.DEPARTMENT_ID IS NULL