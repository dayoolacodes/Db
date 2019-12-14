/*Quest 1:
Write a query in SQL to display the full name (first and last name), 
and salary for those employees who earn below 6000
*/
SELECT 
    CONCAT(FIRST_NAME, ' ', LAST_NAME) AS 'Full Name', Salary
FROM
    employees
WHERE
    SALARY < 6000;
/*Quest 2:
Write a query in SQL to display the first name, last name, 
department ID, and department name for each employee.
*/
SELECT 
    First_Name, Last_name, d.Department_ID, DEPARTMENT_NAME
FROM
    employees
        JOIN
    departments d USING (Department_ID);

/*Quest 3:
Write a query in SQL to display the first and last_name, 
department number and salary for those employees who earn more than 8000
*/
SELECT 
    First_Name,
    Last_name,
    d.Department_ID AS "Department Number",
    salary
FROM
    employees e
        JOIN
    departments d USING (Department_ID)
WHERE
    SALARY > 8000;
/*Quest 4:
Write a query in SQL to display the first and last name, 
and department number for all employees whose last name is “McEwen”
*/
SELECT 
    First_Name, Last_Name, Department_ID AS "Department Number"
FROM
    Employees
WHERE
    Last_Name LIKE 'McEwen';

/*Quest 5:
Write a query in SQL to display the full name (first and last), hire date, salary, and 
department number for those employees whose first name does not containing the letter M 
and make the result set in ascending order by department number.
*/
SELECT 
    CONCAT(First_Name, ' ', Last_Name) AS Full_Name,
    hire_date,
    Salary,
    Department_ID AS 'Department Number'
FROM
    Employees
WHERE
    First_Name NOT LIKE '%M%'
ORDER BY Department_ID ASC;

/*Quest 6:
Write a query in SQL to display the full name (first and last), 
the phone number and email separated by hyphen, and salary, 
for those employees whose salary is within the range of 9000 and 17000. 
The column headings assign with Full_Name, Contact_Detailsand Remuneration respectively
*/
SELECT 
    CONCAT(First_Name, ' ', Last_Name) AS Full_Name,
    CONCAT(phone_number, ' - ', email) AS Contact_Details,
    Salary AS Renumeration
FROM
    employees
WHERE
    Salary BETWEEN 9000 AND 17000;

/*Quest 7:
Write a query in SQL to display the full name (first and last), 
job id and date of hire for those employees who was hired 
during May 24th, 2007 and April 21st, 2008.
*/
SELECT 
    CONCAT(First_Name, ' ', Last_Name) AS Full_Name,
    JOB_ID,
    hire_date
FROM
    employees
WHERE
    HIRE_DATE BETWEEN '2007-05-24' AND '2008-04-21';

/*Quest 8:
Write a query in SQL to display the thefull name (first and last name), and
department number for those employees who works either in department 60 or 80.
*/
SELECT 
    CONCAT(First_Name, ' ', Last_Name) AS Full_Name,
    DEPARTMENT_ID AS "Department Number"
FROM
    employees
WHERE
    DEPARTMENT_ID = 60 OR DEPARTMENT_ID = 80;

/*Quest 9:
Write a query in SQL to display the first and last name, departmentID, city, 
and state province for each employee.
*/
SELECT 
    First_Name, Last_Name, department_Id, city, State_Province
FROM
    employees
        JOIN
    departments d USING (Department_Id)
        JOIN
    Locations USING (Location_ID);

/*Quest 10:
Write a query in SQL to display the first name, last name, salary, and job grade for all employees
		
        PS: According to the ER Model given Job Grade has no relationship with any of the tables, 
        therefore Job ID and Job Title could be used as Job grade
*/
SELECT 
    First_Name,
    Last_Name,
    department_Id,
    Salary,
    Job_ID,
    Job_Title
FROM
    employees
        JOIN
    jobs USING (job_Id)










