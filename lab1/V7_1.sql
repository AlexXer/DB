/*
	Ќапишите запрос на создание новой базы данных 
	использу€ инструкцию CREATE DATABASE
*/
CREATE DATABASE Kherman_Alex;
GO

USE Kherman_Alex;
GO

/*
	—оздайте новую схему с помощью инструкции CREATE SCHEMA
*/
CREATE SCHEMA sales;
GO

CREATE SCHEMA persons;
GO

/*
	—оздайте новую таблицу в схеме sales с именем Orders, 
	содержащей одно поле OrderNum, тип данных которого INT
*/
CREATE TABLE sales.Orders 
	(
		OrderNum INT NULL
	);
GO

/*
	—оздайте бэкап базы данных 
	использу€ инструкцию BACKUP DATABASE и 
	сохраните его в файловой системе.
*/
BACKUP DATABASE Kherman_Alex
TO DISK = 'D:\Kherman_Alex.bak';
GO  

/*
	”далите базу данных использу€ инструкцию DROP DATABASE.
*/



DROP DATABASE Kherman_Alex;
GO

/*
	¬осстановите базу данных из сохраненного бэкапа 
	использу€ инструкцию RESTORE DATABASE.
*/


RESTORE DATABASE Kherman_Alex
FROM DISK = 'D:\Kherman_Alex.bak';
GO

