
--Select * From DATAANALYST.dbo.EMP;

--Select * From DATAANALYST.dbo.EmpSal;

--Select FirstName, LastName,Gender,Salary,
--COUNT(Gender) Over (Partition By Gender ) as TotalGender
--From DATAANALYST.dbo.EMP dem
--Join DATAANALYST.dbo.EmpSal sal
--on dem.EmployeeID = sal.EmployeeID;

Select Age,Gender, COUNT(Gender)
From DATAANALYST.dbo.EMP dem
Join DATAANALYST.dbo.EmpSal sal
on dem.EmployeeID = sal.EmployeeID
Group by Gender, Age;