SELECT FIRST_NAME FROM EMPLOYEES;
SELECT distinct FIRST_NAME FROM EMPLOYEES;
SELECT distinct DEPARTMENT_ID FROM EMPLOYEES;--tekrarlanan verileri silerek getirir
SELECT * FROM EMPLOYEES where FIRST_NAME  <> 'Valli' ORDER BY FIRST_NAME DESC ;
SELECT * FROM EMPLOYEES where (EMPLOYEE_ID>150 and EMPLOYEE_ID<200)  and FIRST_NAME ='William';
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
SELECT FIRST_NAME,LENGTH(FIRST_NAME) FROM EMPLOYEES; --value nin uzunlugunu verir
SELECT REPLACE(FIRST_NAME,'e','E') FROM EMPLOYEES; --value de verilen değerleri değiştirir
SELECT FIRST_NAME,SUBSTR(FIRST_NAME,2,4) FROM EMPLOYEES; --alt string oluşturur
SELECT FIRST_NAME,SUBSTR(FIRST_NAME,LENGTH(FIRST_NAME)-1,LENGTH(FIRST_NAME)+2) FROM EMPLOYEES;
--son iki farfini alır
SELECT JOB_ID, COUNT(SALARY) FROM EMPLOYEES GROUP BY JOB_ID;
SELECT JOB_ID,count(JOB_ID) over () FROM EMPLOYEES WHERE JOB_ID='IT_PROG';--kayıt sayısını verir

CREATE VIEW Tam_Adı as SELECT first_name || ' ' || last_name as TamAd From employees;--yeni bir sanal tablo oluşturuyor
Select * From TAM_ADI;


SELECT LOWER(EMAIL) || '@cybertec.com' AS Email From EMPLOYEES;

CREATE Or REPLACE VIEW TAM_ADI as SELECT first_name || ' ' || last_name as TamAd, LOWER(EMAIL) || '@cybertec.com' AS Email From Employees;
/* Sanal bir tabloyu günceller */
SELECT * FROM TAM_ADI;
DROP view TAM_ADI;/* Seçilen sanal tabloyu siler*/

CREATE TABLE Ad_Email( /* yeni bir tablo oluşturur */
  Ad VARCHAR(15) not null ,
  Soy_ad VARCHAR(15) not null,
  EMail VARCHAR(20) not null
);

insert into AD_EMAIL (Ad,Soy_ad,EMail) values ('Murat','Avcı','mavci');
insert into AD_EMAIL (Ad,Soy_ad,EMail) values ('selim','Avcı','savcı');
insert into AD_EMAIL (Ad,Soy_ad,EMail) values ('semra','Avcı','savcı');
insert into AD_EMAIL (Ad,Soy_ad,EMail) values ('esra','Avcı','eavcı');


SELECT * FROM AD_EMAIL;

CREATE TABLE address(

                        address_id Integer PRIMARY KEY,
                        address VARCHAR(50) NOT NULL,
                        phone Integer NOT NULL

);
INSERT INTO address (address_id, address, phone) VALUES (5,  '1913 Hanoi Way'  ,  28303384);
INSERT INTO address (address_id, address, phone) VALUES (7,  '692 Joliet Street'  ,  44847719);
INSERT INTO address (address_id, address, phone) VALUES (8,  '1566 Inegl Manor'  ,  70581400);
INSERT INTO address (address_id, address, phone) VALUES (10,  '1795 Santiago '  ,  86045262);
INSERT INTO address (address_id, address, phone) VALUES (11,  '900 Santiago '  ,  16571220);

CREATE TABLE customer(

                         customer_id Integer PRIMARY KEY,
                         first_name VARCHAR(50) NOT NULL,
                         last_name VARCHAR(50)NOT NULL,
                         address_id Integer REFERENCES address(address_id)

);
INSERT INTO customer (customer_id, first_name, last_name, address_id) VALUES (1, 'Mary' ,  'Smith',  5);
INSERT INTO customer (customer_id, first_name, last_name, address_id) VALUES (2,  'Patricia' ,  'Johnson' ,  NULl);
INSERT INTO customer (customer_id, first_name, last_name, address_id) VALUES (3,  'Linda' ,  'Williams' ,  7);
INSERT INTO customer (customer_id, first_name, last_name, address_id) VALUES (4, 'Barbara' ,  'Jones' , 8);
INSERT INTO customer (customer_id, first_name, last_name, address_id) VALUES (5,  'Elizabeth' ,  'Brown' ,  NULL);

COMMIT WORK ;

SELECT * FROM ADDRESS;
SELECT * From CUSTOMER;

