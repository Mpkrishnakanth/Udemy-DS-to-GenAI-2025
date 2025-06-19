create database KP;

use KP;

create table employees(
firstname VARCHAR(50),
lastname VARCHAR(50),
title VARCHAR(50),
age INT,
salary INT
);

SELECT * FROM employees;

show tables;

alter table employees
ADD middlename varchar(30);

alter table employees
DROP middlename;

DROP table empinfo;

create table empinfo(
first_name varchar(30),
last_name varchar(30),
id int not null,
age int,
city varchar(30),
state varchar(30),
primary key (id)
);

INSERT INTO empinfo VALUES ('Preethi', 'Kotturu', 612, 23, 'Nandyal', 'AP');
INSERT INTO empinfo VALUES ('Krishna Kanth', 'MP', 241, 25, 'Vizag', 'AP');
INSERT INTO empinfo VALUES ('Rajini Kanth', 'MP', 269, 29, 'Hyderabad', 'Telangana');
INSERT INTO empinfo VALUES ('Bhavesh', 'Kotturu', 234, 17, 'Nandyal', 'AP');
INSERT INTO empinfo VALUES ('Krishna', 'Kotturu', 012, 46, 'Nandyal', 'AP');
INSERT INTO empinfo VALUES ('Lakshmi Kanth', 'Kotturu', 014, 52, 'Nandyal', 'AP');
INSERT INTO empinfo VALUES ('Sugunakara Rao', 'MP', 562, 56, 'Vizag', 'AP');
INSERT INTO empinfo VALUES ('Sujatha', 'MP', 609, 49, 'Vizag', 'AP');

SELECT * FROM empinfo WHERE city = 'Nandyal';
SELECT * FROM empinfo WHERE city IN ('Hyderabad', 'Vizag');
SELECT * FROM empinfo WHERE city LIKE 'Na%';
SELECT * FROM empinfo WHERE (age > 16) and (age < 26);
SELECT * from empinfo;

drop table employees;

CREATE table employees(
firstname varchar(50),
lastname varchar(50),
emppos varchar(50),
age int,
salary float);

INSERT into employees VALUES ('Jonie','Weber', 'Secretary', 28, 19500.00);
INSERT into employees VALUES ('Potsy', 'Weber', 'Programmer', 32, 45300.00);
INSERT into employees VALUES ('Dirk','Smith', 'Programmer II', 45, 75020.00);

INSERT into employees VALUES ('Preethi','Kotturu','Developer', 23, 49000.00);
INSERT into employees VALUES ('Krishna','Kanth', 'Data Analyst', 25, 30500.00);
INSERT into employees VALUES ('Rajini','Kanth','Auditor', 29, 48000.00);
INSERT into employees VALUES ('Bhavesh','Kotturu','Jr Developer', 17, 20500.00);
INSERT into employees VALUES ('Ajith','Patnaik','President', 32, 39500.00);

SELECT * FROM employees;
SELECT * from employees where salary > 30000;
SELECT firstname, lastname from employees where age < 30;
SELECT firstname, lastname, salary from employees where emppos = 'Programmer';
SELECT * from employees where lastname like '%ebe%';
SELECT firstname from employees where firstname = 'Potsy';
SELECT * from employees where age > 80;
SELECT * from employees where lastname like '%ith';

SET SQL_SAFE_UPDATES = 0;

UPDATE employees
SET firstname = 'Weber', lastname = 'Williams'
WHERE firstname = 'Jonie' and lastname = 'Weber';

update employees
SET age = age+1 
where firstname = 'Dirk' and lastname = 'Smith'; 

update employees
SET emppos = 'Administrative Assistant'
where emppos = 'Secretary';

update employees
SET salary = salary+3500
where salary < 30000;

update employees
SET salary = salary+4500
where salary > 33500;

update employees
SET emppos = 'Programmer III'
where emppos = 'Programmer II';

update employees
SET emppos = 'Programmer II'
where emppos = 'Programmer';

delete from employees
where firstname = 'Ajith';