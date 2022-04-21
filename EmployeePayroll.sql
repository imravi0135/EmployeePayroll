------------UC1-CreateDatabase Payroll_service----------
Create DataBase Payroll_Service
use Payroll_Service

----------UC2-Create Table Emplyee_Payroll-----------
Create table Employee_payroll(
Emp_Id int identity(1,1) not null primary key,
Emp_Name varchar(50),
Salary Bigint,
StartDate Date);

-------UC3-Create Employee PayRoll data as a part of the crud operation------
INSERT INTO Employee_payroll(Emp_Name,SALARY,StartDate) VALUES 
('Kohli',25000,'2022-04-18'),
('Ravi',30000,'2022-03-10'),
('rohit',40000,'2022-04-08'),
('abd',35000,'2022-02-15');

--UC4-Retrieving all data from table--
Select * from Employee_payroll;

--UC 5 Retrieve Data for particular employee as well as Emp joined in a particular datarange--
select * from Employee_payroll where Emp_Name='Ravi';
select *From Employee_Payroll where startdate between CAST('2022-02-1' as date) and getdate();

--UC6- Add gender to Employee Payroll table and update the rows to retrive the correct gender
Alter Table Employee_payroll add Gender varchar(1);
Update Employee_payroll set Gender='M' where Emp_Id In (1,2,3);
Update Employee_payroll set Gender='F' where Emp_Id In (4);

-------UC7-- find sum, average, min, max and number of male and female employees--------
select sum(Salary) as sumsalary,Gender from Employee_payroll group by Gender;
select avg(Salary) as avgsalary,Gender from Employee_payroll group by Gender; 
select max(Salary) as maxsalary,Gender from Employee_payroll group by Gender; 
select min(Salary) as minsalary,Gender from Employee_payroll group by Gender; 
select count(Emp_Name) as EmployeeCount,Gender from employee_payroll group by Gender;  







