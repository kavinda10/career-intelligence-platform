
Source Column (postings.csv)     Target Table      Target ColumnTransformation / Notes
job_id                           job_postings           job_idPrimary Key, Integertitlejob
company_name                     companies           company_nameText, standardizes company namescompany_idcompaniescompany_idUnique ID for 
location	                       locations	            location_name	    Text (e.g., "Austin, TX")
formatted_experience_level	  experience_levels	   experience_level	  Cleansed string (e.g., "Mid-Senior")
formatted_work_type	           work_types                 	work_type	Cleansed string (e.g., "Full-time")
