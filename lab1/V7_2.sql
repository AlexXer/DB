USE AdventureWorks2012
GO

/*
	¬ывести на экран количество отделов, которые вход€т в группу СExecutive General and AdministrationТ.
*/

SELECT COUNT(*) AS DepartmentCount FROM HumanResources.Department  WHERE GroupName = 'Executive General and Administration' 

/*
	¬ывести на экран 5(п€ть) самых молодых сотрудников.
*/


SELECT TOP(5) BusinessEntityID, JobTitle, Gender, BirthDate FROM HumanResources.Employee ORDER BY BirthDate DESC

/*
	¬ывести на экран список сотрудников женского пола, прин€тых на работу во вторник (Tuesday). ¬ поле [LoginID] заменить домен Сadventure-worksТ на Сadventure-works2012Т
*/


SELECT BusinessEntityID,JobTitle,Gender,HireDate,REPLACE(LoginID,'adventure-works', 'adventure-works2012') FROM HumanResources.Employee WHERE Gender = 'F' AND DATEPART(WEEKDAY,HireDate)='2' 