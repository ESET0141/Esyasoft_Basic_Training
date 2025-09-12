create database Uni;

use Uni;


CREATE TABLE Students2024 (ID INT, Name VARCHAR(50));
CREATE TABLE Students2025 (ID INT, Name VARCHAR(50));

INSERT INTO Students2024 VALUES
(1,'Ravi'),(2,'Asha'),(3,'John'),(4,'Meera'),(5,'Kiran'),
(6,'Divya'),(7,'Lokesh'),(8,'Anita'),(9,'Rahul'),(10,'Sneha');

INSERT INTO Students2025 VALUES
(2,'Asha'),(4,'Meera'),(5,'Kiran'),(11,'Prakash'),(12,'Vidya'),
(13,'Neha'),(14,'Manoj'),(15,'Ramesh'),(16,'Lata'),(17,'Akash');


CREATE TABLE Employees (EmpID INT, Name VARCHAR(50), Department VARCHAR(20));

INSERT INTO Employees VALUES 
(1,'Ananya','HR'),(2,'Ravi','IT'),(3,'Meera','Finance'),
(4,'John','IT'),(5,'Divya','Marketing'),(6,'Sneha','Finance'),
(7,'Lokesh','HR'),(8,'Asha','IT'),(9,'Kiran','Finance'),(10,'Rahul','Sales');



CREATE TABLE Projects (ProjectID INT, Name VARCHAR(50), StartDate DATE, EndDate DATE);
INSERT INTO Projects VALUES 
(1,'Bank App','2025-01-01','2025-03-15'),
(2,'E-Commerce','2025-02-10','2025-05-20');





CREATE TABLE Contacts (ID INT, Name VARCHAR(50), Email VARCHAR(50), Phone VARCHAR(20));
INSERT INTO Contacts VALUES
(1,'Ravi','ravi@gmail.com',NULL),
(2,'Asha',NULL,'9876543210'),
(3,'John',NULL,NULL);


select * from Students2024;


---Task 1---

--Query 1--
select Name from Students2024 
union
select Name from Students2025;

--Query 2--
select Name from Students2024 
union all
select Name from Students2025;

--Task 2--

--Query 1 --
select upper(Name) as upper_case_Names from employees;

select lower(Name) as lower_case_Names from employees;

--Query 2--
select len(Name) as num_of_chars from employees ;

--Query 3--
select substring(name, 1,3) as emps_name from employees;

-- Query 4--
select replace(Department,'Finance', 'Accounts') from employees;

--Query 5--
select concat(name ,' ' ,department) as Name_Department from employees;

-- Task 3--

--Query 1--
select getdate();

--Query 2--
select datediff(day ,'2023-01-01','2023-01-10' ) as Date_Diff;

--Query 3--
select dateadd(day, 10,'2025-01-01' );


-- Task 4--

--Query 1--
select convert(varchar(10), getdate(), 103) as Todays_date;

--Query 2--
select cast(123.234 as int) as int_Num;

--Query 3--
select department, case
when department = 'IT' then 'Tech Team'
when department = 'HR' then 'Human Resources'
else 'others'
end as status
from employees;