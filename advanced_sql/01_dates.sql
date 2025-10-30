-- SELECT 
--     '2023-02-19'::DATE,
--     '123'::integer,
--     'true'::boolean,
--     '3.14'::float;


-- SELECT 
--     job_title_short AS title,
--     job_location AS location,
--     job_posted_date AT TIME ZONE 'UTC' AT TIME ZONE 'EST' AS date,
--     EXTRACT(MONTH FROM job_posted_date) AS date_month,
--     EXTRACT(YEAR FROM job_posted_date) AS date_year
-- FROM
--     job_postings_fact
-- LIMIT 5;

SELECT 
    COUNT(job_id) as job_posted_count,
    EXTRACT(MONTH FROM job_posted_date) AS month
FROM
    job_postings_fact
WHERE
    job_title_short = 'Data Analyst'
GROUP BY
    month
ORDER BY
    job_posted_count DESC;

SELECT
    job_id,
    job_title_short
FROM job_postings_fact
LIMIT 100;

