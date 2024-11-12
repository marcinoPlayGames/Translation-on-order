-- Check if the database "Project" exists. If not, create it.
IF OBJECT_ID('Project') IS NULL
BEGIN
    CREATE DATABASE Project
END
GO

-- Use the "Project" database

USE [Project]
GO

/****** Object:  Table [dbo].[Client]    Script Date: 23.01.2023 18:55:40 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Client](
	[Name] [nchar](50) NOT NULL,
	[Address] [nchar](50) NOT NULL,
	[Client_ID] [int] NOT NULL identity(1, 1) UNIQUE,
	primary key (Client_ID)
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Languages](
	[Language] [nchar](30) NOT NULL UNIQUE,
	primary key (Language)
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Translators](
	[LastName] [nchar](40) NOT NULL,
	[FirstName] [nchar](30) NOT NULL,
	[Address] [nchar](50) NOT NULL,
	[Known_languages] [nchar](40) NOT NULL,
	[Translator_ID] [int] NOT NULL identity(1, 1) UNIQUE,
	primary key (Translator_ID)
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Documents](
	[Name] [nchar](50) NOT NULL,
	[Translation_language] [nchar](30) NOT NULL,
	[Fee] [money] NOT NULL,
	[Document_ID] [int] NOT NULL identity(1, 1) UNIQUE,
	[Client_ID] [int] NOT NULL,
	primary key (Document_ID),
	foreign key (Client_ID) references Client (Client_ID) on delete no action on update cascade,
	foreign key (Translation_language) references Languages (Language) on delete no action
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Processed_documents](
    [Document_ID] [int] NOT NULL,
    [Client_ID] [int] NOT NULL,
    [Translator_ID] [int] NOT NULL,
    [Percentage_share] [int] NOT NULL CHECK (Percentage_share >= 0 AND Percentage_share <=100),
    FOREIGN KEY (Document_ID) REFERENCES Documents (Document_ID) ON DELETE NO ACTION ON UPDATE CASCADE,
    FOREIGN KEY (Translator_ID) REFERENCES Translators (Translator_ID) ON DELETE NO ACTION,
    FOREIGN KEY (Client_ID) REFERENCES Client (Client_ID) ON DELETE NO ACTION
) ON [PRIMARY]
GO