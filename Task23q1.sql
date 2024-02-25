# A) Query to display EName and Sal of employees whose salary is greater than or equal to 2200
create database employeeDatabase;
# B) Query to display details of employees who are not getting commission
Use employeeDatabase;
# C) Query to display employee name and salary of employees who don't have salary in the range of 2500 to 4000
create table employeeTable(empno int,ename varchar(25),job varchar(25),mgr int,hiredate DATE,sal DECIMAL(8,2),comm DECIMAL(8,2),deptno int);
# D) Query to display name, job title and salary of employees who don't have a manager
insert into employeeTable values(8369,'SMITH','CLERK',8902,'1990-12-18',800,null,20),(8499,'ANYA','SALESMAN',8698,'1991-02-20',1600,300,30),(8521,'SETH','SALESMAN',8698,'1991-02-22',1250,500,30),(8566,'MAHADEVAN','MANAGER',8839,'1991-04-02',2985,null,20),(8654,'MOMIN','SALESMAN',8698,'1991-09-28',1250,1400,30),(8698,'BINA','MANAGER',8839,'1991-05-01',2850,null,30),(8882,'SHIVANSH','MANAGER',8839,'1991-06-09',2450,null,10),(8888,'SCOTT','ANALYST',8566,'1992-12-09',3000,null,20),(8839,'AMIR','PRESIDENT',null,'1991-11-18',5000,null,10),(8844,'KULDEEP','SALESMAN',8698,'1991-09-08',1500,0,30);
select * from employeeTable;
select ename,sal from employeeTable where sal>=2200;
select * from employeeTable where comm is null;
select ename,sal from employeeTable where sal not between 2500 and 4000;
select ename,job,sal from employeeTable where mgr is null;
# E) Query to display the employee name whose name contains "A" as third alphabet
select ename from employeeTable where ename like '__A%';
# F) Query to display the employee name whose name contains "T" as the last alphabet
select ename from employeeTable where ename like '%T';