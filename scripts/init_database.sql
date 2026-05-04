/*
==========================================================================
Create Database and Schemas
==========================================================================
Script Purpose:
  This script creates a new database named 'DataWarehouse' after cheching if it already exsits.
  If the database exsists, it is dropped and recreated. Additionally, the script sets up three schemas
  whithin the database: 'bronze', 'silver', 'gold'.

  WATNING:
  Running this script will drop the entire 'DataWarehouse' database if it exists.
  All data in the database will be permanently deleted. Proceed with caution
  and ensure you have proper backups before running this scripts.
*/

USE master;
Go

IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
	ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehouse;
END;

GO
CREATE DATABASE DataWarehouse;

USE DataWarehouse;

GO
CREATE SCHEMA bronze;

GO
CREATE SCHEMA silver;

GO
CREATE SCHEMA gold;
