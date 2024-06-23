-- Use the 'netflix' database
USE netflix;

-- Select all columns and rows from the 'netflmovies' table in the 'netflix' database
SELECT * FROM netflix.netflmovies;

-- Count the total number of rows in the 'netflmovies' table, and alias the result as 'total_shows'
SELECT COUNT(*) AS total_shows FROM netflmovies;

-- Find the average runtime of the shows in the 'netflmovies' table
SELECT AVG(runtime) AS average_runtime FROM netflmovies;

-- Find the average duration of shows (in minutes), assuming the duration column contains strings like '120 min'
SELECT AVG(CAST(SUBSTRING_INDEX(duration, ' ', 1) AS DECIMAL(10,2))) AS average_duration
FROM netflmovies
WHERE duration LIKE '%min%';

-- Sum the total number of seasons for shows, assuming the duration column contains strings like '3 seasons'
SELECT SUM(CAST(SUBSTRING_INDEX(duration, ' ', 1) AS UNSIGNED)) AS total_seasons
FROM netflmovies
WHERE duration LIKE '%season%';

-- Select the type of show and count the number of occurrences of each type
-- Group the results by 'type' and order the counts in descending order
-- Limit the results to the top 5 types
SELECT type, COUNT(*) AS count
FROM netflmovies
GROUP BY type
ORDER BY count DESC
LIMIT 5;

-- Select the title and rating of shows released after 2018
-- Order the results by rating in descending order and limit the results to the top 5 shows
SELECT title, rating
FROM netflmovies
WHERE release_year > 2018
ORDER BY rating DESC
LIMIT 5;

-- Find the average rating of shows released after 2015
SELECT AVG(rating) AS average_rating
FROM netflmovies
WHERE release_year > 2015;
