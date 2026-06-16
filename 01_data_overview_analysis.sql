SELECT 
  COUNT(*) AS total_rows,
  COUNT(ride_id) AS total_ride_ids,
  COUNT(start_station_name) AS non_null_start_stations,
  SUM(CASE WHEN start_station_name IS NULL THEN 1 ELSE 0 END) AS missing_start_stations,
  SUM(CASE WHEN member_casual = 'member' THEN 1 ELSE 0 END) AS total_members,
  SUM(CASE WHEN member_casual = 'casual' THEN 1 ELSE 0 END) AS total_casuals,
  ROUND(SUM(CASE WHEN member_casual = 'member' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS pct_members,
  ROUND(SUM(CASE WHEN member_casual = 'casual' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS pct_casuals
FROM `snappy-thought-495511-k6.cyclistic.data_cyclistic`;