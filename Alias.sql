--Select FirstName +' ' + LastName As Fullname
--from DATAANALYST.dbo.EMP;

--Select Avg(Age) As Average
--From DATAANALYST.dbo.EMP

--Select a.EmployeeID, b.EmployeeID, c.EmployeeID, a.FirstName, b.JobTitle,c.Age
--from DATAANALYST.dbo.EMP as a
--left Join DATAANALYST.dbo.EmpSal As b
--on a.EmployeeID = b.EmployeeID
--left join DATAANALYST.dbo.WareHouseEMP as c
--on a.EmployeeID= c.EmployeeID;


Select Demo.EmployeeID, Demo.FirstName, Demo.FirstName,
	Sal.JobTitle, Demo.Age
From DATAANALYST.dbo.EMP Demo
Left join DATAANALYST.dbo.EmpSal Sal
On Demo.EmployeeID = Sal.EmployeeID
left  join DATAANALYST.dbo.WareHouseEMP Ware
on Demo.EmployeeID = Ware.EmployeeID;