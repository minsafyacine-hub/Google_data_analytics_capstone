SELECT 
  member_casual,
  day_of_week, 
  EXTRACT(HOUR FROM started_at) AS start_hour, 
  EXTRACT(MONTH FROM started_at) AS calendar_month,
  COUNT(*) AS total_trips
FROM snappy-thought-495511-k6.cyclistic.data_cyclistic
GROUP BY member_casual, day_of_week, start_hour, calendar_month
ORDER BY calendar_month, day_of_week, start_hour;