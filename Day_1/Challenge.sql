# Find all information
SELECT * 
FROM challenge.movies;

# Find title of each films
Select Title
From challenge.movies;

# Find the title and Director of each movie
SELECT Title, Director
FROM challenge.movies;

# Find movie with ID 6
SELECT id, title 
FROM challenge.movies 
WHERE id = 6;

# Find the movies released in the years between 2000 and 2010
SELECT * 
FROM challenge.movies 
WHERE Year BETWEEN 2000 AND 2010;

# Find the movies not released in the years between 2000 and 2010
SELECT * 
FROM challenge.movies 
WHERE Year NOT BETWEEN 2000 AND 2010;

# Find the first 5 Pixar movies and their release year
SELECT Title, Year
FROM challenge.movies 
LIMIT 5;





