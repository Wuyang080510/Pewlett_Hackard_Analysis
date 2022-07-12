-- Check the number of employees born between 1952 to 1955

SELECT COUNT(*) AS TOTAL_BOOMERS
FROM
	(SELECT FIRST_NAME,
			LAST_NAME
		FROM EMPLOYEES
		WHERE BIRTH_DATE BETWEEN '1952-01-01' AND '1955-12-31') AS TEMP_TABLE;

-- Check employees born in 1952
SELECT FIRST_NAME,
	LAST_NAME
FROM EMPLOYEES
WHERE BIRTH_DATE BETWEEN '1952-01-01' AND '1952-12-31';

-- Retirement EligibilityS
SELECT COUNT(*) AS total_retiring 
FROM(
	SELECT first_name, last_name
FROM employees
WHERE 
(birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND
(hire_date BETWEEN '1985-01-01' AND '1988-12-31')
	) AS retiring_employees;


SELECT count(first_name)
FROM employees
WHERE 
(birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND
(hire_date BETWEEN '1985-01-01' AND '1988-12-31');

-- Create retirement eligiable employees table
SELECT first_name, last_name
INTO retirement_info
FROM employees
WHERE 
(birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND
(hire_date BETWEEN '1985-01-01' AND '1988-12-31');

SELECT * FROM retirement_info;