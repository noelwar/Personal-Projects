SELECT
    date,
    SUM(CASE WHEN paying_customer='no' THEN downloads END) as non_paying_dls,
    SUM(CASE WHEN paying_customer='yes' THEN downloads END) as paying_dls
FROM ms_user_dimension ua
LEFT JOIN ms_acc_dimension ON ms_acc_dimension.acc_id = ua.acc_id
LEFT JOIN ms_download_facts ON ms_download_facts.user_id = ua.user_id
GROUP BY date
HAVING SUM(CASE WHEN paying_customer='no' THEN downloads END) > SUM(CASE WHEN paying_customer='yes' THEN downloads END)
ORDER BY date ASC;
