CREATE TABLE department(DeptId int Primary Key,DeptName varchar(20));
INSERT INTO department VALUES(1,"HR"),(2,"IT"),(3,"SALES");
CREATE TABLE employees(empid int primary key,empname varchar(20),Deptid int,salary int,hireDate date,Foreign key(Deptid) references department(Deptid));
INSERT INTO employees values(101,'john',1,50000,'2018-02-12'),(102,'alice',2,60000,'2019-07-10'),(103,'bob',1,55000,'2020-05-05'),(104,'carol',3,45000,'2017-09-20');
-- EMPLOYEES NAME START WITH A --
SELECT * from employees where empname LIKE 'A%'; 
-- EMPLOYEES SALARY B/W 45000 & 60000 --
SELECT * from employees where salary >= 45000 AND salary <= 60000;
SELECT * from employees where salary BETWEEN 45000 AND 60000;
-- DEPARTMENT NAME OF EACH EMPLOYEE --
SELECT DeptName,empname from employees JOIN department on employees.deptid = department.DeptId;
-- NO:OF EMPLOYEES IN EACH DEPATMENT --
SELECT deptname ,count(empid) AS no_of_employees_in_each_department FROM department JOIN employees ON department.deptid = employees.deptid group by deptname;
-- EMPLOYEES WITHOUT DEPARTMENT(LEFT JOIN) --
SELECT empname,deptname from employees LEFT JOIN department ON employees.deptid = department.deptid;