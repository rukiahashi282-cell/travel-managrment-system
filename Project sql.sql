CREATE database Travelmanagementsystem;
CREATE TABLE Userss (
    UserId INT IDENTITY(1,1) PRIMARY KEY,
    FullName NVARCHAR(100) NOT NULL,
    Email NVARCHAR(100) UNIQUE NOT NULL,
    Password NVARCHAR(255) NOT NULL,
    Phone NVARCHAR(20),
    Role NVARCHAR(20)
);
INSERT INTO Userss(FullName, Email, Password, Phone, Role)
VALUES
('Ali Hassan', 'ali@gmail.com', '123456', '0612345678', 'Customer');
CREATE TABLE Destinations (
    DestinationId INT IDENTITY(1,1) PRIMARY KEY,
    Country NVARCHAR(100),
    City NVARCHAR(100),
    Description NVARCHAR(MAX),
    Price DECIMAL(10,2)
);

INSERT INTO Destinations(Country, City, Description, Price)
VALUES
('Turkey', 'Istanbul', 'Beautiful tourist city', 500);
CREATE TABLE Packages (
    PackageId INT IDENTITY(1,1) PRIMARY KEY,
    PackageName NVARCHAR(100),
    DestinationId INT,
    DurationDays INT,
    Price DECIMAL(10,2),
    FOREIGN KEY (DestinationId)
    REFERENCES Destinations(DestinationId)
);
INSERT INTO Packages(PackageName, DestinationId, DurationDays, Price)
VALUES
('Istanbul Tour', 1, 7, 1000);
SELECT * FROM Packages
SELECT * FROM Destinations

