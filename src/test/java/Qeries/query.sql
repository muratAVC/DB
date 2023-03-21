SELECT FIRST_NAME FROM EMPLOYEES;
SELECT distinct FIRST_NAME FROM EMPLOYEES;
SELECT distinct DEPARTMENT_ID FROM EMPLOYEES;--tekrarlanan verileri silerek getirir
SELECT * FROM EMPLOYEES where FIRST_NAME  <> 'Valli' ORDER BY FIRST_NAME DESC ;
SELECT * FROM EMPLOYEES where (EMPLOYEE_ID>150 and EMPLOYEE_ID<200)  and FIRST_NAME ='William'
SELECT * FROM EMPLOYEES where ROWNUM <=5; --en fazla gelecek satır sayısını belirler
SELECT * FROM  EMPLOYEES WHERE FIRST_NAME like 'A%a';-- like mesela A ile başlayan aradaki ne olursa ve a ile biten demek
SELECT * FROM  EMPLOYEES WHERE FIRST_NAME IN ('William' , 'Alana');
SELECT * FROM EMPLOYEES WHERE (FIRST_NAME like 'T%') or (FIRST_NAME like '%a');
select distinct job_id from employees;
SELECT AVG(salary) FROM EMPLOYEES WHERE job_id = 'FI_ACCOUNT';--ortalamasını alır
SELECT MIN(SALARY) FROM EMPLOYEES WHERE JOB_ID = 'FI_ACCOUNT';-- max veya min değerini getirir
select job_id,avg(salary) from employees group by job_id;
select job_id,avg(salary),count(*),sum(salary) from employees group by job_id having avg(salary) >5000;
SELECT * FROM employees WHERE salary = (SELECT MAX(salary) FROM employees);
SELECT * FROM  EMPLOYEES WHERE SALARY > (SELECT AVG(SALARY) FROM EMPLOYEES WHERE SALARY <7000);
select first_name as "given_name", last_name as "surname" from employees;
SELECT FIRST_NAME || '@gmail.com' FROM EMPLOYEES;
SELECT FIRST_NAME || ' ' || LAST_NAME FROM EMPLOYEES;--iki velue yi birleştirir
SELECT CONCAT(FIRST_NAME,'@gmail.com') FROM EMPLOYEES;--iki value yi birleştirir
SELECT UPPER(FIRST_NAME) FROM EMPLOYEES;--büyük harfe çevirir
SELECT LOWER(EMAIL) FROM EMPLOYEES;-- küçük harfe çevirir
SELECT INITCAP(EMAIL) FROM EMPLOYEES;--İlk harfi buyuk harf yapar
SELECT FIRST_NAME,LENGTH(FIRST_NAME) FROM EMPLOYEES; --value nin zunlugunu verir
SELECT REPLACE(FIRST_NAME,'e','E') FROM EMPLOYEES; --value de verilen değerleri değiştirir
SELECT FIRST_NAME,SUBSTR(FIRST_NAME,2,4) FROM EMPLOYEES; --alt string oluşturur
SELECT FIRST_NAME,SUBSTR(FIRST_NAME,LENGTH(FIRST_NAME)-1,LENGTH(FIRST_NAME)+2) FROM EMPLOYEES;
--son iki farfini alır




