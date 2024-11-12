# Translation-on-order
SQL Database project for company translations on order

This repository contains the SQL database schema for a translation management system. The database tracks information about:
  •	Documents: Translated documents, including name, translation language, fee, and client information.
  •	Translators: Professional translators with their contact information and languages they specialize in.
  •	Clients: Clients who request translations, including their contact information.
  •	Processed Documents: Information about currently implemented document translations, including document ID, client ID, translator ID, and percentage share of the translation.
  •	Languages: A list of available translation languages.
  
Database Schema

The database consists of the following tables:
  •	Documents:
    o	Document_ID (int, primary key)
    o	Name (varchar)
    o	Translation_language (varchar)
    o	Fee (decimal)
    o	Client_ID (int, foreign key)
  •	Translators:
    o	Translator_ID (int, primary key)
    o	Last_name (varchar)
    o	First_name (varchar)
    o	Address (varchar)
    o	Known_languages (varchar)
  •	Clients:
    o	Client_ID (int, primary key)
    o	Name (varchar)
    o	Address (varchar)
  •	Processed_documents:
    o	Document_ID (int, foreign key)
    o	Client_ID (int, foreign key)
    o	Translator_ID (int, foreign key)
    o	Percentage_share (int)
  •	Languages:
    o	Languages (varchar, primary key)
    
Usage

This database can be used to manage translation orders and track the progress of translations.

Note: This README provides a basic description of the database schema. For detailed information on constraints, relationships, and data types, please refer to the SQL scripts and documentation provided in the repository.

License

This project is licensed under the APGL-3.0 License. See the LICENSE file for more information.
