# Pewlett_Hackard_Analysis
Build an employee database with SQL and apply data modeling, engineering, and analysis skills to the project. 

## Project Overview
Pewlett Hackard is a large company with several thousands of employees. As many current employees are reaching retirement age, Pewlett Hackard is looking for a way to keep the company running smoothly as a significant portion of its workforce is about to retire. Pewlett Hackard needs to generate a plan to make a smooth transition between retirees and new hires.
There are four things Pewlett Hackard wants to address from this Employee Database Analysis project:
- The number of current employees that are going to retire in the near future. 
- The positions are going to be vacant due to employee retirement. 
- The number of positions that need to fill with new hires.
- The number of retiring employees that are eligible for a mentorship program.

### Purpose
- Create entire Entity Relationship Diagrams that identify relationships between six data tables that hold different employee information. 
- Perform data modeling that creates a clear database structure and data flow paths.
- Create and use a SQL database in Postgres.
- Use structured query language to explore and manipulate data in PgAdmin.
- Import and export large CSV datasets into pgAdmin.
- Use different joins, aggregate functions, and WHERE statement to create new tables in pgAdmin.

## Results

Deliverable 1:
- 72,458 employees are going to retire in the near future. 
- These employees fall in 7 different title categories. Most of the retiring employees are senior level employees. 

![retiring_title](https://github.com/Wuyang080510/Pewlett_Hackard_Analysis/blob/main/Images/retiring_titles.png)

Deliverable 2:
- 1549 current employees are eligiable to participate the mentorship program.
- These employees fall into 6 positions. If the company is going to fill all the vacancies, the overall ratio of mentor to new hires is around 1 mentor to 46 new hires. The Staff position has the lowest mentor to new hire ratio of 1 mentor to 49 new hires. The Assistant Engineer position has a higher mentor to new hire ratio of 1 to 37. Group mentoring is a suitable metoring type for Pewlett Hackard. 

![mentor_vacancies_ratio_by_title_query](https://github.com/Wuyang080510/Pewlett_Hackard_Analysis/blob/main/Images/metor%20to%20vacancies%20ratio%20by%20title%20query%20.png)

![mentor_to_vacancy_by_title](https://github.com/Wuyang080510/Pewlett_Hackard_Analysis/blob/main/Images/mentor_to_vacancy_by_title.png)

## Summary 
Among the 72,458 retiring employees, 25,916 employees have the title of Senior Engineer, and 24,926 employees with the title of Senior Staff. Retiring employees with these two titles make up 70% of the total retiring employees. This number indicates that Pewlett has a high hiring need for engineers and staff. The Development, Production, and Sales Departments are the top 3 departments with the highest number of retiring employees. The Human Resource Department needs to evaluate the skills gaps with the leave of these employees, and form structured plans for recruitment, internal promotion, and knowledge transfer.

![future_retirees_by_department](https://github.com/Wuyang080510/Pewlett_Hackard_Analysis/blob/main/Images/Vacancies%20by%20department.png)

As mentioned in the result section, the overall mentor to new hire ratio by position is 1 to 46. 
To show the mentors for each department, I joined the mentorhip_eligibility table with the departments table and dept_emp table. Development Department has the highest number of eligible mentors. 

![mentors by department query](https://github.com/Wuyang080510/Pewlett_Hackard_Analysis/blob/main/Images/eligible%20mentors%20for%20each%20department%20query.png)

![mentors_by_department](https://github.com/Wuyang080510/Pewlett_Hackard_Analysis/blob/main/Images/eligibille%20mentors%20by%20department.png)

To check if there are enough qualified, retirement-ready employees in each department to mentor the next generation of Pewlett Hackard employees, I created a new table that divides future vacancies and mentors into departments. Judging from the vacancies and mentors in each department, the overall mentor to new hire ratio is around 1 to 42. There are fewer mentors for new employees in the Finance Department, but the gap is not significant compared to other departments.  

![mentor to vacancies ratio by department query](https://github.com/Wuyang080510/Pewlett_Hackard_Analysis/blob/main/Images/mentor%20to%20vacancies%20ratio%20by%20department%20query.png)

![vacancy_mentor_ratio_by_department](https://github.com/Wuyang080510/Pewlett_Hackard_Analysis/blob/main/Images/mentor%20to%20vacancies%20ratio%20by%20department.png)

Based on the above information, group mentoring would be a good choice for implementing a mentorship program for Pewlett Hackard. This type of mentorship is great to provide a general direction on the workflow process and to share multiple levels of expertise and knowledge efficiently. However, different members have different needs, and 1-on-1 mentorship offers a better "personal" relationship between mentors and new employees. It would be a good choice for Pewlett Hackard to provide on-request 1-on-1 mentorship to its new hires. This way, the mentor can help new employees identify and correct the personal gaps in generic skills and knowledge in their new positions.  
