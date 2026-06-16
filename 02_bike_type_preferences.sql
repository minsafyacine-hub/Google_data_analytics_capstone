SELECT 
  member_casual,
  rideable_type,
  COUNT(*) AS total_trips,
  ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER(), 2) AS percentage_of_total
FROM snappy-thought-495511-k6.cyclistic.data_cyclistic
GROUP BY member_casual, rideable_type
ORDER BY member_casual, total_trips DESC;