Create Table #temp_Employee (
	EmployeeID int,
	JobTitle varchar(100),
	Salary int
	)

Select * From #temp_Employee;


Insert Into #temp_Employee values (
'1001', 'HR', '45000'
)


Insert Into #temp_Employee
Select * From DATAANALYST.dbo.EmpSal


Drop table if exists #temp_Employee2
Create Table #temp_Employee2 (
JobTitle varchar(20),
EmployeePerJob int,
AvgAge int,
AvgSalary int
)

Insert into #temp_Employee2 
Select JobTitle, COUNT(JobTitle), Avg(Age), Avg(Salary)
From DATAANALYST.dbo.EMP emp
join DATAANALYST.dbo.EmpSal Sal
on emp.EmployeeID = Sal.EmployeeID
Group by JobTitle

Select * from #temp_Employee2

S