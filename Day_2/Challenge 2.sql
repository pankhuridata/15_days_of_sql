# Find all the Toy Story movies 
SELECT * 
FROM challenge.movies
WHERE title LIKE "Toy Story%";

#Find all the movies directed by John Lasseter
SELECT * 
FROM challenge.movies
WHERE Director= 'John Lasseter';

#List all directors of Pixar movies (alphabetically), without duplicates
SELECT DISTINCT Director
FROM challenge.movies
ORDER BY Director ASC;

#List the last four Pixar movies released (ordered from most recent to least) 
SELECT DISTINCT Title, Year
FROM challenge.movies
ORDER BY Year DESC
Limit 4;

# List the next five Pixar movies sorted alphabetically
SELECT title 
FROM challenge.movies
ORDER BY title ASC
LIMIT 5 OFFSET 5;

# Finding null values in database
Select *
FROM challenge.movies
Where title is  null;
