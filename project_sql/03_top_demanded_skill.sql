/*
Question: What are the most in-demand skills for data analysts?
- Join job postings to inner join table similar to query 2
- Identify the top 5 in-demand skills for a data analyst.
- Focus on all job postings.
- Why? Retrieves the top 5 skills with the highest demand in the job market, 
    providing insights into the most valuable skills for job seekers.
*/

SELECT 
    skills,
    COUNT(skills_job_dim.job_id) AS demand_count
FROM job_postings_fact
INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE
    job_title_short = 'Data Analyst'
    -- AND job_work_from_home = TRUE
GROUP BY
    skills
ORDER BY
    demand_count DESC

LIMIT 5;



/*

### Key Takeaways for Aspiring Analysts:

- SQL is Non-Negotiable: If you are pursuing a career in data analysis, mastering SQL is the most important step, as it is a requirement in over 92,000 job postings in this sample.
- Focus on the Core Triangle: The three pillars of high-demand skills are Database (SQL), Spreadsheet (Excel), and Programming (Python). Excelling in these three areas provides the broadest range of job opportunities.
- Visualization is Essential: The combined demand for Tableau and Power BI ($\sim 86,000$) underscores the fact that analysts are not just expected to process data, but also to effectively communicate insights visually.

RESULT in JSON Format
[
  {
    "skills": "sql",
    "demand_count": "92628"
  },
  {
    "skills": "excel",
    "demand_count": "67031"
  },
  {
    "skills": "python",
    "demand_count": "57326"
  },
  {
    "skills": "tableau",
    "demand_count": "46554"
  },
  {
    "skills": "power bi",
    "demand_count": "39468"
  }
]
*/