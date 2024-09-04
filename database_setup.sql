CREATE TABLE Directors (
    DirectorID INT PRIMARY KEY,
    Name VARCHAR(100),
    Birthdate DATE
);

CREATE TABLE Movies (
    MovieID INT PRIMARY KEY,
    Title VARCHAR(100),
    DirectorID INT,
    ReleaseYear INT,
    GenreID INT,
    FOREIGN KEY (DirectorID) REFERENCES Directors(DirectorID)
);

CREATE TABLE Genres (
    GenreID INT PRIMARY KEY,
    GenreName VARCHAR(50)
);

CREATE TABLE Ratings (
    RatingID INT PRIMARY KEY,
    MovieID INT,
    Rating DECIMAL(3, 2),
    ReviewCount INT,
    FOREIGN KEY (MovieID) REFERENCES Movies(MovieID)
);



INSERT INTO Directors (DirectorID, Name, Birthdate) VALUES (1, 'Christopher Nolan', '1970-07-30');
INSERT INTO Directors (DirectorID, Name, Birthdate) VALUES (2, 'Quentin Tarantino', '1963-03-27');

INSERT INTO Genres (GenreID, GenreName) VALUES (1, 'Action');
INSERT INTO Genres (GenreID, GenreName) VALUES (2, 'Drama');

INSERT INTO Movies (MovieID, Title, DirectorID, ReleaseYear, GenreID) 
VALUES (1, 'Inception', 1, 2010, 1);
INSERT INTO Movies (MovieID, Title, DirectorID, ReleaseYear, GenreID) 
VALUES (2, 'Pulp Fiction', 2, 1994, 2);

INSERT INTO Ratings (RatingID, MovieID, Rating, ReviewCount)
VALUES (1, 1, 8.8, 12000);
INSERT INTO Ratings (RatingID, MovieID, Rating, ReviewCount)
VALUES (2, 2, 8.9, 15000);