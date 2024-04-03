-- Find how many times each artist appeared on the Spotify ranking list
-- https://platform.stratascratch.com/coding/9992-find-artists-that-have-been-on-spotify-the-most-number-of-times?code_type=3

-- Solution

/* HINTS: 
 - aggregate functio needs group by function.
 - group by can be used with other aggregate functions like, COUNT(), SUM(), AVG(), MAX(), and MIN().

------------------------------------------------------------------------------------------------------

  - WHERE before GROUP By to filter rows from the original data

  - HAVING after GROUP BY to filter groups based on aggregate conditions
*/

SELECT artist, COUNT(artist) as ranking_counts FROM spotify_worldwide_daily_song_ranking
GROUP BY artist
ORDER BY ranking_counts DESC