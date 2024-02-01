Select JobTitle, Avg(Salary)
from DATAANALYST.dbo.EMP
Join DATAANALYST.dbo.EmpSal
 on EMP.EmployeeID = EmpSal.EmployeeID
  Group by JobTitle 
  Having Avg(Salary) > 45000
  order by avg(Salary)



