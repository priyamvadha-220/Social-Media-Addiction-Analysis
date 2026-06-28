create database socialmedia;
use socialmedia;
select * from addiction;
describe addiction;

-- 1. Countries with the highest average addiction score

select Country, round(avg(Addicted_Score),2) as Avg_Addiction_Score
from addiction
group by Country
order by Avg_Addiction_Score desc
limit 10;

-- 2. Average daily usage across academic levels

select Academic_Level, round(avg(Avg_Daily_Usage_Hours),2) as Avg_Usage_Hours
from addiction
group by Academic_Level
order by Avg_Usage_Hours desc;

-- 3. Is there a relationship between sleep duration and mental health score?

select round(Sleep_Hours_Per_Night) as Sleep_Hours, round(avg(Mental_Health_Score),2) as Avg_Mental_Health
from addiction
group by round(Sleep_Hours_Per_Night)
order by Sleep_Hours;

-- 4. Most frequently used platforms

select Most_Used_Platform, count(*) as No_of_Students
from addiction
group by Most_Used_Platform
order by No_of_Students desc;

-- 5. Is higher daily social media usage associated with higher addiction scores?

select round(Avg_Daily_Usage_Hours) as Usage_Hours, round(avg(Addicted_Score),2) as Avg_Addiction
from addiction
group by round(Avg_Daily_Usage_Hours)
order by Usage_Hours;

-- 6. How is mental health score associated with social media addiction score?

select Addicted_Score, round(avg(Mental_Health_Score),2) as Avg_Mental_Health
from addiction
group by Addicted_Score
order by Addicted_Score;

-- 7. How is addiction score associated with social media conflict frequency?

select Conflicts_Over_Social_Media, round(avg(Addicted_Score),2) as Avg_Addiction
from addiction
group by Conflicts_Over_Social_Media
order by Conflicts_Over_Social_Media;

-- 8. Is there a relationship between daily social media usage and sleep duration?

select round(Avg_Daily_Usage_Hours) as Usage_Hours, round(avg(Sleep_Hours_Per_Night),2) as Avg_Sleep
from addiction
group by round(Avg_Daily_Usage_Hours)
order by Usage_Hours;

-- 9. Do students whose academics are affected by social media exhibit higher addiction scores?

select Affects_Academic_Performance, round(avg(Addicted_Score),2) as Avg_Addiction
from addiction
group by Affects_Academic_Performance;

-- 10. Is age related to addiction score?

select Age, round(avg(Addicted_Score),2) as Avg_Addiction
from addiction
group by age
order by age;

-- 11. Is mental health associated with conflict frequency?

select Conflicts_Over_Social_Media, round(avg(Mental_Health_Score),2) as Avg_Mental_Health
from addiction
group by Conflicts_Over_Social_Media
order by Conflicts_Over_Social_Media;

-- 12. Do students reporting academic impact from social media have different average sleep durations?

select Affects_Academic_Performance, round(avg(Sleep_Hours_Per_Night),2) as Avg_Sleep
from addiction
group by Affects_Academic_Performance;


