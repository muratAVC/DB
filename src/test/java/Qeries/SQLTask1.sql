--1. List all the employees' first and last name with their salary in employees table
SELECT FIRST_NAME,LAST_NAME,SALARY From EMPLOYEES;
--2. how many employees have salary less than 5000?
SELECT count(FIRST_NAME) FROM EMPLOYEES WHERE SALARY>5000;
--3. how many employees have salary between 6000 and 7000?
SELECT count(FIRST_NAME) FROM EMPLOYEES WHERE SALARY>6000 and SALARY<7000;
--4. List all the different region_ids in countries table
SELECT distinct REGION_ID FROM COUNTRIES;
--5. display the salary of the employee Grant Douglas (lastName: Grant,  firstName: Douglas)
SELECT SALARY FROM EMPLOYEES WHERE LAST_NAME='Grant' and FIRST_NAME='Douglas';
--6. display the maximum salary in employees table
SELECT MAX(SALARY) FROM EMPLOYEES;
--7. display all informations of the employee who has the highest salary in employees table
SELECT * FROM EMPLOYEES WHERE SALARY=(SELECT MAX(SALARY)FROM EMPLOYEES);
--8. display the the second maximum salary from the employees table
SELECT MAX(SALARY) FROM EMPLOYEES WHERE SALARY<(SELECT MAX(SALARY)FROM EMPLOYEES);
--9. display all informations of the employee who has the second highest salary
SELECT * FROM  EMPLOYEES WHERE SALARY=(Select MAX(SALARY)FROM EMPLOYEES WHERE SALARY<(Select MAX(SALARY)FROM EMPLOYEES));
--10. display the the minimum salary in employees table
SELECT MIN(SALARY) FROM EMPLOYEES;
--11. display all informations of the employee who has the minimum salary in employees table
SELECT * FROM EMPLOYEES WHERE SALARY=(SELECT MIN(SALARY)FROM EMPLOYEES);
--12. display the second minimum salary from the employees table
SELECT MIN(SALARY) FROM EMPLOYEES WHERE SALARY>(SELECT MIN(SALARY)FROM EMPLOYEES);
--13. display all informations of the employee who has the second minimum salary
SELECT * FROM EMPLOYEES WHERE SALARY=(Select MIN(SALARY)FROM EMPLOYEES WHERE SALARY>(SELECT MIN(SALARY)FROM EMPLOYEES));
--14. display the average salary of the employees;
SELECT AVG(SALARY) FROM EMPLOYEES;
--15. list all the employees who are making above the average salary;
SELECT * FROM EMPLOYEES WHERE SALARY>(SELECT AVG(SALARY) FROM EMPLOYEES);
--16. list all the employees who are making less than the average salary
SELECT * FROM EMPLOYEES WHERE SALARY<(SELECT AVG(SALARY) FROM EMPLOYEES);
--17. count the total numbers of the departments in departs table
SELECT COUNT(*) FROM DEPARTMENTS;
--18. sort the start_date in ascending order in job_history's table
SELECT * FROM JOB_HISTORY ORDER BY START_DATE;
--19. sort the start_date in descending order in job_history's table
SELECT * FROM JOB_HISTORY ORDER BY START_DATE desc;
--20. list all the employees whose first name starts with 'A'
SELECT * FROM EMPLOYEES WHERE FIRST_NAME like 'A%';
--21. list all the employees whose job_ID contains 'IT'
SELECT * FROM EMPLOYEES WHERE JOB_ID like '%IT%';
--22. list all the employees whose department id in 50, 80, 100
SELECT * FROM EMPLOYEES where DEPARTMENT_ID IN (50,80,90);