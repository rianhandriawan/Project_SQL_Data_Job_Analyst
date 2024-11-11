WITH top_paying_job AS (
    SELECT  
        job_id,
        job_title,
        job_posted_date,
        salary_year_avg,
        name AS company_name
    FROM
        job_postings_fact 
    LEFT JOIN company_dim on job_postings_fact.company_id = company_dim.company_id
    WHERE
        job_title_short = 'Data Analyst' AND
        job_location = 'Anywhere' AND
        salary_year_avg is NOT NULL
    ORDER BY
        salary_year_avg DESC
    LIMIT 20
)

SELECT 
    top_paying_job.*,
    skills
FROM top_paying_job
INNER JOIN skills_job_dim ON top_paying_job.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
ORDER BY
    salary_year_avg DESC

/*
[
  {
    "job_id": 552322,
    "job_title": "Associate Director- Data Insights",
    "job_posted_date": "2023-06-18 16:03:12",
    "salary_year_avg": "255829.5",
    "company_name": "AT&T",
    "skills": "sql"
  },
  {
    "job_id": 552322,
    "job_title": "Associate Director- Data Insights",
    "job_posted_date": "2023-06-18 16:03:12",
    "salary_year_avg": "255829.5",
    "company_name": "AT&T",
    "skills": "python"
  },
  {
    "job_id": 552322,
    "job_title": "Associate Director- Data Insights",
    "job_posted_date": "2023-06-18 16:03:12",
    "salary_year_avg": "255829.5",
    "company_name": "AT&T",
    "skills": "r"
  },
  {
    "job_id": 552322,
    "job_title": "Associate Director- Data Insights",
    "job_posted_date": "2023-06-18 16:03:12",
    "salary_year_avg": "255829.5",
    "company_name": "AT&T",
    "skills": "azure"
  },
  {
    "job_id": 552322,
    "job_title": "Associate Director- Data Insights",
    "job_posted_date": "2023-06-18 16:03:12",
    "salary_year_avg": "255829.5",
    "company_name": "AT&T",
    "skills": "databricks"
  },
  {
    "job_id": 552322,
    "job_title": "Associate Director- Data Insights",
    "job_posted_date": "2023-06-18 16:03:12",
    "salary_year_avg": "255829.5",
    "company_name": "AT&T",
    "skills": "aws"
  },
  {
    "job_id": 552322,
    "job_title": "Associate Director- Data Insights",
    "job_posted_date": "2023-06-18 16:03:12",
    "salary_year_avg": "255829.5",
    "company_name": "AT&T",
    "skills": "pandas"
  },
  {
    "job_id": 552322,
    "job_title": "Associate Director- Data Insights",
    "job_posted_date": "2023-06-18 16:03:12",
    "salary_year_avg": "255829.5",
    "company_name": "AT&T",
    "skills": "pyspark"
  },
  {
    "job_id": 552322,
    "job_title": "Associate Director- Data Insights",
    "job_posted_date": "2023-06-18 16:03:12",
    "salary_year_avg": "255829.5",
    "company_name": "AT&T",
    "skills": "jupyter"
  },
  {
    "job_id": 552322,
    "job_title": "Associate Director- Data Insights",
    "job_posted_date": "2023-06-18 16:03:12",
    "salary_year_avg": "255829.5",
    "company_name": "AT&T",
    "skills": "excel"
  },
  {
    "job_id": 552322,
    "job_title": "Associate Director- Data Insights",
    "job_posted_date": "2023-06-18 16:03:12",
    "salary_year_avg": "255829.5",
    "company_name": "AT&T",
    "skills": "tableau"
  },
  {
    "job_id": 552322,
    "job_title": "Associate Director- Data Insights",
    "job_posted_date": "2023-06-18 16:03:12",
    "salary_year_avg": "255829.5",
    "company_name": "AT&T",
    "skills": "power bi"
  },
  {
    "job_id": 552322,
    "job_title": "Associate Director- Data Insights",
    "job_posted_date": "2023-06-18 16:03:12",
    "salary_year_avg": "255829.5",
    "company_name": "AT&T",
    "skills": "powerpoint"
  },
  {
    "job_id": 99305,
    "job_title": "Data Analyst, Marketing",
    "job_posted_date": "2023-12-05 20:00:40",
    "salary_year_avg": "232423.0",
    "company_name": "Pinterest Job Advertisements",
    "skills": "sql"
  },
  {
    "job_id": 99305,
    "job_title": "Data Analyst, Marketing",
    "job_posted_date": "2023-12-05 20:00:40",
    "salary_year_avg": "232423.0",
    "company_name": "Pinterest Job Advertisements",
    "skills": "python"
  },
  {
    "job_id": 99305,
    "job_title": "Data Analyst, Marketing",
    "job_posted_date": "2023-12-05 20:00:40",
    "salary_year_avg": "232423.0",
    "company_name": "Pinterest Job Advertisements",
    "skills": "r"
  },
  {
    "job_id": 99305,
    "job_title": "Data Analyst, Marketing",
    "job_posted_date": "2023-12-05 20:00:40",
    "salary_year_avg": "232423.0",
    "company_name": "Pinterest Job Advertisements",
    "skills": "hadoop"
  },
  {
    "job_id": 99305,
    "job_title": "Data Analyst, Marketing",
    "job_posted_date": "2023-12-05 20:00:40",
    "salary_year_avg": "232423.0",
    "company_name": "Pinterest Job Advertisements",
    "skills": "tableau"
  },
  {
    "job_id": 1021647,
    "job_title": "Data Analyst (Hybrid/Remote)",
    "job_posted_date": "2023-01-17 00:17:23",
    "salary_year_avg": "217000.0",
    "company_name": "Uclahealthcareers",
    "skills": "sql"
  },
  {
    "job_id": 1021647,
    "job_title": "Data Analyst (Hybrid/Remote)",
    "job_posted_date": "2023-01-17 00:17:23",
    "salary_year_avg": "217000.0",
    "company_name": "Uclahealthcareers",
    "skills": "crystal"
  },
  {
    "job_id": 1021647,
    "job_title": "Data Analyst (Hybrid/Remote)",
    "job_posted_date": "2023-01-17 00:17:23",
    "salary_year_avg": "217000.0",
    "company_name": "Uclahealthcareers",
    "skills": "oracle"
  },
  {
    "job_id": 1021647,
    "job_title": "Data Analyst (Hybrid/Remote)",
    "job_posted_date": "2023-01-17 00:17:23",
    "salary_year_avg": "217000.0",
    "company_name": "Uclahealthcareers",
    "skills": "tableau"
  },
  {
    "job_id": 1021647,
    "job_title": "Data Analyst (Hybrid/Remote)",
    "job_posted_date": "2023-01-17 00:17:23",
    "salary_year_avg": "217000.0",
    "company_name": "Uclahealthcareers",
    "skills": "flow"
  },
  {
    "job_id": 168310,
    "job_title": "Principal Data Analyst (Remote)",
    "job_posted_date": "2023-08-09 11:00:01",
    "salary_year_avg": "205000.0",
    "company_name": "SmartAsset",
    "skills": "sql"
  },
  {
    "job_id": 168310,
    "job_title": "Principal Data Analyst (Remote)",
    "job_posted_date": "2023-08-09 11:00:01",
    "salary_year_avg": "205000.0",
    "company_name": "SmartAsset",
    "skills": "python"
  },
  {
    "job_id": 168310,
    "job_title": "Principal Data Analyst (Remote)",
    "job_posted_date": "2023-08-09 11:00:01",
    "salary_year_avg": "205000.0",
    "company_name": "SmartAsset",
    "skills": "go"
  },
  {
    "job_id": 168310,
    "job_title": "Principal Data Analyst (Remote)",
    "job_posted_date": "2023-08-09 11:00:01",
    "salary_year_avg": "205000.0",
    "company_name": "SmartAsset",
    "skills": "snowflake"
  },
  {
    "job_id": 168310,
    "job_title": "Principal Data Analyst (Remote)",
    "job_posted_date": "2023-08-09 11:00:01",
    "salary_year_avg": "205000.0",
    "company_name": "SmartAsset",
    "skills": "pandas"
  },
  {
    "job_id": 168310,
    "job_title": "Principal Data Analyst (Remote)",
    "job_posted_date": "2023-08-09 11:00:01",
    "salary_year_avg": "205000.0",
    "company_name": "SmartAsset",
    "skills": "numpy"
  },
  {
    "job_id": 168310,
    "job_title": "Principal Data Analyst (Remote)",
    "job_posted_date": "2023-08-09 11:00:01",
    "salary_year_avg": "205000.0",
    "company_name": "SmartAsset",
    "skills": "excel"
  },
  {
    "job_id": 168310,
    "job_title": "Principal Data Analyst (Remote)",
    "job_posted_date": "2023-08-09 11:00:01",
    "salary_year_avg": "205000.0",
    "company_name": "SmartAsset",
    "skills": "tableau"
  },
  {
    "job_id": 168310,
    "job_title": "Principal Data Analyst (Remote)",
    "job_posted_date": "2023-08-09 11:00:01",
    "salary_year_avg": "205000.0",
    "company_name": "SmartAsset",
    "skills": "gitlab"
  },
  {
    "job_id": 731368,
    "job_title": "Director, Data Analyst - HYBRID",
    "job_posted_date": "2023-12-07 15:00:13",
    "salary_year_avg": "189309.0",
    "company_name": "Inclusively",
    "skills": "sql"
  },
  {
    "job_id": 731368,
    "job_title": "Director, Data Analyst - HYBRID",
    "job_posted_date": "2023-12-07 15:00:13",
    "salary_year_avg": "189309.0",
    "company_name": "Inclusively",
    "skills": "python"
  },
  {
    "job_id": 731368,
    "job_title": "Director, Data Analyst - HYBRID",
    "job_posted_date": "2023-12-07 15:00:13",
    "salary_year_avg": "189309.0",
    "company_name": "Inclusively",
    "skills": "azure"
  },
  {
    "job_id": 731368,
    "job_title": "Director, Data Analyst - HYBRID",
    "job_posted_date": "2023-12-07 15:00:13",
    "salary_year_avg": "189309.0",
    "company_name": "Inclusively",
    "skills": "aws"
  },
  {
    "job_id": 731368,
    "job_title": "Director, Data Analyst - HYBRID",
    "job_posted_date": "2023-12-07 15:00:13",
    "salary_year_avg": "189309.0",
    "company_name": "Inclusively",
    "skills": "oracle"
  },
  {
    "job_id": 731368,
    "job_title": "Director, Data Analyst - HYBRID",
    "job_posted_date": "2023-12-07 15:00:13",
    "salary_year_avg": "189309.0",
    "company_name": "Inclusively",
    "skills": "snowflake"
  },
  {
    "job_id": 731368,
    "job_title": "Director, Data Analyst - HYBRID",
    "job_posted_date": "2023-12-07 15:00:13",
    "salary_year_avg": "189309.0",
    "company_name": "Inclusively",
    "skills": "tableau"
  },
  {
    "job_id": 731368,
    "job_title": "Director, Data Analyst - HYBRID",
    "job_posted_date": "2023-12-07 15:00:13",
    "salary_year_avg": "189309.0",
    "company_name": "Inclusively",
    "skills": "power bi"
  },
  {
    "job_id": 731368,
    "job_title": "Director, Data Analyst - HYBRID",
    "job_posted_date": "2023-12-07 15:00:13",
    "salary_year_avg": "189309.0",
    "company_name": "Inclusively",
    "skills": "sap"
  },
  {
    "job_id": 731368,
    "job_title": "Director, Data Analyst - HYBRID",
    "job_posted_date": "2023-12-07 15:00:13",
    "salary_year_avg": "189309.0",
    "company_name": "Inclusively",
    "skills": "jenkins"
  },
  {
    "job_id": 731368,
    "job_title": "Director, Data Analyst - HYBRID",
    "job_posted_date": "2023-12-07 15:00:13",
    "salary_year_avg": "189309.0",
    "company_name": "Inclusively",
    "skills": "bitbucket"
  },
  {
    "job_id": 731368,
    "job_title": "Director, Data Analyst - HYBRID",
    "job_posted_date": "2023-12-07 15:00:13",
    "salary_year_avg": "189309.0",
    "company_name": "Inclusively",
    "skills": "atlassian"
  },
  {
    "job_id": 731368,
    "job_title": "Director, Data Analyst - HYBRID",
    "job_posted_date": "2023-12-07 15:00:13",
    "salary_year_avg": "189309.0",
    "company_name": "Inclusively",
    "skills": "jira"
  },
  {
    "job_id": 731368,
    "job_title": "Director, Data Analyst - HYBRID",
    "job_posted_date": "2023-12-07 15:00:13",
    "salary_year_avg": "189309.0",
    "company_name": "Inclusively",
    "skills": "confluence"
  },
  {
    "job_id": 310660,
    "job_title": "Principal Data Analyst, AV Performance Analysis",
    "job_posted_date": "2023-01-05 00:00:25",
    "salary_year_avg": "189000.0",
    "company_name": "Motional",
    "skills": "sql"
  },
  {
    "job_id": 310660,
    "job_title": "Principal Data Analyst, AV Performance Analysis",
    "job_posted_date": "2023-01-05 00:00:25",
    "salary_year_avg": "189000.0",
    "company_name": "Motional",
    "skills": "python"
  },
  {
    "job_id": 310660,
    "job_title": "Principal Data Analyst, AV Performance Analysis",
    "job_posted_date": "2023-01-05 00:00:25",
    "salary_year_avg": "189000.0",
    "company_name": "Motional",
    "skills": "r"
  },
  {
    "job_id": 310660,
    "job_title": "Principal Data Analyst, AV Performance Analysis",
    "job_posted_date": "2023-01-05 00:00:25",
    "salary_year_avg": "189000.0",
    "company_name": "Motional",
    "skills": "git"
  },
  {
    "job_id": 310660,
    "job_title": "Principal Data Analyst, AV Performance Analysis",
    "job_posted_date": "2023-01-05 00:00:25",
    "salary_year_avg": "189000.0",
    "company_name": "Motional",
    "skills": "bitbucket"
  },
  {
    "job_id": 310660,
    "job_title": "Principal Data Analyst, AV Performance Analysis",
    "job_posted_date": "2023-01-05 00:00:25",
    "salary_year_avg": "189000.0",
    "company_name": "Motional",
    "skills": "atlassian"
  },
  {
    "job_id": 310660,
    "job_title": "Principal Data Analyst, AV Performance Analysis",
    "job_posted_date": "2023-01-05 00:00:25",
    "salary_year_avg": "189000.0",
    "company_name": "Motional",
    "skills": "jira"
  },
  {
    "job_id": 310660,
    "job_title": "Principal Data Analyst, AV Performance Analysis",
    "job_posted_date": "2023-01-05 00:00:25",
    "salary_year_avg": "189000.0",
    "company_name": "Motional",
    "skills": "confluence"
  },
  {
    "job_id": 1749593,
    "job_title": "Principal Data Analyst",
    "job_posted_date": "2023-07-11 16:00:05",
    "salary_year_avg": "186000.0",
    "company_name": "SmartAsset",
    "skills": "sql"
  },
  {
    "job_id": 1749593,
    "job_title": "Principal Data Analyst",
    "job_posted_date": "2023-07-11 16:00:05",
    "salary_year_avg": "186000.0",
    "company_name": "SmartAsset",
    "skills": "python"
  },
  {
    "job_id": 1749593,
    "job_title": "Principal Data Analyst",
    "job_posted_date": "2023-07-11 16:00:05",
    "salary_year_avg": "186000.0",
    "company_name": "SmartAsset",
    "skills": "go"
  },
  {
    "job_id": 1749593,
    "job_title": "Principal Data Analyst",
    "job_posted_date": "2023-07-11 16:00:05",
    "salary_year_avg": "186000.0",
    "company_name": "SmartAsset",
    "skills": "snowflake"
  },
  {
    "job_id": 1749593,
    "job_title": "Principal Data Analyst",
    "job_posted_date": "2023-07-11 16:00:05",
    "salary_year_avg": "186000.0",
    "company_name": "SmartAsset",
    "skills": "pandas"
  },
  {
    "job_id": 1749593,
    "job_title": "Principal Data Analyst",
    "job_posted_date": "2023-07-11 16:00:05",
    "salary_year_avg": "186000.0",
    "company_name": "SmartAsset",
    "skills": "numpy"
  },
  {
    "job_id": 1749593,
    "job_title": "Principal Data Analyst",
    "job_posted_date": "2023-07-11 16:00:05",
    "salary_year_avg": "186000.0",
    "company_name": "SmartAsset",
    "skills": "excel"
  },
  {
    "job_id": 1749593,
    "job_title": "Principal Data Analyst",
    "job_posted_date": "2023-07-11 16:00:05",
    "salary_year_avg": "186000.0",
    "company_name": "SmartAsset",
    "skills": "tableau"
  },
  {
    "job_id": 1749593,
    "job_title": "Principal Data Analyst",
    "job_posted_date": "2023-07-11 16:00:05",
    "salary_year_avg": "186000.0",
    "company_name": "SmartAsset",
    "skills": "gitlab"
  },
  {
    "job_id": 387860,
    "job_title": "ERM Data Analyst",
    "job_posted_date": "2023-06-09 08:01:04",
    "salary_year_avg": "184000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 387860,
    "job_title": "ERM Data Analyst",
    "job_posted_date": "2023-06-09 08:01:04",
    "salary_year_avg": "184000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "python"
  },
  {
    "job_id": 387860,
    "job_title": "ERM Data Analyst",
    "job_posted_date": "2023-06-09 08:01:04",
    "salary_year_avg": "184000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "r"
  },
  {
    "job_id": 1781684,
    "job_title": "DTCC Data Analyst",
    "job_posted_date": "2023-10-06 00:01:41",
    "salary_year_avg": "170000.0",
    "company_name": "Robert Half",
    "skills": "java"
  },
  {
    "job_id": 1781684,
    "job_title": "DTCC Data Analyst",
    "job_posted_date": "2023-10-06 00:01:41",
    "salary_year_avg": "170000.0",
    "company_name": "Robert Half",
    "skills": "go"
  },
  {
    "job_id": 1781684,
    "job_title": "DTCC Data Analyst",
    "job_posted_date": "2023-10-06 00:01:41",
    "salary_year_avg": "170000.0",
    "company_name": "Robert Half",
    "skills": "excel"
  },
  {
    "job_id": 1352513,
    "job_title": "REMOTE Director of Data Analytics",
    "job_posted_date": "2023-08-09 14:02:45",
    "salary_year_avg": "170000.0",
    "company_name": "A-Line Staffing Solutions",
    "skills": "sql"
  },
  {
    "job_id": 1352513,
    "job_title": "REMOTE Director of Data Analytics",
    "job_posted_date": "2023-08-09 14:02:45",
    "salary_year_avg": "170000.0",
    "company_name": "A-Line Staffing Solutions",
    "skills": "python"
  },
  {
    "job_id": 1352513,
    "job_title": "REMOTE Director of Data Analytics",
    "job_posted_date": "2023-08-09 14:02:45",
    "salary_year_avg": "170000.0",
    "company_name": "A-Line Staffing Solutions",
    "skills": "azure"
  },
  {
    "job_id": 987523,
    "job_title": "Azure Data Python Consultant - contract to HIRE - Citizen or Perm...",
    "job_posted_date": "2023-01-23 22:28:01",
    "salary_year_avg": "170000.0",
    "company_name": "Kelly Science, Engineering, Technology & Telecom",
    "skills": "sql"
  },
  {
    "job_id": 987523,
    "job_title": "Azure Data Python Consultant - contract to HIRE - Citizen or Perm...",
    "job_posted_date": "2023-01-23 22:28:01",
    "salary_year_avg": "170000.0",
    "company_name": "Kelly Science, Engineering, Technology & Telecom",
    "skills": "python"
  },
  {
    "job_id": 987523,
    "job_title": "Azure Data Python Consultant - contract to HIRE - Citizen or Perm...",
    "job_posted_date": "2023-01-23 22:28:01",
    "salary_year_avg": "170000.0",
    "company_name": "Kelly Science, Engineering, Technology & Telecom",
    "skills": "azure"
  },
  {
    "job_id": 987523,
    "job_title": "Azure Data Python Consultant - contract to HIRE - Citizen or Perm...",
    "job_posted_date": "2023-01-23 22:28:01",
    "salary_year_avg": "170000.0",
    "company_name": "Kelly Science, Engineering, Technology & Telecom",
    "skills": "databricks"
  },
  {
    "job_id": 987523,
    "job_title": "Azure Data Python Consultant - contract to HIRE - Citizen or Perm...",
    "job_posted_date": "2023-01-23 22:28:01",
    "salary_year_avg": "170000.0",
    "company_name": "Kelly Science, Engineering, Technology & Telecom",
    "skills": "power bi"
  },
  {
    "job_id": 1525451,
    "job_title": "Manager, Data Analyst",
    "job_posted_date": "2023-04-18 07:01:17",
    "salary_year_avg": "167000.0",
    "company_name": "Uber",
    "skills": "sql"
  },
  {
    "job_id": 1525451,
    "job_title": "Manager, Data Analyst",
    "job_posted_date": "2023-04-18 07:01:17",
    "salary_year_avg": "167000.0",
    "company_name": "Uber",
    "skills": "python"
  },
  {
    "job_id": 1525451,
    "job_title": "Manager, Data Analyst",
    "job_posted_date": "2023-04-18 07:01:17",
    "salary_year_avg": "167000.0",
    "company_name": "Uber",
    "skills": "r"
  },
  {
    "job_id": 1525451,
    "job_title": "Manager, Data Analyst",
    "job_posted_date": "2023-04-18 07:01:17",
    "salary_year_avg": "167000.0",
    "company_name": "Uber",
    "skills": "swift"
  },
  {
    "job_id": 1525451,
    "job_title": "Manager, Data Analyst",
    "job_posted_date": "2023-04-18 07:01:17",
    "salary_year_avg": "167000.0",
    "company_name": "Uber",
    "skills": "excel"
  },
  {
    "job_id": 1525451,
    "job_title": "Manager, Data Analyst",
    "job_posted_date": "2023-04-18 07:01:17",
    "salary_year_avg": "167000.0",
    "company_name": "Uber",
    "skills": "tableau"
  },
  {
    "job_id": 1525451,
    "job_title": "Manager, Data Analyst",
    "job_posted_date": "2023-04-18 07:01:17",
    "salary_year_avg": "167000.0",
    "company_name": "Uber",
    "skills": "looker"
  },
  {
    "job_id": 1246069,
    "job_title": "Data Analyst",
    "job_posted_date": "2023-12-08 09:16:37",
    "salary_year_avg": "165000.0",
    "company_name": "Plexus Resource Solutions",
    "skills": "python"
  },
  {
    "job_id": 1246069,
    "job_title": "Data Analyst",
    "job_posted_date": "2023-12-08 09:16:37",
    "salary_year_avg": "165000.0",
    "company_name": "Plexus Resource Solutions",
    "skills": "mysql"
  },
  {
    "job_id": 1246069,
    "job_title": "Data Analyst",
    "job_posted_date": "2023-12-08 09:16:37",
    "salary_year_avg": "165000.0",
    "company_name": "Plexus Resource Solutions",
    "skills": "aws"
  },
  {
    "job_id": 712473,
    "job_title": "Data Analyst",
    "job_posted_date": "2023-08-14 16:01:19",
    "salary_year_avg": "165000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sql"
  },
  {
    "job_id": 712473,
    "job_title": "Data Analyst",
    "job_posted_date": "2023-08-14 16:01:19",
    "salary_year_avg": "165000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "python"
  },
  {
    "job_id": 712473,
    "job_title": "Data Analyst",
    "job_posted_date": "2023-08-14 16:01:19",
    "salary_year_avg": "165000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "r"
  },
  {
    "job_id": 712473,
    "job_title": "Data Analyst",
    "job_posted_date": "2023-08-14 16:01:19",
    "salary_year_avg": "165000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sas"
  },
  {
    "job_id": 712473,
    "job_title": "Data Analyst",
    "job_posted_date": "2023-08-14 16:01:19",
    "salary_year_avg": "165000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "matlab"
  },
  {
    "job_id": 712473,
    "job_title": "Data Analyst",
    "job_posted_date": "2023-08-14 16:01:19",
    "salary_year_avg": "165000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "pandas"
  },
  {
    "job_id": 712473,
    "job_title": "Data Analyst",
    "job_posted_date": "2023-08-14 16:01:19",
    "salary_year_avg": "165000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "tableau"
  },
  {
    "job_id": 712473,
    "job_title": "Data Analyst",
    "job_posted_date": "2023-08-14 16:01:19",
    "salary_year_avg": "165000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "looker"
  },
  {
    "job_id": 712473,
    "job_title": "Data Analyst",
    "job_posted_date": "2023-08-14 16:01:19",
    "salary_year_avg": "165000.0",
    "company_name": "Get It Recruit - Information Technology",
    "skills": "sas"
  },
  {
    "job_id": 618890,
    "job_title": "Principal Data Intelligence Analyst - Cardiac - Remote",
    "job_posted_date": "2023-09-20 13:00:44",
    "salary_year_avg": "163500.0",
    "company_name": "CEDARS-SINAI",
    "skills": "sas"
  },
  {
    "job_id": 618890,
    "job_title": "Principal Data Intelligence Analyst - Cardiac - Remote",
    "job_posted_date": "2023-09-20 13:00:44",
    "salary_year_avg": "163500.0",
    "company_name": "CEDARS-SINAI",
    "skills": "go"
  },
  {
    "job_id": 618890,
    "job_title": "Principal Data Intelligence Analyst - Cardiac - Remote",
    "job_posted_date": "2023-09-20 13:00:44",
    "salary_year_avg": "163500.0",
    "company_name": "CEDARS-SINAI",
    "skills": "crystal"
  },
  {
    "job_id": 618890,
    "job_title": "Principal Data Intelligence Analyst - Cardiac - Remote",
    "job_posted_date": "2023-09-20 13:00:44",
    "salary_year_avg": "163500.0",
    "company_name": "CEDARS-SINAI",
    "skills": "tableau"
  },
  {
    "job_id": 618890,
    "job_title": "Principal Data Intelligence Analyst - Cardiac - Remote",
    "job_posted_date": "2023-09-20 13:00:44",
    "salary_year_avg": "163500.0",
    "company_name": "CEDARS-SINAI",
    "skills": "sas"
  },
  {
    "job_id": 918213,
    "job_title": "Senior - Data Analyst",
    "job_posted_date": "2023-06-14 21:01:17",
    "salary_year_avg": "160515.0",
    "company_name": "DIRECTV",
    "skills": "sql"
  },
  {
    "job_id": 918213,
    "job_title": "Senior - Data Analyst",
    "job_posted_date": "2023-06-14 21:01:17",
    "salary_year_avg": "160515.0",
    "company_name": "DIRECTV",
    "skills": "python"
  },
  {
    "job_id": 918213,
    "job_title": "Senior - Data Analyst",
    "job_posted_date": "2023-06-14 21:01:17",
    "salary_year_avg": "160515.0",
    "company_name": "DIRECTV",
    "skills": "scala"
  },
  {
    "job_id": 918213,
    "job_title": "Senior - Data Analyst",
    "job_posted_date": "2023-06-14 21:01:17",
    "salary_year_avg": "160515.0",
    "company_name": "DIRECTV",
    "skills": "r"
  },
  {
    "job_id": 918213,
    "job_title": "Senior - Data Analyst",
    "job_posted_date": "2023-06-14 21:01:17",
    "salary_year_avg": "160515.0",
    "company_name": "DIRECTV",
    "skills": "mysql"
  },
  {
    "job_id": 918213,
    "job_title": "Senior - Data Analyst",
    "job_posted_date": "2023-06-14 21:01:17",
    "salary_year_avg": "160515.0",
    "company_name": "DIRECTV",
    "skills": "postgresql"
  },
  {
    "job_id": 918213,
    "job_title": "Senior - Data Analyst",
    "job_posted_date": "2023-06-14 21:01:17",
    "salary_year_avg": "160515.0",
    "company_name": "DIRECTV",
    "skills": "couchbase"
  },
  {
    "job_id": 918213,
    "job_title": "Senior - Data Analyst",
    "job_posted_date": "2023-06-14 21:01:17",
    "salary_year_avg": "160515.0",
    "company_name": "DIRECTV",
    "skills": "azure"
  },
  {
    "job_id": 918213,
    "job_title": "Senior - Data Analyst",
    "job_posted_date": "2023-06-14 21:01:17",
    "salary_year_avg": "160515.0",
    "company_name": "DIRECTV",
    "skills": "databricks"
  },
  {
    "job_id": 918213,
    "job_title": "Senior - Data Analyst",
    "job_posted_date": "2023-06-14 21:01:17",
    "salary_year_avg": "160515.0",
    "company_name": "DIRECTV",
    "skills": "aws"
  },
  {
    "job_id": 918213,
    "job_title": "Senior - Data Analyst",
    "job_posted_date": "2023-06-14 21:01:17",
    "salary_year_avg": "160515.0",
    "company_name": "DIRECTV",
    "skills": "redshift"
  },
  {
    "job_id": 918213,
    "job_title": "Senior - Data Analyst",
    "job_posted_date": "2023-06-14 21:01:17",
    "salary_year_avg": "160515.0",
    "company_name": "DIRECTV",
    "skills": "oracle"
  },
  {
    "job_id": 918213,
    "job_title": "Senior - Data Analyst",
    "job_posted_date": "2023-06-14 21:01:17",
    "salary_year_avg": "160515.0",
    "company_name": "DIRECTV",
    "skills": "snowflake"
  },
  {
    "job_id": 918213,
    "job_title": "Senior - Data Analyst",
    "job_posted_date": "2023-06-14 21:01:17",
    "salary_year_avg": "160515.0",
    "company_name": "DIRECTV",
    "skills": "watson"
  },
  {
    "job_id": 918213,
    "job_title": "Senior - Data Analyst",
    "job_posted_date": "2023-06-14 21:01:17",
    "salary_year_avg": "160515.0",
    "company_name": "DIRECTV",
    "skills": "pyspark"
  },
  {
    "job_id": 918213,
    "job_title": "Senior - Data Analyst",
    "job_posted_date": "2023-06-14 21:01:17",
    "salary_year_avg": "160515.0",
    "company_name": "DIRECTV",
    "skills": "airflow"
  },
  {
    "job_id": 918213,
    "job_title": "Senior - Data Analyst",
    "job_posted_date": "2023-06-14 21:01:17",
    "salary_year_avg": "160515.0",
    "company_name": "DIRECTV",
    "skills": "linux"
  },
  {
    "job_id": 918213,
    "job_title": "Senior - Data Analyst",
    "job_posted_date": "2023-06-14 21:01:17",
    "salary_year_avg": "160515.0",
    "company_name": "DIRECTV",
    "skills": "tableau"
  },
  {
    "job_id": 918213,
    "job_title": "Senior - Data Analyst",
    "job_posted_date": "2023-06-14 21:01:17",
    "salary_year_avg": "160515.0",
    "company_name": "DIRECTV",
    "skills": "ssis"
  },
  {
    "job_id": 918213,
    "job_title": "Senior - Data Analyst",
    "job_posted_date": "2023-06-14 21:01:17",
    "salary_year_avg": "160515.0",
    "company_name": "DIRECTV",
    "skills": "cognos"
  },
  {
    "job_id": 918213,
    "job_title": "Senior - Data Analyst",
    "job_posted_date": "2023-06-14 21:01:17",
    "salary_year_avg": "160515.0",
    "company_name": "DIRECTV",
    "skills": "visio"
  }
]
*/