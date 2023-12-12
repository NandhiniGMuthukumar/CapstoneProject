# Google Data Analytics Capstone Project: Cyclistic Case Study
### How Does a Bike-Share Navigate Speedy Success?

**Nandhini, Dec 11, 2023**

## Introduction
In this case study, I will perform many real-world tasks of a data analyst at a fictional company, Cyclist. In order to answer the key business questions, I will follow the steps of the data analysis  process:  Ask, Prepare, Process, Analyze, Share, and Act.

### Quick Access

**Data Source**: https://divvy-tripdata.s3.amazonaws.com/index.html [accessed Dec 11, 2023]
Below analysis is for 2023 trip data(2023, Jan - 2023, Apr), First quarter.

### Background

In 2016, Cyclistic launched a successful bike-share offering. Since then, the program has grown to a fleet of 5,824 bicycles that are geo-tracked and locked into a network of 692 stations across Chicago.
Until now, Cyclistic’s marketing strategy relied on building general awareness and appealing to broad consumer segments. One approach that helped make these things possible was the flexibility of its pricing plans: single-ride passes, full-day passes, and annual memberships. Customers who purchase single-ride or full-day passes are referred to as casual riders. Customers who purchase annual memberships are Cyclistic members.


### Case Study

This report will examine the business question: 'what is the most effective marketing strategy to converting Cyclistic’s casual riders to annul memberships?'
It is understood that the goal can be broken down into 3 main questions.
How do annual members and casual riders use Cyclistic bikes differently?
Why would casual riders buy Cyclistic annual memberships?
How can Cyclistic use digital media to influence casual riders to become members?
This report will seek to deliver on the following objectives:
How do annual members and casual riders use Cyclistic bikes differently?

### Stakeholders

This report also seeks to identify the important stakeholders that are involved in the overall analysis. This includes:
- Director of marketing
- Cyclistic marketing team
- Cyclistic executive team
- Cyclistic users

### Scenerio

I am assuming to be a junior data analyst working in the marketing analyst team at Cyclistic, a bike-share company in Chicago. The director of 
marketing believes the company’s future success depends on maximizing the number of annual memberships. Therefore, my team wants to understand how casual riders and annual members use Cyclistic bikes differently. From these insights, my team will design a new marketing strategy to convert casual riders into annual members. But first, Cyclistic 
executives must approve our recommendations, so they must be backed up with compelling data insights and professional data visualizations.

## Ask

### Business Task

Devise marketing strategies to convert casual riders to members.

### Analysis Questions

Three questions will guide the future marketing program:
How do annual members and casual riders use Cyclistic bikes differently?
1. Why would casual riders buy Cyclistic annual memberships?
2. How can Cyclistic use digital media to influence casual riders to become members?
3. Moreno has assigned me the first question to answer: How do annual members and casual riders use Cyclistic bikes differently?

## Prepare

### Data Source

I will use Cyclistic’s historical trip data to analyze and identify trends from Jan 2023 to Apr 2023 which can be downloaded from divvy_tripdata. The 
data has been made available by Motivate International Inc. under this license. This is public data that can be used to explore how different customer types are using Cyclistic bikes. But note that data-privacy issues prohibit from using riders’ personally identifiable information. This means that we won’t be able to connect pass purchases to credit card numbers to determine if casual riders live in the Cyclistic service area or if they have purchased multiple single passes.

### Data Organization

There are 12 files with naming convention of YYYYMM-divvy-tripdata and each file includes information for one month, such as the ride id, bike type, start time, end time, start station, end station, start location, end location, and whether the rider is a member or not. The corresponding column names are ride_id, rideable_type, started_at, ended_at, start_station_name, start_station_id, end_station_name, end_station_id, start_lat, start_lng, end_lat, end_lng and member_casual.

## Process

BigQuery is used to combine the various datasets into one dataset and clean it.

**Reason**:
Essential to use a platform like BigQuery that supports huge volumes of data.

### Combining Data

SQL Query: 
4 csv files ( 202301, 202302, 202303, 202304	)are uploaded as tables in the dataset ‘Capstone_Cyclists’. Combined table with all the datasets “2023tripdata_firstquarter" is created, containing 1066014 rows of data for the first quarter of the year.

