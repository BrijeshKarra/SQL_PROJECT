/*
Question: what are the top paying Data Analyst Jobs
--Identify the top 10 highest-paying Data Analyst roles that are available remotely
--Focus on job postings with specified salaries (remove nulls)

Bonus Task: Include company name of top 10 roles 
Why? Results highlight the top-paying opportunities for Data Analysts.
*/

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
