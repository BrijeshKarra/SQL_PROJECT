/*
Question: what are the most in-demand skills for Data Analysts?
--Join job postings to inner join table similar to query 2
--Identify the top in-demand skills for data analysts
--Focus on all job postings

Why? Resultls provide the top 5 skills with the highest demand in the job market, 
     providing insights into the most valuable skills for job seekers.
*/


SELECT 
    skills,
    count(skills_job_dim.job_id) AS demand_count
FROM 
    job_postings_fact

INNER JOIN skills_job_dim on job_postings_fact.job_id= skills_job_dim.job_id
INNER JOIN skills_dim on skills_job_dim.skill_id = skills_dim.skill_id
--Where job_title_short = 'Data Analyst'

GROUP BY skills
ORDER BY demand_count DESC
LIMIT 5