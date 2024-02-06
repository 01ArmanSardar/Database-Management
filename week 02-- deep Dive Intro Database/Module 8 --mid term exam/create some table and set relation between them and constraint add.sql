
CREATE TABLE EMPLOYEES(
FIRST_NAME VARCHAR (50) NOT NULL,
LAST_NAME  VARCHAR (50),
DATE_OF_BIRTH DATE NOT NULL,
DEPARTMENT_ID INT PRIMARY KEY,
SALARY INT CHECK(SALARY>0)
);
CREATE TABLE DEPARTMENTS(
DEPARTMENT_ID int,
DEPARTMENT_NAME VARCHAR (50) PRIMARY KEY,
FOREIGN KEY (DEPARTMENT_ID) REFERENCES EMPLOYEES(DEPARTMENT_ID)
);