SELECT
    games,
    COUNT(DISTINCT name)
FROM olympics_athletes_events
GROUP BY games
ORDER BY count DESC
LIMIT 1;
