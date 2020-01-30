
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 01/30/2020 21:13:59
-- Generated from EDMX file: D:\C#\Projects\ResumeSite\ResumeSite\ModelDB.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [dbmysite];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_CategoriesTexts]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TextsSet] DROP CONSTRAINT [FK_CategoriesTexts];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[TextsSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TextsSet];
GO
IF OBJECT_ID(N'[dbo].[CategoriesSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CategoriesSet];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'TextsSet'
CREATE TABLE [dbo].[TextsSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Content] nvarchar(max)  NOT NULL,
    [CategoriesId] int  NOT NULL
);
GO

-- Creating table 'CategoriesSet'
CREATE TABLE [dbo].[CategoriesSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Category] nvarchar(max)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'TextsSet'
ALTER TABLE [dbo].[TextsSet]
ADD CONSTRAINT [PK_TextsSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'CategoriesSet'
ALTER TABLE [dbo].[CategoriesSet]
ADD CONSTRAINT [PK_CategoriesSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [CategoriesId] in table 'TextsSet'
ALTER TABLE [dbo].[TextsSet]
ADD CONSTRAINT [FK_CategoriesTexts]
    FOREIGN KEY ([CategoriesId])
    REFERENCES [dbo].[CategoriesSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CategoriesTexts'
CREATE INDEX [IX_FK_CategoriesTexts]
ON [dbo].[TextsSet]
    ([CategoriesId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------