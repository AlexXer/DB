USE AdventureWorks2012
GO

/*
	создайте таблицу dbo.PersonPhone с такой же структурой как Person.PersonPhone,
	не включа€ индексы, ограничени€ и триггеры;
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
	использу€ инструкцию ALTER TABLE, создайте дл€ таблицы dbo.PersonPhone составной первичный ключ
	из полей BusinessEntityID и PhoneNumber;
*/

ALTER TABLE dbo.PersonPhone
ADD PRIMARY KEY (BusinessEntityID, PhoneNumber);



/*
	использу€ инструкцию ALTER TABLE, создайте дл€ таблицы dbo.PersonPhone новое поле PostalCode nvarchar(15) 
	и ограничение дл€ этого пол€, запрещающее заполнение этого пол€ буквами;
*/

ALTER TABLE dbo.PersonPhone
ADD PostalCode NVARCHAR(15) 
CHECK (PATINDEX('%[^A-Za-z]%', PostalCode) <> 0);

/*
	использу€ инструкцию ALTER TABLE, 
	создайте дл€ таблицы dbo.PersonPhone ограничение DEFAULT дл€ пол€ PostalCode, задайте значение по умолчанию С0Т;
*/


ALTER TABLE dbo.PersonPhone
ADD CONSTRAINT df_PostalCode
DEFAULT '0' FOR PostalCode



/* 
	заполните новую таблицу данными из Person.PersonPhone,
	только контактами с типом СCellТ из таблицы PhoneNumberType;
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
	измените тип пол€ PhoneNumberTypeID на bigint и допускающим NULL значени€.
*/


ALTER TABLE dbo.PersonPhone
ALTER COLUMN PhoneNumberTypeID BIGINT NULL