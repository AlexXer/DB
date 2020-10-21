/*
	Напишите запрос на создание новой базы данных 
	используя инструкцию CREATE DATABASE
*/
CREATE DATABASE Kherman_Alex;
GO

USE Kherman_Alex;
GO

/*
	Создайте новую схему с помощью инструкции CREATE SCHEMA
*/
CREATE SCHEMA sales;
GO

CREATE SCHEMA persons;
GO

/*
	Создайте новую таблицу в схеме sales с именем Orders, 
	содержащей одно поле OrderNum, тип данных которого INT
*/
CREATE TABLE sales.Orders 
	(
		OrderNum INT NULL
	);
GO

/*
	Создайте бэкап базы данных 
	используя инструкцию BACKUP DATABASE и 
	сохраните его в файловой системе.
*/
BACKUP DATABASE Kherman_Alex
TO DISK = 'D:\Kherman_Alex.bak';
GO  

/*
	Удалите базу данных используя инструкцию DROP DATABASE.
*/



DROP DATABASE Kherman_Alex;
GO

/*
	Восстановите базу данных из сохраненного бэкапа 
	используя инструкцию RESTORE DATABASE.
*/


RESTORE DATABASE Kherman_Alex
FROM DISK = 'D:\Kherman_Alex.bak';
GO

