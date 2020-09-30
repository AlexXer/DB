/*
	�������� ������ �� �������� ����� ���� ������ 
	��������� ���������� CREATE DATABASE
*/
CREATE DATABASE Kherman_Alex;
GO

USE Kherman_Alex;
GO

/*
	�������� ����� ����� � ������� ���������� CREATE SCHEMA
*/
CREATE SCHEMA sales;
GO

CREATE SCHEMA persons;
GO

/*
	�������� ����� ������� � ����� sales � ������ Orders, 
	���������� ���� ���� OrderNum, ��� ������ �������� INT
*/
CREATE TABLE sales.Orders 
	(
		OrderNum INT NULL
	);
GO

/*
	�������� ����� ���� ������ 
	��������� ���������� BACKUP DATABASE � 
	��������� ��� � �������� �������.
*/
BACKUP DATABASE Kherman_Alex
TO DISK = 'D:\Kherman_Alex.bak';
GO  

/*
	������� ���� ������ ��������� ���������� DROP DATABASE.
*/



DROP DATABASE Kherman_Alex;
GO

/*
	������������ ���� ������ �� ������������ ������ 
	��������� ���������� RESTORE DATABASE.
*/


RESTORE DATABASE Kherman_Alex
FROM DISK = 'D:\Kherman_Alex.bak';
GO

