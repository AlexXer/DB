USE AdventureWorks2012
GO

/*
	�������� ������� dbo.PersonPhone � ����� �� ���������� ��� Person.PersonPhone,
	�� ������� �������, ����������� � ��������;
*/

CREATE TABLE dbo.PersonPhone
(
	BusinessEntityID INT NOT NULL,
	PhoneNumber NVARCHAR(25) NOT NULL,
	PhoneNumberTypeID INT,
	ModifiedDate DATETIME
);
GO
/*
	��������� ���������� ALTER TABLE, �������� ��� ������� dbo.PersonPhone ��������� ��������� ����
	�� ����� BusinessEntityID � PhoneNumber;
*/

ALTER TABLE dbo.PersonPhone
ADD PRIMARY KEY (BusinessEntityID, PhoneNumber);



/*
	��������� ���������� ALTER TABLE, �������� ��� ������� dbo.PersonPhone ����� ���� PostalCode nvarchar(15) 
	� ����������� ��� ����� ����, ����������� ���������� ����� ���� �������;
*/

ALTER TABLE dbo.PersonPhone
ADD PostalCode NVARCHAR(15) 
CHECK (PATINDEX('%[^A-Za-z]%', PostalCode) <> 0);

/*
	��������� ���������� ALTER TABLE, 
	�������� ��� ������� dbo.PersonPhone ����������� DEFAULT ��� ���� PostalCode, ������� �������� �� ��������� �0�;
*/


ALTER TABLE dbo.PersonPhone
ADD CONSTRAINT df_PostalCode
DEFAULT '0' FOR PostalCode



/* 
	��������� ����� ������� ������� �� Person.PersonPhone,
	������ ���������� � ����� �Cell� �� ������� PhoneNumberType;
*/
INSERT INTO dbo.PersonPhone(BusinessEntityID,PhoneNumber,PhoneNumberTypeID, ModifiedDate)
SELECT
	Person.PersonPhone.BusinessEntityID,
	Person.PersonPhone.PhoneNumber,
	Person.PersonPhone.PhoneNumberTypeID,
	Person.PersonPhone.ModifiedDate
FROM Person.PersonPhone
JOIN Person.PhoneNumberType
ON Person.PersonPhone.PhoneNumberTypeID = Person.PhoneNumberType.PhoneNumberTypeID
WHERE Person.PhoneNumberType.Name = 'Cell';
GO

SELECT * 
FROM dbo.PersonPhone



/*
	�������� ��� ���� PhoneNumberTypeID �� bigint � ����������� NULL ��������.
*/


ALTER TABLE dbo.PersonPhone
ALTER COLUMN PhoneNumberTypeID BIGINT NULL