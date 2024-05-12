Create Database DemoAppNew
Use DemoAppNew


CREATE TABLE People (
    Id INT PRIMARY KEY Identity,
    Name VARCHAR(50),
    Surname VARCHAR(50),
    PhoneNumber VARCHAR(50),
    Email VARCHAR(50) Unique,
    Age INT,
    Gender VARCHAR(50),
    HasCitizenship bit
)

-- 3. Countries table yaradılması
CREATE TABLE Countries (
    Id INT PRIMARY KEY Identity,
    Name VARCHAR(50),
    Area DECIMAL(10,2)
)


CREATE TABLE  Cities (
    Id INT PRIMARY KEY Identity,
    Name VARCHAR(50),
    Area DECIMAL(10,2),
	CountryId int foreign key References Countries(Id)
)

-- 5. Insert statements for demonstration purposes
INSERT INTO Countries
VALUES
('USA', 9833516.00),
('Canada', 9976140.00),
('Italia', 7692024.00),
('Iraq',4563121.12 )
Select*from Countries

INSERT INTO Cities
VALUES
('New York', 468.9,1),
('Toronto', 630.2,2),
('Roma', 205.8,3),
('Kerkuk',154.5,4)



INSERT INTO People(Name, Surname, PhoneNumber, Email, Age, Gender, HasCitizenship) 
VALUES
('John', 'Doe', '123456789', 'johndoe@gmail.com', 30, 'Male', 1),
('Alice', 'Johnson', '555123456', 'alice.johnson@example.com', 40, 'Female', 0),
('Andrea', 'Pirlo', '987654321', 'Pirlo85@gmail.com', 38, 'Male', 1),
('Turan','Turkman','4289383385','turkman1@gmail.com',27,'Male',1)



SELECT p.Name, p.Surname, c.Name AS Country, ci.Name AS City
FROM People p
INNER JOIN Countries c ON p.Id = c.Id
INNER JOIN Cities ci ON p.Id = ci.Id;


SELECT * FROM Countries ORDER BY Area;


SELECT * FROM Cities ORDER BY Name DESC;
SELECT COUNT(*) AS NumCountries FROM Countries WHERE Area > 20000;

SELECT MAX(Area) AS MaxArea  FROM Countries WHERE Name LIKE 'İ%';


SELECT Name FROM Countries
UNION
SELECT Name FROM Cities;

SELECT ci.Name AS City, COUNT(*) AS NumPersons
FROM People p
INNER JOIN Cities ci ON p.Id = ci.Id
GROUP BY ci.Name;

SELECT ci.Name AS City, COUNT(*) AS NumPersons
FROM People p
INNER JOIN Cities ci ON p.Id = ci.Id
GROUP BY ci.Name
HAVING COUNT(*) > 5;
