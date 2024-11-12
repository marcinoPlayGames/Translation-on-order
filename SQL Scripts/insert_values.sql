USE [Project]
GO

-- Inserting data into the Client table
INSERT INTO [dbo].[Client] ([Name], [Address])
VALUES
    ('Orange Solutions', 'Kraków ul. Wesoła 25'),
    ('Americk Team', 'Warszawa ul. Mazowiecka 21'),
    ('Jorick Musisians', 'Poznań ul. Habela 5');
GO

-- Inserting data into the Languages table
INSERT INTO [dbo].[Languages] ([Language])
VALUES
    ('English'),
    ('German'),
    ('Ukrainian');
GO

-- Inserting data into the Translators table
INSERT INTO [dbo].[Translators] ([LastName], [FirstName], [Address], [Known_languages])
VALUES
    ('Kowalski', 'Jan', 'Kraków ul. Kruka 5', 'English, German, Polish'),
    ('Janicki', 'Kacper', 'Zelczyna ul. Śliczna 12', 'English, Polish'),
    ('Mrancski', 'Marcin', 'Kraków ul. Daleka 10', 'Ukrainian, Polish');
GO

-- Inserting data into the Documents table
INSERT INTO [dbo].[Documents] ([Name], [Translation_language], [Fee], [Client_ID])
VALUES
    ('List of invoices', 'English', '60', '1'),
    ('List of payments', 'English', '85', '1'),
    ('List of parts of device F-12', 'English', '90', '2'),
    ('Rules of the concert in Poznań', 'German', '110', '3');
GO

-- Inserting data into the Processed_documents table
INSERT INTO [dbo].[Processed_documents] ([Document_ID], [Client_ID], [Translator_ID], [Percentage_share])
VALUES
    (1, 1, 1, 34),
    (1, 1, 2, 66),
    (2, 2, 2, 100),
    (3, 3, 1, 100);
GO