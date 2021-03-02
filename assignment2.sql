--Assignment 2 SQL queries

--1
CREATE TABLE Player (
   pID INT,
   name VARCHAR(40),
   teamName VARCHAR(20),
   PRIMARY KEY(pID)
);

--2
ALTER TABLE Player
ADD age INT;

--3
INSERT INTO Player (pID, name, teamName, age)
VALUES (1, 'Player 1', 'Team A', 23),
       (3, 'Player 3', 'Team B', 28);

INSERT INTO Player (pID, name, teamName)
VALUES (2, 'Player 2', 'Team A'),
       (4, 'Player 4', 'Team B');

--4
DELETE FROM Player WHERE pID = 2;

--5
UPDATE Player
SET age = 25
WHERE age IS NULL;

--6
SELECT COUNT(*), AVG(age)
FROM Player;

--7
DROP TABLE Player;

--8
SELECT BillingCountry, AVG(total)
FROM Invoice
WHERE BillingCountry = 'Brazil';

--9
SELECT BillingCity, BillingCountry, AVG(Total)
FROM Invoice
WHERE BillingCountry = 'Brazil'
GROUP BY BillingCity;

--10
SELECT A.Title, T.AlbumId, COUNT(T.AlbumId) AS numTracks
FROM Track T
JOIN Album A on A.AlbumId = T.AlbumId
GROUP BY T.AlbumId
HAVING numTracks > 20;

--11
SELECT COUNT(InvoiceDate) AS Invoices2010
FROM Invoice
WHERE InvoiceDate LIKE '2010%';

--12
SELECT DISTINCT BillingCountry, COUNT(DISTINCT BillingCity)
FROM Invoice
GROUP BY BillingCountry;

--13



