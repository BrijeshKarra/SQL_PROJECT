 # Introduction
 This project revolves around the DATA JOBS MARKET and involves analysis resulting in solving queries to answer questions related to top paying jobs, skills in high demand and much more, with main focus on DATA ANALYST JOBS.

 To check the SQL queries go to [project_sql Folder](/project_sql/)

 # Background
 Given this is my first SQL project ever, I wanted it to be related to my actual goal, which is to become  a data analyst. The Data used in the course is based on the online course [SQL for Data Analytics](https://www.lukebarousse.com/sql) by [Luke Barousse](https://github.com/lukebarousse).

 **The main tasks of the Project was to analyze the Data Jobs Market, specifically the Data Analyst Jobs. This was achieved by making SQL queries to answer the following questions:**

1. What are the top-paying data analyst jobs?
2. What skills are required for these top-paying jobs?
3. What skills are most in demand for data analysts?
4. Which skills are associated with higher salaries?
5. What are the most optimal skills to learn? 

 # Tools Used
It was my first time using all of these tools, I do have experience with other tools like Jupyter, MATLAB , and other editors, but VS code really stood out to me, work of such ease and very versatile tool.

- **SQL:** The coding language for the whole project.
- **PostgreSQL:** The chosen database management system, ideal for handling the job posting data.
- **Visual Studio Code:** Best tool for this project.
- **PowerBI:** Used to create graphics.
- **Git & GitHub:** Essential for version control and sharing my SQL scripts and analysis, ensuring collaboration and project tracking.
 # The Analysis

 Each query was directed at a main task, followed by sub-tasks with respect to each question.
 My approach is as follows:

 **1. Top Paying Data Analyst Jobs**

This was easy. To identify the highest-paying roles, I filtered data analyst positions by average yearly salary, making sure it's non-zero, and location based on remote jobs. The LEFT join was used as a bonus task to get company names for the required Jobs.

This query highlights the top 10 high paying opportunities in the field.
``` sql
SELECT 
    job_id,
    job_schedule_type,
    job_location,
    job_title,
    job_title_short,
    salary_year_avg,
    job_posted_date,
    name as company_name

FROM 
    job_postings_fact

LEFT JOIN company_dim ON job_postings_fact.company_id = company_dim.company_id

WHERE 
    job_title_short = 'Data Analyst' AND 
    job_location = 'Anywhere' AND
    salary_year_avg IS NOT NULL

ORDER BY 
    salary_year_avg DESC
LIMIT 10 
```
Here's the breakdown of the top data analyst jobs in 2023:

- **Wide Salary Range:** Top 10 paying data analyst roles span from $184,000 to $650,000, indicating significant salary potential in the field.

- **Job Title Variety:** There's a high diversity in job titles, from Data Analyst to Director of Analytics, reflecting varied roles and specializations within data analytics.

![Top Paying Jobs](assets\Top_10_paying_remote_data_analyst_jobs_2023.png)
Bargraph describing average yearly salaries for the Top 10 remote data analysts postions, created using PowerBI.



 # Learning Outcomes
Working on this project was fun, be it using the CTEs or messig up the JOINS, It really did involve learning and applying the knowledge I gained from the Beginner course. 

- **Advanced Query Development:** Became Proficient in writing complex SQL queries, seamlessly joining tables and utilizing WITH clauses for efficient temporary table management.

- **Data Aggregation & Analysis:** Experienced in leveraging GROUP BY and applying aggregate functions such as COUNT() and AVG() to summarize and interpret data effectively.

- **Analytical Problem-Solving:** Skilled in translating real-world problems into structured, insightful SQL queries to drive data-driven decision-making.

 # Conclusions
Results from the Analysis:
1. **Top-Paying Data Analyst Jobs:** The highest-paying jobs for data analysts that allow remote work offer a wide range of salaries with the highest being at $650,000!
2. **Skills for Top-Paying Jobs:** The high-paying data analyst jobs require advanced proficiency in SQL, suggesting it’s a critical skill for earning a top salary.
3. **Most In-Demand Skills:** SQL is also the most demanded skill in the data analyst job market, thus making it essential for job seekers.
4. **Skills with Higher Salaries:** Specialized skills, such as SVN and Solidity, are associated with the highest average salaries, indicating a premium on niche expertise.
5. **Optimal Skills for Job Market Value:** SQL leads in demand and offers for a high average salary, positioning it as one of the most optimal skills for data analysts to learn to maximize their market value.