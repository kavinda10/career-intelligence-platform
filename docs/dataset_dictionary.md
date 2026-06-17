 Dataset Dictionary

| Column | Meaning | Data Type | Business Use |
| :--- | :--- | :--- | :--- |
| `job_id` | Unique identifier for the job posting | Integer | Primary Key / Core Tracking |
| `company_name` | Name of the hiring company | Text | Company Analytics & Filtering |
| `title` | Job title (e.g., Data Engineer) | Text | Role Classification & Search |
| `description` | Full text of the job description | Text | NLP & Keyword Extraction |
| `max_salary` | Maximum salary offered | Float | Compensation Benchmarking |
| `pay_period` | Frequency of pay (Hourly, Monthly, Yearly) | Text | Salary Normalization |
| `location` | General location (City, State) | Text | Geographic Targeting |
| `company_id` | Unique identifier for the company | Integer | Foreign Key to Company Tables |
| `views` | Number of times the posting was viewed | Integer | Popularity & Engagement Metrics |
| `med_salary` | Median salary offered | Float | Compensation Benchmarking |
| `min_salary` | Minimum salary offered | Float | Compensation Benchmarking |
| `formatted_work_type` | Standardized type (Full-time, Contract) | Text | Job Type Filtering |
| `applies` | Number of applications submitted | Integer | Conversion Rate Analytics |
| `original_listed_time` | Timestamp when initially posted | Timestamp | Job Aging Analysis |
| `remote_allowed` | Indicates if the job is remote | Boolean | Remote Work Trend Tracking |
| `job_posting_url` | Direct LinkedIn URL to the job | Text | Source Auditing & Routing |
| `application_url` | External URL for applying | Text | External Conversion Tracking |
| `application_type` | How the user applies (On-site vs Off-site) | Text | Application Funnel Analytics |
| `expiry` | Timestamp when the job posting expires | Timestamp | SLA & Validity Tracking |
| `closed_time` | Timestamp when the job was closed | Timestamp | Time-to-Fill Metrics |
| `formatted_experience_level` | Seniority (Entry-level, Director, etc.) | Text | Seniority Targeting |
| `skills_desc` | Specific skills required for the role | Text | Skill Gap & Demand Analysis |
| `listed_time` | Timestamp of the most recent listing | Timestamp | Freshness Tracking |
| `posting_domain` | Website domain of the external application | Text | Platform & Competitor Analytics |
| `sponsored` | Indicates if the posting is a paid ad | Boolean | Marketing Revenue Metrics |
| `work_type` | Raw work type categorization | Text | Job Type Filtering |
| `currency` | Currency of the salary (USD, EUR, etc.) | Text | Financial Normalization |
| `compensation_type` | Base salary vs Bonus/Equity | Text | Total Rewards Analysis |
| `normalized_salary` | Standardized annualized salary | Float | Cross-Currency Benchmarking |
| `zip_code` | Postal code of the job location | Text | Granular Geographic Mapping |
| `fips` | Federal Information Processing Standard code | Text | Demographic & Government Data Joins |
