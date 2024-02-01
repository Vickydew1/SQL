--Select * From DATAANALYST.dbo.EMP;

With Employee as 

(Select FirstName, LastName, Gender, Salary,
COUNT(Gender) Over (partition by gender) as TotalGender,
Avg(Salary) Over (partition by Gender) as AvgSalary
From DATAANALYST.dbo.Emp
Join DATAANALYST.dbo.EmpSal
On EMP.EmployeeID = EmpSal.EmployeeID
Where Salary > '45000'
)
Select FirstName,LastName,  AvgSalary from Employee;