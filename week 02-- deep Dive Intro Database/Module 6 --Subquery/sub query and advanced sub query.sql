SELECT *
FROM EMPLOYEES
WHERE SALARY <( -- nicher query tah hocche AKtAh SUBQUERY ,manhe aktah query er moddeh amrah ark tah query calacchi
				SELECT SALARY
				FROM EMPLOYEES  
				WHERE EMPLOYEE_ID =144 /* ai querry tah EMPLOYEE_ID 144 jar tar salary dibhe ,ar setar sateh amrah 
                main query teh jeh sobar salary bher korche tar sathe compare korbho*/
);

-- below query is Advanced sub query 
-- task is -> find second higest salary abong tader details
SELECT * -- jeh employee rah second hiegst salary pabhe tader dekabhe a query
FROM EMPLOYEES  
WHERE SALARY=(
            SELECT MAX(SALARY) -- 3.neor por oi choto gulah tekeh jetah max setah bher korche
			FROM EMPLOYEES
			WHERE SALARY <( -- 2.trpr akhne oi nicher max salary tekeh  choto jeh gulah aceh sehgulah nicchi
							SELECT MAX(SALARY) -- 1.employee table tekeh max salary tah bher korche
							FROM EMPLOYEES
						   )
) ;



