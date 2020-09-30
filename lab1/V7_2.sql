USE AdventureWorks2012
GO

/*
	������� �� ����� ���������� �������, ������� ������ � ������ �Executive General and Administration�.
*/

SELECT COUNT(*) AS DepartmentCount FROM HumanResources.Department  WHERE GroupName = 'Executive General and Administration' 

/*
	������� �� ����� 5(����) ����� ������� �����������.
*/


SELECT TOP(5) BusinessEntityID, JobTitle, Gender, BirthDate FROM HumanResources.Employee ORDER BY BirthDate DESC

/*
	������� �� ����� ������ ����������� �������� ����, �������� �� ������ �� ������� (Tuesday). � ���� [LoginID] �������� ����� �adventure-works� �� �adventure-works2012�
*/


SELECT BusinessEntityID,JobTitle,Gender,HireDate,REPLACE(LoginID,'adventure-works', 'adventure-works2012') FROM HumanResources.Employee WHERE Gender = 'F' AND DATEPART(WEEKDAY,HireDate)='2' 