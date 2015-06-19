
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 06/07/2015 01:12:39
-- Generated from EDMX file: D:\Prpgrams\C#\EadProject\EadProject\Models\my.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [service];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_Order_ToTable]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Order] DROP CONSTRAINT [FK_Order_ToTable];
GO
IF OBJECT_ID(N'[dbo].[FK_Order_ToTable_1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Order] DROP CONSTRAINT [FK_Order_ToTable_1];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Accessories]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Accessories];
GO
IF OBJECT_ID(N'[dbo].[Clohtes]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Clohtes];
GO
IF OBJECT_ID(N'[dbo].[Order]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Order];
GO
IF OBJECT_ID(N'[dbo].[Product]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Product];
GO
IF OBJECT_ID(N'[dbo].[Shoes]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Shoes];
GO
IF OBJECT_ID(N'[dbo].[User]', 'U') IS NOT NULL
    DROP TABLE [dbo].[User];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Orders'
CREATE TABLE [dbo].[Orders] (
    [Id] int  NOT NULL,
    [PId] int  NULL,
    [PQuantity] varchar(50)  NULL,
    [CID] int  NULL,
    [PPrice] int  NULL
);
GO

-- Creating table 'Products'
CREATE TABLE [dbo].[Products] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] varchar(50)  NULL,
    
    [Price] varchar(50)  NULL,
    [Category] varchar(50)  NULL,
    [Images] varchar(50)  NULL
);
GO

-- Creating table 'Users'
CREATE TABLE [dbo].[Users] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [username] varchar(50)  NULL,
    [password] varchar(50)  NULL
);
GO

-- Creating table 'Clohtes'
CREATE TABLE [dbo].[Clohtes] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] varchar(50)  NULL,
    [Price] varchar(50)  NULL,
    [Images] varchar(50)  NULL
);
GO

-- Creating table 'Shoes'
CREATE TABLE [dbo].[Shoes] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] varchar(50)  NULL,
    [Price] varchar(50)  NULL,
    [Images] varchar(50)  NULL
);
GO

-- Creating table 'Accessories'
CREATE TABLE [dbo].[Accessories] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] varchar(50)  NULL,
    [Price] varchar(50)  NULL,
    [Images] varchar(50)  NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Orders'
ALTER TABLE [dbo].[Orders]
ADD CONSTRAINT [PK_Orders]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Products'
ALTER TABLE [dbo].[Products]
ADD CONSTRAINT [PK_Products]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Users'
ALTER TABLE [dbo].[Users]
ADD CONSTRAINT [PK_Users]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Clohtes'
ALTER TABLE [dbo].[Clohtes]
ADD CONSTRAINT [PK_Clohtes]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Shoes'
ALTER TABLE [dbo].[Shoes]
ADD CONSTRAINT [PK_Shoes]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Accessories'
ALTER TABLE [dbo].[Accessories]
ADD CONSTRAINT [PK_Accessories]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [PId] in table 'Orders'
ALTER TABLE [dbo].[Orders]
ADD CONSTRAINT [FK_Order_ToTable]
    FOREIGN KEY ([PId])
    REFERENCES [dbo].[Products]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Order_ToTable'
CREATE INDEX [IX_FK_Order_ToTable]
ON [dbo].[Orders]
    ([PId]);
GO

-- Creating foreign key on [CID] in table 'Orders'
ALTER TABLE [dbo].[Orders]
ADD CONSTRAINT [FK_Order_ToTable_1]
    FOREIGN KEY ([CID])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Order_ToTable_1'
CREATE INDEX [IX_FK_Order_ToTable_1]
ON [dbo].[Orders]
    ([CID]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------