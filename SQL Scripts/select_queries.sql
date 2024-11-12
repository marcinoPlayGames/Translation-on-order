/*

5.1 Query – Translators who know English

Translators who know English

*/

SELECT * FROM Translators WHERE Known_languages LIKE '%English%' ORDER BY Lastname;

/*

5.2 Query – Documents from the client

All documents commissioned by a given client

*/

SELECT D.Name, D.Translation_language, D.Fee, D.Document_ID, D.Client_ID 
FROM Documents AS D 
JOIN Client AS C ON D.Client_ID = C.Client_ID 
WHERE C.Name LIKE '%Americk Team%';

/*

5.3 Query – Documents translated by a given translator

All documents translated by a given translator

*/

SELECT R.Document_ID, R.Client_ID, R.Translator_ID, R.Percentage_share 
FROM Processed_documents AS R 
JOIN Translators AS T ON R.Translator_ID = T.Translator_ID 
WHERE T.Lastname LIKE '%Kowalski%';

/*

5.4 Query – Sum of fees from documents of a given client

Sum of all fees collected from documents from a given client

*/

SELECT SUM(Documents.Fee) as Total_fee 
FROM Documents 
JOIN Client as C ON Documents.Client_ID = C.Client_ID 
WHERE C.Client_ID = 1;

/*

5.5 Query – All documents of a given language

All documents translated into a given language

*/

SELECT * FROM Documents WHERE Translation_language LIKE '%German%';