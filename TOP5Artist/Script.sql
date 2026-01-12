WITH CTE AS (SELECT artist_name, 
             COUNT(rank) AS song_appearances,
             DENSE_RANK() OVER(
             ORDER BY COUNT(rank) DESC) 
             as artist_rank
             FROM artists a JOIN songs s
             ON a.artist_id = s.artist_id 
             JOIN global_song_rank r
             ON s.song_id = r.song_id
             WHERE rank <= 10
             GROUP BY artist_name)

SELECT 
artist_name,
artist_rank
FROM CTE 
WHERE artist_rank <= 5;