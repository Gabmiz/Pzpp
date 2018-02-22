
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 02/22/2018 18:00:02
-- Generated from EDMX file: C:\Users\gabim\Desktop\SIECI\Pzpp\Pzpp\Model.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [Siec];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_ID]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Ping] DROP CONSTRAINT [FK_ID];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Devices]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Devices];
GO
IF OBJECT_ID(N'[dbo].[Ping]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Ping];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Devices'
CREATE TABLE [dbo].[Devices] (
    [ID] uniqueidentifier  NOT NULL,
    [IP] nchar(32)  NULL,
    [Description] nvarchar(max)  NULL
);
GO

-- Creating table 'Ping'
CREATE TABLE [dbo].[Ping] (
    [ID] uniqueidentifier  NOT NULL,
    [Response] bit  NOT NULL,
    [Time] datetimeoffset  NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [ID] in table 'Devices'
ALTER TABLE [dbo].[Devices]
ADD CONSTRAINT [PK_Devices]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Ping'
ALTER TABLE [dbo].[Ping]
ADD CONSTRAINT [PK_Ping]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [ID] in table 'Ping'
ALTER TABLE [dbo].[Ping]
ADD CONSTRAINT [FK_ID]
    FOREIGN KEY ([ID])
    REFERENCES [dbo].[Devices]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------