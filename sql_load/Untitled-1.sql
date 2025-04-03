select *
from job_postings_fact
WHERE salary_year_avg IS NOT NULL
and job_title_short = 'Data Analyst'
order by salary_year_avg DESC
limit 100