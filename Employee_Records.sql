
Departments(DepartmentID PK, Name)
Employees(EmployeeID PK, Name, DepartmentID FK)
Salaries(SalaryID PK, EmployeeID FK, Amount)

SELECT Employees.Name, Salaries.Amount
FROM Employees
JOIN Salaries ON Employees.EmployeeID = Salaries.EmployeeID;
