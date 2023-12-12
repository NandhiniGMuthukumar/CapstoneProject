-- Analysis

-- Bikke types preferred

SELECT
  member_casual,
  rideable_type,
  COUNT(rideable_type) ride_type
FROM
  `Capstone_Cyclists.cleaned_firstquarter_tripdata2023`
GROUP BY
  member_casual,
  rideable_type;

-- Number of trips per month

SELECT
  member_casual,
  month,
  COUNT(ride_id) as num_of_trips
FROM
 `Capstone_Cyclists.cleaned_firstquarter_tripdata2023`
GROUP BY
  member_casual,
  month
ORDER BY
  member_casual;

--Number of trips per day of week

SELECT 
  member_casual,
  day_of_week,
  count(ride_id) as num_of_rides
FROM
  `Capstone_Cyclists.cleaned_firstquarter_tripdata2023`
GROUP BY
  member_casual,
  day_of_week
ORDER BY
  member_casual;

--Number of rides per hour

SELECT 
  EXTRACT(HOUR FROM started_at) AS hour_of_day, 
  member_casual, 
  COUNT(ride_id) AS total_trips
FROM 
 `Capstone_Cyclists.cleaned_firstquarter_tripdata2023`
GROUP BY 
  hour_of_day, 
  member_casual
ORDER BY 
  hour_of_day;

-- Average ride_length per month

SELECT 
  month, 
  member_casual, 
  AVG(ride_length_mins) AS avg_ride_duration
FROM 
  `Capstone_Cyclists.cleaned_firstquarter_tripdata2023`
GROUP BY 
  month, 
  member_casual
ORDER BY
  member_casual;

-- Average ride_length per day of week

SELECT 
  day_of_week, 
  member_casual, 
  AVG(ride_length_mins) AS avg_ride_duration
FROM 
  `Capstone_Cyclists.cleaned_firstquarter_tripdata2023`
GROUP BY 
  day_of_week, 
  member_casual
ORDER BY
  member_casual;


-- Average ride_length per hour

SELECT 
  EXTRACT(HOUR FROM started_at) AS hour_of_day, 
  member_casual, 
  ROUND(AVG(ride_length_mins)) AS avg_ride_duration
FROM   
  `Capstone_Cyclists.cleaned_firstquarter_tripdata2023`
GROUP BY 
  hour_of_day, 
  member_casual
ORDER BY
  hour_of_day;








