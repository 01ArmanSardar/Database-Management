SELECT  * -- SELECT * MANEH EMPLOYEES TABLE ER SHOB KICHU E DEKABHE
FROM EMPLOYEES;

SELECT FIRST_NAME -- SELECT FRIST_NAME ,FIRST_NAME KINTU AKTAH COLUMN ER NAME , TOH SELECT LIKHE KONO AKTAHH COLUMN ER NAME LIKLEH SUDHU OI COLUMN TAI DEKABHE
FROM EMPLOYEES;

SELECT *
FROM EMPLOYEES
WHERE DEPARTMENT_ID =90; -- WHERE DEPARTMENT_ID =90 MANEH ,EMPLOYEES TABLE ER DEPARTMENT_ID ER COLUMN ER MODDEH JEH DEPARTMENT_ID 90 ,SEI DEPARTMENT SHOBKICHU DEKABHO KARON SELECT * DICHI

SELECT *
FROM EMPLOYEES
WHERE DEPARTMENT_ID =90 AND SALARY <18000;  /* Akhne kintu logical AND er use tah hoie jacceh ,maneh
akhne WHERE die 2tah condition true hothe hobhe employee er DEPARTMENT_ID 90 hothe hobhe abong ,SALARY 18000 er kom
hothe hobhe*/
SELECT *
FROM EMPLOYEES
WHERE DEPARTMENT_ID =90 OR SALARY <18000;

SELECT FIRST_NAME ,SALARY ,SALARY+1000 -- amra cailei airthmetic operator use koreh kono aktah column er value gulu keh increase bah decrease korte parbho ,jemon akhne salary shobar 10000 koreh inrease koreh dilam
FROM EMPLOYEES ;

SELECT FIRST_NAME ,SALARY ,SALARY+1000 AS INCREASE_SALARY -- cailei AS use koreh kono aktah column er name change korte parih,jemon akhne salary+10000 namer column tah keh increase_salary name dilam
FROM EMPLOYEES ;

SELECT FIRST_NAME ,SALARY ,SALARY+1000 
FROM EMPLOYEES 
WHERE DEPARTMENT_ID =60;


SELECT FIRST_NAME ,SALARY ,SALARY+1000 
FROM EMPLOYEES 
WHERE DEPARTMENT_ID =60 OR  (DEPARTMENT_ID >60 or DEPARTMENT_ID<60);

SELECT DISTINCT JOB_ID -- akoi name er onkgula JOB_ID takleo sudhhu 1tah korei dekbhe , jemon abc,abc,abc,abc JOB_ID ache toh akhan tekeh just aktai abc show korbhe ,duplicate gulu dekahe nah
FROM EMPLOYEES;

SELECT *
FROM EMPLOYEES
ORDER BY SALARY ASC; -- salary gulu keh ASCCENDIG foramt a dibhe

SELECT *
FROM EMPLOYEES
ORDER BY SALARY DESC
LIMIT 4,5 ;/*AI LINE TAH KEH AVABHEO LIKHA JAI 
LIMIT 5
OFFSET 4
MANHE PROTHOM TEKEH 4 TAH LINE BADH DIE PORER 5 TAH LINE DEAKBHE
*/

SELECT * 
FROM EMPLOYEES 
WHERE LAST_NAME LIKE '%LL%' /* monhe kori akjn person er name jelly ,toh amar puru name tah mone nai
sudhu name er maje jeh ll ache setahh mone ache toh ami jodhi LIKE '%ll%' use korih taile tar 
infromation tah pabho, % die muloto bujai jeh kono kichu takteh pareh */
