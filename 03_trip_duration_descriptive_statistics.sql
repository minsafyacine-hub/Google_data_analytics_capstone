WITH prepared_data AS (
  SELECT 
    member_casual,
    (EXTRACT(HOUR FROM TIME(ride_length)) * 60 + 
     EXTRACT(MINUTE FROM TIME(ride_length)) + 
     EXTRACT(SECOND FROM TIME(ride_length)) / 60.0) AS duration_minutes
  FROM snappy-thought-495511-k6.cyclistic.data_cyclistic
)
SELECT 
  member_casual,
  COUNT(*) AS total_trips,
  ROUND(AVG(duration_minutes), 2) AS moyenne_minutes,
  ROUND(APPROX_QUANTILES(duration_minutes, 2)[OFFSET(1)], 2) AS mediane_minutes,
  ROUND(STDDEV_SAMP(duration_minutes), 2) AS standart_deviation_minutes,
  ROUND(VARIANCE(duration_minutes), 2) AS variance_minutes,
  
  ROUND(MIN(duration_minutes), 2) AS min_minutes,
  ROUND(MAX(duration_minutes), 2) AS max_minutes

FROM prepared_data
WHERE duration_minutes > 0.5 
GROUP BY member_casual;