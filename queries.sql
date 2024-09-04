-- Find the highest-rated movie
SELECT Title, Rating
FROM Movies
JOIN Ratings ON Movies.MovieID = Ratings.MovieID
ORDER BY Rating DESC
LIMIT 1;

-- List all movies by a specific director
SELECT Title, ReleaseYear
FROM Movies
WHERE DirectorID = (SELECT DirectorID FROM Directors WHERE Name = 'Christopher Nolan');

-- Average rating per genre
SELECT GenreName, AVG(Rating) AS AverageRating
FROM Movies
JOIN Ratings ON Movies.MovieID = Ratings.MovieID
JOIN Genres ON Movies.GenreID = Genres.GenreID
GROUP BY GenreName;