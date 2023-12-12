-- Data Exploration

-- View column names and data type of the combined table

SELECT 
  column_name, 
  data_type
FROM
  `Capstone_Cyclists`.INFORMATION_SCHEMA.COLUMNS
WHERE 
  table_name = '2023tripdata_firstquarter';

-- For this analysis, ride_id, rideable_type, started_at, ended_at, member_casual alone needed, remainaing fields can be discarded
-- Checking for null values in the needed columns

SELECT 
  COUNT(*) - COUNT(ride_id) ride_id,
  COUNT(*) - COUNT(rideable_type) ride_type,
  COUNT(*) - COUNT(started_at) start_time,
  COUNT(*) - COUNT(ended_at) end_time,
  COUNT(*) - COUNT(member_casual) member_casual
FROM
  `Capstone_Cyclists.2023tripdata_firstquarter`;

-- Check for duplicates in ride_id

SELECT 
  COUNT(ride_id) - COUNT(DISTINCT ride_id) duplicates
FROM
`Capstone_Cyclists.2023tripdata_firstquarter`;

-- Checking the consistensy of the ride_id length

SELECT
  LENGTH(ride_id) rideid_length,
  Count(ride_id) num_of_rows
FROM
`Capstone_Cyclists.2023tripdata_firstquarter`
GROUP BY
  LENGTH(ride_id);

-- Rideable Types

SELECT
  rideable_type,
  COUNT(rideable_type) as ridetype_count
FROM
  `Capstone_Cyclists.2023tripdata_firstquarter`
GROUP BY
  rideable_type;

-- Checking Member, Casual types

SELECT 
  member_casual,
  COUNT(member_casual) no_of_trips,
FROM
  `Capstone_Cyclists.2023tripdata_firstquarter`
GROUP BY
  member_casual; 









