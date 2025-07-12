--crete table with 4 columns: ID,person name, birth date and phone
IF OBJECT_ID('dbo.persons', 'U') IS NOT NULL
    DROP TABLE dbo.persons;
GO

CREATE TABLE dbo.persons (
    ID INT IDENTITY(1,1) PRIMARY KEY,
    PersonName NVARCHAR(100) NOT NULL,
    BirthDate DATE NULL,
    Phone VARCHAR(20) NULL UNIQUE
);

SELECT * FROM persons

--add email to new table
ALTER TABLE dbo.persons
ADD Email NVARCHAR(255) NULL;

SELECT * FROM persons
