SELECT 
  member_casual,
  start_station_name,
  AVG(start_lat) AS start_lat,
  AVG(start_lng) AS start_lng,
  COUNT(*) AS total_trips
FROM snappy-thought-495511-k6.cyclistic.data_cyclistic
WHERE start_station_name IS NOT NULL
GROUP BY member_casual, start_station_name
ORDER BY member_casual, total_trips DESC
LIMIT 50;