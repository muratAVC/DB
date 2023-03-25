--1. list the initials of all the employees
select substr(first_name, 0, 1)||substr(last_name,0,1) as "Initials" from employees;
--2. list the full names of all employees ( fullname: Lastname FirstName)
SELECT FIRST_NAME||' '||LAST_NAME as FullName from EMPLOYEES;
--3. who has the logest name in the employees table?
SELECT * FROM EMPLOYEES WHERE length(FIRST_NAME||EMPLOYEES.LAST_NAME)=(SELECT MAX(LENGTH(FIRST_NAME||LAST_NAME))FROM EMPLOYEES);
--4. Show all employees who work in any one of these department id  90, 60, 100, 130, 120
SELECT * from EMPLOYEES WHERE DEPARTMENT_ID in(90,60,100,130,120);
--5. Show all employees who does not work in any one of these department id 90, 60,  100, 130, 120
SELECT * from EMPLOYEES WHERE DEPARTMENT_ID not in (90, 60,  100, 130, 120);
--6. divide employees into groups by using thier job id
SELECT JOB_ID FROM EMPLOYEES GROUP BY JOB_ID;
--6.1 display the maximum salaries in each groups
SELECT JOB_ID,MAX(SALARY) FROM EMPLOYEES GROUP BY JOB_ID;
--6.2 display the minium salaries in each groups
SELECT JOB_ID,MIN(SALARY) FROM EMPLOYEES GROUP BY JOB_ID;
--6.3 display the average salary of each group
SELECT JOB_ID, AVG(SALARY) FROM EMPLOYEES GROUP BY JOB_ID;
--6.4 how many employees are there in each group that have minimum salary of 5000 ?
SELECT JOB_ID,count(*)FROM EMPLOYEES WHERE SALARY>=5000 GROUP BY JOB_ID;
--6.5 display the total budgests of each groups
SELECT JOB_ID,SUM(SALARY) FROM EMPLOYEES GROUP BY JOB_ID;
--7. display employees' full email addresses and full names (assume that the domain of the email is @gmail)
SELECT (FIRST_NAME||' '||LAST_NAME)as "FullName", (EMAIL||'@cydeo.com') as "Email" from EMPLOYEES;
--8. display full addresses from locations table in a single column
-- (full address: Street_Addtess,  CityName  ZipCode,  Country_id)
SELECT STREET_ADDRESS||' '||CITY||' '||POSTAL_CODE||' '||COUNTRY_ID as "Full Adress" FRom LOCATIONS;