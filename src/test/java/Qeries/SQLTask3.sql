CREATE TABLE HOME_ADDRESS(
ADRESS_ID INTEGER PRIMARY KEY,
ADRESS VARCHAR(50) not null,
PHONE INTEGER not null
);
insert into HOME_ADDRESS (ADRESS_ID,ADRESS,PHONE) values (5,'1913 Hanoi Way',2541545);
INSERT INTO HOME_ADDRESS (ADRESS_ID, ADRESS, PHONE) VALUES (7,  '692 Joliet Street'  ,  44847719);
INSERT INTO HOME_ADDRESS (ADRESS_ID, ADRESS, PHONE) VALUES (8,  '1566 Inegl Manor'  ,  70581400);
INSERT INTO HOME_ADDRESS (ADRESS_ID, ADRESS, PHONE) VALUES (10,  '1795 Santiago '  ,  86045262);
INSERT INTO HOME_ADDRESS (ADRESS_ID, ADRESS, PHONE) VALUES (11,  '900 Santiago '  ,  16571220);

SELECT * FROM HOME_ADDRESS;

CREATE TABLE CUSTOMERS(
  CUSTOMER_ID INTEGER PRIMARY KEY ,
  FIRST_NAME VARCHAR(20) NOT NULL ,
  LAST_NAME VARCHAR(20) NOT NULL ,
  ADDRESS_ID INTEGER REFERENCES HOME_ADDRESS(ADRESS_ID)-- İKİ tablo arasında ilişki kurdu
);
INSERT INTO CUSTOMERS (CUSTOMER_ID, FIRST_NAME, LAST_NAME, ADDRESS_ID) VALUES (1, 'Mary' ,  'Smith',  5);
INSERT INTO CUSTOMERS (CUSTOMER_ID, FIRST_NAME, LAST_NAME, ADDRESS_ID) VALUES (2,  'Patricia' ,  'Johnson' ,  NULl);
INSERT INTO CUSTOMERS (CUSTOMER_ID, FIRST_NAME, LAST_NAME, ADDRESS_ID) VALUES (3,  'Linda' ,  'Williams' ,  7);
INSERT INTO CUSTOMERS (CUSTOMER_ID, FIRST_NAME, LAST_NAME, ADDRESS_ID) VALUES (4, 'Barbara' ,  'Jones' , 8);
INSERT INTO CUSTOMERS (CUSTOMER_ID, FIRST_NAME, LAST_NAME, ADDRESS_ID) VALUES (5,  'Elizabeth' ,  'Brown' ,  NULL);

COMMIT WORK ;
select *FROM CUSTOMERS;


--1. Show all job_id and average salary who work as any of these jobs IT_PROG, SA_REP, FI_ACCOUNT, AD_VP
select job_id, avg(salary) as "average salary" from employees group by job_id
having job_id IN ('IT_PROG', 'SA_REP', 'FI_ACCOUNT', 'AD_VP');
--2. Show all records whose last name contains 2 lowercase 'a's
SELECT * FROM EMPLOYEES WHERE LAST_NAME like '%a%a%';--iki tane 'a' içerenleri seç
--3. Display max salary  for each department
SELECT JOB_ID, MAX(SALARY) FROM EMPLOYEES GROUP BY JOB_ID;
--4. Display total salary for each department except department_id 50, and where total salary >30000
SELECT DEPARTMENT_ID, SUM(SALARY) FROM EMPLOYEES group by DEPARTMENT_ID having sum(SALARY)>3000 and DEPARTMENT_ID!=50;
--5. Write a SQL query that returns first and last name any employees who started job between 1-JAN-2000 and 3-SEP-2007 from the hr database
SELECT FIRST_NAME,LAST_NAME FROM EMPLOYEES WHERE HIRE_DATE BETWEEN '01-JAN-2000' and '03-SEP-2007';
---yukardaki sorguyu kabul etmedi
--6. Display country_id, country name, region id, region name from hr database
select c.country_id, c.country_name, c.region_id, r.region_name
from countries c inner join regions r on c.region_id=r.region_id;
--7. Display All cities, country names from hr database
SELECT C.COUNTRY_NAME, L.CITY FROM COUNTRIES C INNER JOIN LOCATIONS L on C.COUNTRY_ID = L.COUNTRY_ID;
--8. display the first name, last name, department number, and department name,  for all employees for departments 80 or 40.
SELECT A.FIRST_NAME,A.LAST_NAME,A.DEPARTMENT_ID,D.DEPARTMENT_NAME FROM EMPLOYEES A INNER JOIN DEPARTMENTS D on A.DEPARTMENT_ID = D.DEPARTMENT_ID;
--9. Display employees' first name, Lastname department id and all departments including those where do not have any employee.
SELECT A.FIRST_NAME,A.LAST_NAME,A.DEPARTMENT_ID, D.DEPARTMENT_NAME FROM EMPLOYEES A RIGHT OUTER JOIN DEPARTMENTS D on A.DEPARTMENT_ID = D.DEPARTMENT_ID;
--10. Display the first name, last name, department number, and name, for all employees who have or have not any department
SELECT E.FIRST_NAME,E.LAST_NAME,E.DEPARTMENT_ID,D.DEPARTMENT_NAME FROM EMPLOYEES E RIGHT OUTER JOIN DEPARTMENTS D on E.DEPARTMENT_ID = D.DEPARTMENT_ID;
--11. Display all employee and their manager's names
SELECT (A.FIRST_NAME||' '||A.LAST_NAME) as "Employee_Name",(B.FIRST_NAME||' '||B.LAST_NAME) as "Manager_name" From EMPLOYEES A INNER JOIN EMPLOYEES B ON A.DEPARTMENT_ID=B.DEPARTMENT_ID;