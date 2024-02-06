USE DUMMYDB;
-- 4. Write SQL Query to get the second max salary 
SELECT MAX(SALARY) AS SECOND_MAX_SALARY
			FROM EMPLOYEES
			WHERE SALARY <( 
							SELECT MAX(SALARY) 
							FROM EMPLOYEES
						   );

-- 5. Write SQL Query to show  the department names and the average salary of the departments
SELECT DEPARTMENT_NAME ,AVG(SALARY)
FROM EMPLOYEES JOIN DEPARTMENTS ON EMPLOYEES.DEPARTMENT_ID=DEPARTMENTS.DEPARTMENT_ID
GROUP BY DEPARTMENT_NAME; -- DONEEEEEEEEEEEEEEEEE

-- 8. Show the names of the employees who get less salary than Steven

SELECT FIRST_NAME,LAST_NAME 
FROM EMPLOYEES 
WHERE SALARY < (SELECT SALARY
				FROM EMPLOYEES
				WHERE FIRST_NAME LIKE ('Steven') LIMIT 1
);

-- 9. Count the number of employees of each job type
SELECT JOB_ID, count(*)
FROM EMPLOYEES
GROUP BY EMPLOYEES.JOB_ID;
-- 10. Show the names of Departments which doesn’t have any employees
SELECT DEPARTMENTS.DEPARTMENT_NAME
FROM DEPARTMENTS LEFT JOIN EMPLOYEES ON DEPARTMENTS.DEPARTMENT_ID=EMPLOYEES.DEPARTMENT_ID
WHERE EMPLOYEES.DEPARTMENT_ID IS NULL;



