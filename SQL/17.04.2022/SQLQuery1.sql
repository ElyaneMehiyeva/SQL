CREATE DATABASE Football

USE Football

CREATE TABLE Stadions(
  Id INT PRIMARY KEY IDENTITY,
  Name NVARCHAR(25) NOT NULL UNIQUE,
  HourPrice DECIMAL(18,2) NOT NULL,
  Capacity INT NOT NULL
)
CREATE TABLE Users (
  Id INT PRIMARY KEY IDENTITY,
  FullName NVARCHAR(100) NOT NULL CHECK (LEN(FullName)>5),
  Email NVARCHAR(100) NOT NULL CHECK (LEN(Email)>5)
)

CREATE TABLE Reservations(
  Id INT PRIMARY KEY IDENTITY,
  StadionId INT FOREIGN KEY REFERENCES Stadions(Id),
  UserId INT FOREIGN KEY REFERENCES Users(Id),
  StartDate DATETIME2 NOT NULL,
  EndDate DATETIME2 NOT NULL
)

INSERT INTO Users 
VALUES ('Aliye Ramazanli','aliye567@gmail.com')



INSERT INTO Stadions 
VALUES ('Sinaq Stadionu',50,10)


INSERT INTO Reservations
VALUES (1,1,'2022-04-17','2022-04-18')
INSERT INTO Reservations
VALUES (1,1,'2022-04-19','2022-04-20')


SELECT * FROM Users

SELECT * FROM Stadions WHERE Id= 1

SELECT * FROM Reservations WHERE StadionId = 1

DELETE FROM Reservations WHERE Id = 1