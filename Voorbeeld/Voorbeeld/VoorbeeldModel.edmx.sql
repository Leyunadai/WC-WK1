
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 11/23/2016 12:30:50
-- Generated from EDMX file: C:\Users\Leonardo\Source\Repos\WC-WK1\Voorbeeld\Voorbeeld\VoorbeeldModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [Voorbeeld Database];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------


-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'FilmSet'
CREATE TABLE [dbo].[FilmSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Naam] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'ActeurSet'
CREATE TABLE [dbo].[ActeurSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Voornaam] nvarchar(max)  NOT NULL,
    [Achternaam] nvarchar(max)  NOT NULL,
    [Film_Id] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'FilmSet'
ALTER TABLE [dbo].[FilmSet]
ADD CONSTRAINT [PK_FilmSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'ActeurSet'
ALTER TABLE [dbo].[ActeurSet]
ADD CONSTRAINT [PK_ActeurSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Film_Id] in table 'ActeurSet'
ALTER TABLE [dbo].[ActeurSet]
ADD CONSTRAINT [FK_FilmActeur]
    FOREIGN KEY ([Film_Id])
    REFERENCES [dbo].[FilmSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_FilmActeur'
CREATE INDEX [IX_FK_FilmActeur]
ON [dbo].[ActeurSet]
    ([Film_Id]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------