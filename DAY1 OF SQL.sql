USE NANI;
create table department(DeptId int Primary Key,DeptName varchar(20));
INSERT INTO department VALUES(1,"HR"),(2,"IT"),(3,"SALES");
CREATE TABLE employees(empid int primary key,empname varchar(20),Deptid int,salary int,hireDate date,Foreign key(Deptid) references department(Deptid));
INSERT INTO employees values(101,'john',1,50000,'2018-02-12'),(102,'alice',2,60000,'2019-07-10'),(103,'bob',1,55000,'2020-05-05'),(104,'carol',3,45000,'2017-09-20');
-- DISPLAY ALL RECORDS FROM EMPLOYESS --
select * from employees;
-- DISPLAY ONLY EMPNAME AND SALARY --
select empname,salary from employees; 
-- EMPLOYEES BELONGS TO 'IT' DEPT --
select * from employees join department on employees.Deptid=department.DeptId where DeptName='IT';
-- EMPLOYEES SALARY > 50000 --
select * from employees where salary>50000;
-- EMPLOYEES HIRED BEFORE 2020-01-01 --
select * from employees where hireDate<'2020-01-01';
-- EMPLOYEES IN DESC ORDER BY SALARY --
select * from employees order by salary desc;
-- COUNT NO:0F EMPLOYEES --
select count(*) as count_of_total_employees from employees;
-- AVERAGE SALARY OF ALL EMPLOYEES --
select avg(salary) from employees;
-- MAX SALARY IN EACH DEPARTMENT --
select DeptName,max(salary) from employees join department on employees.deptid=department.DeptId group by DeptName;
-- DEPARTMENTS HAVING MORE THAN ONE EMPLOYEE --
select DeptName,count(empid) from employees join department on employees.deptid=department.DeptId group by DeptName having count(empid)>1;

