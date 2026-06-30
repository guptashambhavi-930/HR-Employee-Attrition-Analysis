SELECT COUNT(*) AS Total_Employees
FROM employees;
SELECT COUNT(*) AS Total_Columns
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA='hr_analytics'
AND TABLE_NAME='employees';
SELECT
SUM(Age IS NULL) AS Age,
SUM(Attrition IS NULL) AS Attrition,
SUM(Department IS NULL) AS Department,
SUM(JobRole IS NULL) AS JobRole,
SUM(MonthlyIncome IS NULL) AS MonthlyIncome
FROM employees;
SHOW COLUMNS FROM employees;
ALTER TABLE employees
CHANGE COLUMN `ï»¿Age` Age INT;
SELECT DISTINCT Department
FROM employees;
SELECT Department,
COUNT(*) AS Employees
FROM employees
GROUP BY Department
ORDER BY Employees DESC;
SELECT
ROUND(AVG(MonthlyIncome),2) AS Average_Salary
FROM employees;
SELECT JobRole,
COUNT(*) AS Employees
FROM employees
GROUP BY JobRole
ORDER BY Employees DESC;
SELECT Education,
Count(*) AS Employees
FROM employees
GROUP BY Education
ORDER BY Employees DESC;
SELECT BusinessTravel,
COUNT(*) AS Employees
FROM employees
GROUP BY BusinessTravel;
SELECT Department,
		COUNT(*) AS Total_Employees,
		SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Attrition_Count
FROM employees
GROUP BY Department
ORDER BY Attrition_Count DESC;
SELECT JobRole,
		COUNT(*) AS Employees,
        SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Attrition
FROM employees
GROUP BY JobRole
ORDER BY Attrition DESC;
SELECT Gender,
		COUNT(*) AS Employees,
        SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Attrition
FROM employees
GROUP BY Gender;
SELECT OverTime,
		COUNT(*) AS Employees,
        SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Attrition
FROM employees
GROUP BY OverTime;
SELECT
		MIN(MonthlyIncome) AS Minimum_Salary,
		MAX(MonthlyIncome) AS Maximum_Salary,
		ROUND(AVG(MonthlyIncome),2) AS Average_Salary
FROM employees;
SELECT
CASE
WHEN MonthlyIncome < 5000 THEN 'Low'
WHEN MonthlyIncome BETWEEN 5000 AND 10000 THEN 'Medium'
ELSE 'High'
END AS Salary_Category,
COUNT(*) AS Employees
FROM employees
GROUP BY Salary_Category;
SELECT Department,
ROUND(AVG(Age),1) AS Average_Age
FROM employees
GROUP BY Department;
SELECT
ROUND(AVG(YearsAtCompany),1) AS Avg_Years
FROM employees;
SELECT JobSatisfaction,
COUNT(*) AS Employees
FROM employees
GROUP BY JobSatisfaction
ORDER BY JobSatisfaction;
SELECT PerformanceRating,
COUNT(*) AS Employees
FROM employees
GROUP BY PerformanceRating;
SELECT
	COUNT(*) AS Total_Employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Total_Attrition,
    ROUND(
		SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) *100.0/COUNT(*),
        2
        ) AS Attrtion_Rate
FROM employees;
SELECT
	EmployeeNumber,
    JobRole,
    Department,
    MonthlyIncome
FROM employees
ORDER BY MonthlyIncome DESC
LIMIT 5;
SELECT
	Department,
    ROUND(AVG(MonthlyIncome),2) AS Avg_Salary
FROM Employees
GROUP BY Department
ORDER BY Avg_Salary DESC;
SELECT
	MaritalStatus,
    COUNT(*) AS Employees,
    SUM(CASE WHEN Attrition - 'Yes' THEN 1 ELSE 0 END ) AS Attrition
FROM Employees
GROUP BY MaritalStatus;
SELECT 
	EducationField,
    COUNT(*) AS Employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 End ) AS Attrition
FROM employees
GROUP BY EducationField;