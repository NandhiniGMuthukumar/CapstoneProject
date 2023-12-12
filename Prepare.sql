-- Calculating Trip Duration

SELECT
  ride_id,
  (EXTRACT(HOUR FROM(ended_at - started_at)) *60 +
  EXTRACT(MINUTE FROM(ended_at - started_at)) +
  EXTRACT(SECOND FROM(ended_at - started_at))/60) ride_length_mins
FROM
  `Capstone_Cyclists.2023tripdata_firstquarter`
LIMIT 5;

-- Creating table with needed columns and calculated fields (ridelength, dayofweek, month)

CREATE TABLE IF NOT EXISTS `Capstone_Cyclists.cleaned_firstquarter_tripdata2023` AS (
  SELECT
    a.ride_id,
    a.rideable_type,
    a.started_at,
    a.ended_at,
    a.member_casual,
    b.ride_length_mins,
    CASE EXTRACT(DAYOFWEEK FROM started_at) 
      WHEN 1 THEN 'SUN'
      WHEN 2 THEN 'MON'
      WHEN 3 THEN 'TUES'
      WHEN 4 THEN 'WED'
      WHEN 5 THEN 'THURS'
      WHEN 6 THEN 'FRI'
      WHEN 7 THEN 'SAT'    
    END AS day_of_week,
    CASE EXTRACT(MONTH FROM started_at)
      WHEN 1 THEN 'JAN'
      WHEN 2 THEN 'FEB'
      WHEN 3 THEN 'MAR'
      WHEN 4 THEN 'APR'
      WHEN 5 THEN 'MAY'
      WHEN 6 THEN 'JUN'
      WHEN 7 THEN 'JUL'
      WHEN 8 THEN 'AUG'
      WHEN 9 THEN 'SEP'
      WHEN 10 THEN 'OCT'
      WHEN 11 THEN 'NOV'
      WHEN 12 THEN 'DEC'
    END AS month
  FROM
    `Capstone_Cyclists.2023tripdata_firstquarter` a
  JOIN (
    SELECT
      ride_id,
      (EXTRACT(HOUR FROM(ended_at - started_at)) *60 +
      EXTRACT(MINUTE FROM(ended_at - started_at)) +
      EXTRACT(SECOND FROM(ended_at - started_at))/60) ride_length_mins
    FROM
      `Capstone_Cyclists.2023tripdata_firstquarter`
      )b
    ON 
      a.ride_id = b.ride_id
    WHERE
      ride_length_mins > 1 AND ride_length_mins < 1440      --excluding rides with ride length less than 1 min and more than 1 day
);

-- Viewing the table cleaned_firstquarter_tripdata2023

SELECT
  *
FROM
`Capstone_Cyclists.cleaned_firstquarter_tripdata2023`;    -- Total 1028747 rows retrieved
