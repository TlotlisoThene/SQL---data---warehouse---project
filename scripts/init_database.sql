/*
Create Database and Schemas
Script purpose:
    This script creates a nwe database name 'DataWarehouse' after checking if it already exists.
    If the database exists, it is dropped and recreated. Additionally, the script sets up threee schemas
    within the database: 'bronze', 'silver', and 'gold'.

WARNING:
    Running this script will drop the entire 'DataWarehouse' database if it exists.
    All data in the database will permanently deleted. Proceed with caution
    and ensure you have proper backups before running this script.
*/

USE master;
GO
-- Drop and recreate the 'Datawarehouse' database
IF EXIST (SELECT 1 FROM sys.databases WHERE name = 'Datawarehouse')
BEGIN
  ALTER DATABASE Datawarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
  DROP DATABASE Datawarehouse;
END;

-- Craete 'DataWarehouse' database
CREATE DATABASE DataWarehouse;
GO
USE DataWarehouse;
GO

  -- Create Schemas
CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO
