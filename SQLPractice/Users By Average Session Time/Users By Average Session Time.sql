WITH
    exit AS(
    SELECT
        user_id, 
        date(timestamp) AS exit_day, 
        min(timestamp) AS exit
    FROM facebook_web_log
    WHERE action = 'page_exit'
    GROUP BY user_id, exit_day),
    load AS(
    SELECT
        user_id, 
        date(timestamp) AS load_day, 
        max(timestamp) as load
    FROM facebook_web_log
    WHERE action = 'page_load'
    GROUP BY user_id, load_day)
    
SELECT
    exit.user_id, 
    AVG(exit-load)
FROM exit
LEFT JOIN load
ON exit.user_id = load.user_id AND
   exit.exit_day = load.load_day
GROUP BY exit.user_id
