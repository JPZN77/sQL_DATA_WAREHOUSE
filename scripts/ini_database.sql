--create database 'datawarehouse'
USE master;
GO
--Drop and recreate the 'Datawarehouse'  database
IF EXIST (SELECT 1 FROM sys.databases WHERE name= 'Datawarehouse')
BEGIN
  ALTER DATABASE Datawarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
  DROP DATABASE Datawarehouse;
END;
CREATE DATABASE Datawarehouse;
GO
USE Datawarehouse;

GO

CREATE SCHEMA bronze;

GO

CREATE SCHEMA silver;

GO


CREATE SCHEMA gold;

GO
