SELECT 
    job_title_short,
    company_id,
    job_location
FROM 
    january_job

UNION ALL

SELECT
    job_title_short,
    company_id,
    job_location
FROM
    february_job

UNION ALL

SELECT  
    job_title_short,
    company_id,
    job_location
FROM 
    march_job;










SELECT 
    job_title_short,
    company_id,
    job_location
FROM 
    january_job

UNION

SELECT
    job_title_short,
    company_id,
    job_location
FROM
    february_job

UNION

SELECT  
    job_title_short,
    company_id,
    job_location
FROM 
    march_job;