create database data_new;
use data_new;

-- 1	Show all columns and rows in the table.
select * from salaries;


-- 2	Show only the EmployeeName and JobTitle columns.
select EmployeeName,JobTitle from salaries;


-- 3	Show the number of employees in the table.
select count(*) as Number_of_Employees from salaries;

-- 4	Show the unique job titles and it's count in the table.
SELECT DISTINCT
    JobTitle
FROM
    salaries;

SELECT 
    COUNT(Jobtitle)
FROM
    salaries;

SELECT 
    COUNT(DISTINCT (JobTitle))
FROM
    salaries;

-- 5	Show the job title and overtime pay for top 10 employees with overtime pay greater than 50000.
SELECT 
    JobTitle, OvertimePay
FROM
    salaries
WHERE
    OvertimePay > 50000
LIMIT 10;

-- 6	Show the average base pay for all employees.
SELECT 
    AVG(BasePay) AS 'Avg BasePay'
FROM
    salaries;

-- 7	Show the top 10 highest paid employees.
SELECT 
    EmployeeName, TotalPay
FROM
    salaries
ORDER BY TotalPay DESC
LIMIT 10;

-- 8	Show the average of BasePay, OvertimePay, and OtherPay for each employee:

SELECT 
    EmployeeName,
    (BasePay + OvertimePay + OtherPay) / 3 AS avg_of_bp_op_otherpay
FROM
    salaries;

-- 9	Show all employees who have the word "Manager" in their job title.
SELECT 
    EmployeeName, JobTitle
FROM
    salaries
WHERE
    JobTitle LIKE '%Manager%';

-- 10	Show all employees with a job title not equal to "Manager".
SELECT 
    EmployeeName, JobTitle
FROM
    salaries
WHERE
    JobTitle <> 'Manager';

-- 11	Show all employees with a total pay between 50,000 and 75,000.
SELECT 
    *
FROM
    salaries
WHERE
    TotalPay BETWEEN 50000 AND 75000;

-- 12	Show all employees with a base pay less than 50,000 or a total pay greater than 100,000.
SELECT 
    *
FROM
    salaries
WHERE
    BasePay < 50000 OR TotalPay > 100000;


-- 13	Show all employees ordered by their total pay benefits in descending order.
SELECT 
    *
FROM
    salaries
ORDER BY TotalPayBenefits DESC;


-- 14	Show all job titles with an average base pay of at least 100,000 and order them by the average base pay in descending order.
SELECT 
    JobTitle, AVG(BasePay) AS 'avgbasepay'
FROM
    salaries
GROUP BY JobTitle
HAVING AVG(BasePay) >= 100000
ORDER BY avgbasepay DESC;


-- 15	Update the base pay of all employees with the job title containing "Manager" by increasing it by 10%.
UPDATE salaries 
SET 
    BasePay = BasePay * 1.1
WHERE
    JobTitle LIKE '%Manager%';
SELECT 
    *
FROM
    salaries;

****ENDDDDDDDDD*******