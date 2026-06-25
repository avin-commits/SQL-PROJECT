create database demo;
use demo;
select *from Teen_Mental_Health_Dataset;

#What is the average daily social media usage for each gender

select gender,
avg(daily_social_media_hours) as avg_daily_hours
from Teen_Mental_Health_Dataset
group by gender;

#Count of users with stress level > 8 

select count(*) as high_stress_count
from Teen_Mental_Health_Dataset
where stress_level > 8;

#What is the average age of users?

select avg(age) as avg_age
from Teen_Mental_Health_Dataset;

#Users sleeping less than 5 hours

select age, gender, sleep_hours
from Teen_Mental_Health_Dataset
where sleep_hours < 5;

#What is the average age

select avg(age) as avg_age
from Teen_Mental_Health_Dataset;

#count of users
select COUNT(*) as total_users
from Teen_Mental_Health_Dataset;


# Highest addiction level

select age, gender, addiction_level
FROM Teen_Mental_Health_Dataset
ORDER BY addiction_level desc
LIMIT 1;


#depression count

select depression_label, COUNT(*) as count
from Teen_Mental_Health_Dataset
group by   depression_label;


#Count users by addiction level

select addiction_level, COUNT(*) as count
from Teen_Mental_Health_Dataset
group by  addiction_level
order by addiction_level;

#Count users by academic performance and gender
 
select academic_performance, gender, COUNT(*) as count
from Teen_Mental_Health_Dataset
group by academic_performance, gender
order by academic_performance;

#Order users by stress level, then by anxiety level

SELECT age, gender, stress_level, anxiety_level
FROM Teen_Mental_Health_Dataset
ORDER BY stress_level DESC, anxiety_level DESC;

# Find pairs of users with same stress level

select a.age AS user1_age,a.gender AS user1_gender,a.stress_level,b.age AS user2_age,b.gender AS user2_gender
from Teen_Mental_Health_Dataset a
INNER JOIN Teen_Mental_Health_Dataset b
on a.stress_level = b.stress_level
where a.age < b.age
limit 10;

#Users with same platform

SELECT a.age AS user1_age,a.gender AS user1_gender,a.platform_usage,b.age AS user2_age,b.gender AS user2_gender
FROM Teen_Mental_Health_Dataset a
INNER JOIN Teen_Mental_Health_Dataset b
ON a.platform_usage = b.platform_usage
WHERE a.age < b.age
LIMIT 10;


# INNER JOIN - Only matching rows

SELECT a.age AS user1_age,a.gender AS user1_gender,a.stress_level,b.age AS user2_age,b.gender AS user2_gender
FROM Teen_Mental_Health_Dataset a
INNER JOIN Teen_Mental_Health_Dataset b
ON a.stress_level = b.stress_level
WHERE a.age < b.age
LIMIT 10;


#LEFT JOIN - All from left + matching from right

SELECT a.age AS user1_age,a.gender AS user1_gender,a.stress_level,b.age AS user2_age,b.gender AS user2_gender
FROM Teen_Mental_Health_Dataset a
LEFT JOIN Teen_Mental_Health_Dataset b
ON a.stress_level = b.stress_level
WHERE a.age < b.age
LIMIT 10;


