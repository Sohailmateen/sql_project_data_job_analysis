-- SELECT *
-- FROM (
--     SELECT *
--     FROM job_postings_fact
--     WHERE EXTRACT(MONTH FROM job_posted_date) = 1
-- ) AS january_jobs;


-- WITH january_jobs AS(
--     SELECT * 
--     FROM job_postings_fact
--     where EXTRACT(MONTH FROM job_posted_date) = 1

-- )

-- SELECT *
-- FROM january_jobs;

SELECT 
    company_id,
    name as company_name
FROM 
company_dim
WHERE company_id IN (
    SELECT 
        company_id
    FROM
        job_postings_fact
    WHERE
        job_no_degree_mention = TRUE
    ORDER BY 
        company_id
)

-- SELECT
--     name
-- FROM 
--     company_dim 
