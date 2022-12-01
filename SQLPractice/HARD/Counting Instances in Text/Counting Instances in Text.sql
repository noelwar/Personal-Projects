SELECT 
  'bull' AS sign,
  COUNT(*)
FROM google_file_store
WHERE contents LIKE '% bull %'
UNION
SELECT 
  'bear' AS sign,
  COUNT(*)
FROM google_file_store
WHERE contents LIKE '% bear %'
