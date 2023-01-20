DROP TABLE IF EXISTS [dbo].[Miasta]	
DROP TABLE IF EXISTS [dbo].[Wojewodztwa]


CREATE TABLE [dbo].[Wojewodztwa](
	 [Wojewodztwo_ID]	INT PRIMARY KEY IDENTITY (1,1) NOT NULL
	,[Wojewodztwo]		NVARCHAR(50) NULL
	,[DateCreate]		DATE
)

CREATE TABLE [dbo].[Miasta](
	 [Miasto_ID]		INT PRIMARY KEY IDENTITY (1,1) NOT NULL
	,[Miasto]			VARCHAR(50) NULL
	,[ID_Wojewodztwa]	INT NULL
	,CONSTRAINT [FK_Wojewodztwa] FOREIGN KEY ([ID_Wojewodztwa]) REFERENCES [dbo].[Wojewodztwa] ([Wojewodztwo_ID])
)

INSERT INTO Wojewodztwa VALUES ('Dolnoœl¹skie',GETDATE())
INSERT INTO Wojewodztwa VALUES ('Kujawsko-pomorskie',GETDATE())
INSERT INTO Wojewodztwa VALUES ('Lubelskie',GETDATE())
INSERT INTO Wojewodztwa VALUES ('Lubuskie',GETDATE())
INSERT INTO Wojewodztwa VALUES ('£ódzkie',GETDATE())
INSERT INTO Wojewodztwa VALUES ('Ma³opolskie',GETDATE())
INSERT INTO Wojewodztwa VALUES ('Mazowieckie',GETDATE())
INSERT INTO Wojewodztwa VALUES ('Opolskie',GETDATE())
INSERT INTO Wojewodztwa VALUES ('Podkarpackie',GETDATE())
INSERT INTO Wojewodztwa VALUES ('Podlaskie',GETDATE())
INSERT INTO Wojewodztwa VALUES ('Pomorskie',GETDATE())
INSERT INTO Wojewodztwa VALUES ('Œl¹skie',GETDATE())
INSERT INTO Wojewodztwa VALUES ('Œwiêtokrzyskie',GETDATE())
INSERT INTO Wojewodztwa VALUES ('Warmiñsko-mazurskie',GETDATE())
INSERT INTO Wojewodztwa VALUES ('Wielkopolskie',GETDATE())
INSERT INTO Wojewodztwa VALUES ('Zachodniopomorskie',GETDATE())


SELECT * FROM [Wojewodztwa]
SELECT * FROM [Miasta]


DROP TABLE [dbo].[Miasta]
DROP TABLE [dbo].[Wojewodztwa]
