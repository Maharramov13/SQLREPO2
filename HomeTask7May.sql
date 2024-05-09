CREATE DATABASE DemoApp11
USE DemoApp11
CREATE TABLE Users2(
Id INT  PRIMARY KEY IDENTITY ,
Name nvarchar(50) Not null,
Surname nvarchar(50) Not null,
Email nvarchar(50) Unique,
RegistrationDate DATETIME,
ContactNumber nvarchar(50) default('+994000000000'),
Age int Check(Age>18),
Adress nvarchar(50)
)

CREATE TABLE Categories2(
id INT PRIMARY KEY IDENTITY,
Name nvarchar(50) Not null,
CreatedAt DATETIME  default CURRENT_TIMESTAMP,
IsActive bit  )

INSERT INTO Users2
VALUES
('Hikmet','Xidirzade','Hikmet57@gmail.com','2004-05-23T14:25:10','+994558575757',25,'Azerbaijan,Shamkir'),
('Samid','Agazade','Samid10@gmail.com','2004-05-23T14:25:10','+994777788899',24,'Azerbaijan,Baku'),
('Nurlan','Huseynov','NurlanH2@gmail.com','2004-05-23T14:25:10','+994505501055',30,'Azerbaijan,Lachin')


Select Name , Surname , Email From Users2

INSERT INTO Categories2
VALUES
('Ali','2004-05-23T14:25:10',1),
('Cemil','11/11/12',1),
('Nihad','02/11/12',0),
('Asif','01/07/12',0)
Select Name,IsActive from Categories2


