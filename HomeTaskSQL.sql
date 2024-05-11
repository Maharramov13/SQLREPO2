Create database DrugstoreApp5;

Use DrugstoreApp5;


	Create TABLE Pharmacists(
	Id INT PRIMARY KEY IDENTITY,
	[Name] NVARCHAR (50) NOT NULL,
	SurName NVARCHAR (50) NOT NULL,
	Age int CHECK (Age>18),
	)
	INSERT INTO Pharmacists VALUES('Resul','Resulzade',25),('Asif','Kerimov',33)	

	Create TABLE Drugs(
	Id INT PRIMARY KEY IDENTITY,
	[Name] NVARCHAR(50) NOT NULL,
	Price decimal
	)
	INSERT INTO Drugs VALUES(' Spazmalqon',12),('Bola',0.8)	

  Create TABLE Pharmacies(
	Id INT PRIMARY KEY IDENTITY,
	[Name] NVARCHAR (50) NOT NULL,
	Adress NVARCHAR (100) NOT NULL,
	ContactNumber int ,
	CreationDate datetime DEFAULT CURRENT_TIMESTAMP,
	PharmacistsId INT FOREIGN KEY REFERENCES Pharmacists(Id),
	DrugId INT FOREIGN KEY REFERENCES Drugs(Id)
	)
	INSERT INTO Pharmacies VALUES('Zeytun aptek',' Azerbaijan,Baku...',0123456789,'2000-10-10',1,1),('Avis Aptek','Azerbaijan Baku',0213459876,'2002-02-02',2,2)	


	Create TABLE Owners(
	Id INT PRIMARY KEY IDENTITY,
	Name NVARCHAR (50) NOT NULL,
	SurName NVARCHAR (50) NOT NULL,
    PharmacistId INT FOREIGN KEY REFERENCES Pharmacies(Id)
	)

	INSERT INTO Owners VALUES ('Mahir','Metedzade',2),('Hikmet','Xidirzade',3)



	SELECT * FROM Pharmacists
	SELECT * FROM Drugs
	SELECT * FROM Pharmacies
	SELECT * FROM Owners
  

   Select  Owners.Name as 'Owner name', Pharmacies.Name as 'Pharmacies name', Pharmacies.Adress as 'Pharmacies adress' 
   from Owners  
   INNER JOIN Pharmacies on Owners.PharmacistId=Pharmacies.Id