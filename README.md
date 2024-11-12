# Translation-on-order
**SQL Database project for company translations on order**

This repository contains the SQL database schema for a translation management system. The database tracks information about:
  *	Documents: Translated documents, including name, translation language, fee, and client information.
  *	Translators: Professional translators with their contact information and languages they specialize in.
  *	Clients: Clients who request translations, including their contact information.
  *	Processed Documents: Information about currently implemented document translations, including document ID, client ID, translator ID, and percentage share of the translation.
  *	Languages: A list of available translation languages.
  
**Database Schema**

The database consists of the following tables:
  *	**Documents**:
    *	Document_ID (int, primary key)
    *	Name (varchar)
    *	Translation_language (varchar)
    *	Fee (decimal)
    *	Client_ID (int, foreign key)
  *	**Translators**:
    *	Translator_ID (int, primary key)
    *	Last_name (varchar)
    *	First_name (varchar)
    *	Address (varchar)
    *	Known_languages (varchar)
  *	**Clients**:
    *	Client_ID (int, primary key)
    *	Name (varchar)
    *	Address (varchar)
  *	**Processed_documents**:
    *	Document_ID (int, foreign key)
    *	Client_ID (int, foreign key)
    *	Translator_ID (int, foreign key)
    *	Percentage_share (int)
  *	**Languages**:
    *	Languages (varchar, primary key)
    
**Usage**

This database can be used to manage translation orders and track the progress of translations.

Note: This README provides a basic description of the database schema. For detailed information on constraints, relationships, and data types, please refer to the SQL scripts and documentation provided in the repository.

**License**

This project is licensed under the APGL-3.0 License. See the LICENSE file for more information.
