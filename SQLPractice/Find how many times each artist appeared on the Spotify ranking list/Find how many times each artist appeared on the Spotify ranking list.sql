SELECT
    artist,
    COUNT(position)
FROM spotify_worldwide_daily_song_ranking
GROUP BY artist
ORDER BY count DESC;
