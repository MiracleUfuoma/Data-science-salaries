SELECT *
FROM [Ds salaries].[dbo].[ds_salaries]

--Formated company size
Select company_size,
       CASE
       WHEN company_size = 'L' THEN 'Large'
	   WHEN company_size = 'S' THEN 'Small'
	   WHEN company_size = 'M' THEN 'Medium'
	   ELSE company_size
	END AS formated_company_size
FROM [Ds salaries].[dbo].[ds_salaries]

--Formated employment type
Select employment_type,
       CASE
       WHEN employment_type = 'FT' THEN 'FullTime'
	   WHEN employment_type = 'CT' THEN 'Contract'
	   ELSE employment_type
	END AS formated_employment_type
FROM [Ds salaries].[dbo].[ds_salaries]

--Average Salary
select AVG(salary) AS average_salary 
FROM [Ds salaries].[dbo].[ds_salaries]

--Salary Range
select MIN(salary) AS minimum_salary
FROM [Ds salaries].[dbo].[ds_salaries]
 select MAX(salary) AS maximum_salary
FROM [Ds salaries].[dbo].[ds_salaries]

-- Experience vs Salary
select experience_level,
AVG(salary) AS Average_salary
FROM [Ds salaries].[dbo].[ds_salaries]
GROUP BY experience_level

-- Employment type VS salary
select employment_type,
       AVG(salary) AS Average_salary
FROM [Ds salaries].[dbo].[ds_salaries]
GROUP BY employment_type

-- Job Title with highest salaries
select TOP 10 
       job_title ,
       AVG(salary) AS Average_salary 
FROM [Ds salaries].[dbo].[ds_salaries]
GROUP BY job_title 
ORDER BY Average_salary DESC

-- Company location VS Salary
select company_location,
AVG(salary) AS Average_salary
FROM [Ds salaries].[dbo].[ds_salaries]
GROUP BY company_location
ORDER BY Average_salary DESC

