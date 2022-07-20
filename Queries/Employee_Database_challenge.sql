-- Create a retirement_titles table that holds eligiable retiring employees' information
SELECT e.emp_no, e.first_name, e.last_name, t.title, t.from_date, t.to_date
INTO retirement_titles
FROM employees e 
JOIN titles t ON e.emp_no = t.emp_no
WHERE e.birth_date BETWEEN '1952-01-01' AND '1955-12-31'
ORDER BY e.emp_no;

-- Create table unique_titles that holds the most recent tile of each employee
SELECT DISTINCT ON (emp_no) emp_no, first_name, last_name, title
INTO unique_titles
FROM retirement_titles
WHERE to_date ='9999-01-01'
ORDER BY emp_no ASC, from_date DESC;

-- Count the number of retiring employees by their most recent job title
SELECT COUNT(emp_no) AS count, title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY count DESC;

-- Create a mentorship eligiablity table that holds the employees who are eligiable to participate in a mentorship program
SELECT DISTINCT ON(e.emp_no) e.emp_no, e.first_name, e.last_name, e.birth_date, de.from_date, de.to_date, t.title
INTO mentorship_eligibility
FROM employees e 
JOIN dept_emp de ON e.emp_no = de.emp_no
JOIN titles t ON t.emp_no = e.emp_no
WHERE 
(de.to_date ='9999-01-01')
AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no ASC, t.from_date DESC;
