--Data Combining

DROP TABLE IF EXISTS `courserapractise-405722.Capstone_Cyclists.2023tripdata_firstquarter`;

--Combining First Quarter Data (202301, 202302, 202303, 202304) into a single table `2023tripdata_firstquarter`

CREATE TABLE IF NOT EXISTS `courserapractise-405722.Capstone_Cyclists.2023tripdata_firstquarter` AS (
  SELECT * FROM `Capstone_Cyclists.202301`
  UNION ALL
  SELECT * FROM `Capstone_Cyclists.202302`
  UNION ALL
  SELECT * FROM `Capstone_Cyclists.202303`
  UNION ALL
  SELECT * FROM `Capstone_Cyclists.202304`
);

--Counting the total rows in the combined table

SELECT COUNT(*)
FROM
`Capstone_Cyclists.2023tripdata_firstquarter`