### Data Exploration

### Observations

1. The table below shows the all column names and their data types. The **ride_id** column is our primary key.

   ![image](https://github.com/NandhiniGMuthukumar/CapstoneProject/assets/148919524/78dba2b9-f16f-4760-a084-93a97ad0d0db)
  
2. For this analysis, we need the fields of ride_id, rideable_type, started_at, ended_at, member_casual.
   Hence check for the null values in the above columns.
   
   ![image](https://github.com/NandhiniGMuthukumar/CapstoneProject/assets/148919524/e3e712be-6262-4b80-84b7-3c03ffc39f37)

   No null values in these columns.
   
3. Since ride_id is unique key, check for the duplicates. No duplicates ride_id found.

4. After checking the consistency of ride_id length, all id have length of 16. So need to clean it.
   
   ![image](https://github.com/NandhiniGMuthukumar/CapstoneProject/assets/148919524/71d3a49c-c71e-4da1-bc93-1cfc006f5025)
   
5. There are 3 unique types of bikes(rideable_type) in our data.

   ![image](https://github.com/NandhiniGMuthukumar/CapstoneProject/assets/148919524/c573d70b-a449-4cb4-8681-749a1e5a0902)
   
6. Only member and Casual rider in member_casual column.
 
   ![image](https://github.com/NandhiniGMuthukumar/CapstoneProject/assets/148919524/e7bb5903-62f9-4f8b-b6bc-eaa34eae6ba1)
   
7. For analysis, three fields are created: 
  	trip_duration, day_of_week, month

8. Trips with less than 1 minute and more than 1 day are excluded.
  
9. Total 1028747 records are retrieved for further analysis.
    
10. Total 37267 rows are deleted in this step.

## Analysis

The data is stored appropriately and is now prepared for analysis. I queried multiple relevant tables for the analysis and visualized them in Tableau.
The analysis question is: How do annual members and casual riders use Cyclistic bikes differently?

1.Bike type used:

  ![image](https://github.com/NandhiniGMuthukumar/CapstoneProject/assets/148919524/990f6166-0d36-4761-9f1d-bb171ffbebb6)

  Both member and casual riders **prefer electric bike** the most. 
  **Docked bike** is the **least** preference.

2. Number of trips distributed by the months, days of the week and hours of the day are examined.
   
  ![image](https://github.com/NandhiniGMuthukumar/CapstoneProject/assets/148919524/ead238cb-e84e-4314-901f-c429ed7dd1c0)
  ![image](https://github.com/NandhiniGMuthukumar/CapstoneProject/assets/148919524/268aa48e-078f-4286-a325-0e2bbe582cbb)
  ![image](https://github.com/NandhiniGMuthukumar/CapstoneProject/assets/148919524/f052afea-a113-4b8a-b6a0-4456936391ac)

  From the above, we can see :
  - Rides are usually **high** in **April** month.
  - Casual riders **prefer 8-5 time** to take on rides preferably on everyday **not** on **Friday**

3. Average rides by month and day of week.
   ![image](https://github.com/NandhiniGMuthukumar/CapstoneProject/assets/148919524/db287fd6-e786-4fa3-bba3-e61f7ef132f6)
   ![image](https://github.com/NandhiniGMuthukumar/CapstoneProject/assets/148919524/36ce5d53-9ac3-4e09-80b0-23cf76ccc4be)

   - Both casual and member riders rides most in March and April
   - Casual members prefer their rides mostly in weekends.

## Act

After identifying the differences between casual and member riders, marketing strategies to target casual riders can be developed to persuade them to become members.
### Recommendations:
1. **Marketing campaigns** might be conducted in **April** at tourist/recreational locations popular among casual riders.
2. Casual riders are most active on **weekends** and during the **April** month, thus they may be offered **seasonal or weekend-only memberships.**
3. Casual riders use their bikes for longer durations than members. **Offering discounts for longer rides** may incentivize casual riders and entice members to ride for longer periods of time.
