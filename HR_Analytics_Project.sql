DROP TABLE IF EXISTS hr_database;

CREATE TABLE hr_database AS 
SELECT
	EmployeeID,
    Age,
    CASE
		WHEN Age <= 30 THEN '<= 30 years'
        ELSE '> 30 years'
        END AS AgeGroup,
	REPLACE(REPLACE(GENDER, 'Female', 'F'), 'Male', 'M') AS Gender,
    Department,
	REPLACE(REPLACE(Position, 'DataScientist', 'Data Scientist'), 'Marketinganalyst', 'Marketing Analyst') AS Position,
    YearsOfService,
    Salary,
    CASE 
		WHEN Salary >= 90000 THEN '90K - 100K'
		WHEN Salary >= 80000 THEN '80K - 90K'
        WHEN Salary >= 70000 THEN '70K - 80K'
        WHEN Salary >= 60000 THEN '60K - 70K'
        ELSE '50K - 60K'
        END AS SalaryBucket,
        PerformanceRating,
        WorkHours,
        Attrition,
        Promotion,
        TrainingHours,
        SatisfactionScore,
        LastPromotionDate
FROM hr_data2;

SELECT *
FROM hr_database;

-- Count total records
SELECT COUNT(*) AS total_records FROM hr_database;

-- View sample records
SELECT * FROM hr_database LIMIT 5;

-- Calculating overall attrition rate
SELECT AVG(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100 AS attrition_rate_percentage 
FROM hr_database;

-- Calculating Descriptive Statistics
SELECT 
    COUNT(*) AS Total_employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Attrition_Count,
    ROUND((SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) / COUNT(*))*100,2) AS Attrition_Count,
    SUM(CASE WHEN Attrition = 'No' THEN 1 ELSE 0 END) AS Total_Active_employees,
    ROUND(AVG(Age),0) AS AvgAge,
    ROUND(AVG(YearsOfService),0) AS AvgYearsOfService,
    ROUND(AVG(Salary),0) AS AvgSalary,
    ROUND(AVG(SatisfactionScore),0) AS AvgSatisfactionScore,
    ROUND(AVG(WorkHours),0) AS AvgWorkHours,
    ROUND(AVG(TrainingHours),0) AS AvgTrainingHours
FROM hr_database
WHERE Attrition = 'Yes';

-- Comparing attrition rate across different factors
-- Attrition Rate by Department:
SELECT 
    Department,
    COUNT(*) AS Total_Employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Attrition_Count,
    ROUND((SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) / COUNT(*))*100, 2) AS Attrition_Rate
FROM hr_database
GROUP BY Department;

-- Attrition Rate by Gender:
SELECT Gender, COUNT(*) AS Total_Employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Attrition_Count,
    ROUND((SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) / COUNT(*))*100, 2) AS Attrition_Rate
FROM hr_database
GROUP BY Gender;

-- Attrition Rate by Salary Bucket 
SELECT SalaryBucket,
    COUNT(*) AS Total_Employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Attrition_Count,
    ROUND((SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) / COUNT(*))*100, 2) AS Attrition_Rate
FROM hr_database
GROUP BY SalaryBucket;

-- Attrition Rate by Age Group:
SELECT AgeGroup,
    COUNT(*) AS Total_Employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Attrition_Count,
    ROUND((SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) / COUNT(*))*100, 2) AS Attrition_Rate
FROM hr_database
GROUP BY AgeGroup;

-- Attrition Rate by Position
SELECT Position,
    COUNT(*) AS Total_Employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Attrition_Count,
    ROUND((SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) / COUNT(*))*100, 2) AS Attrition_Rate
FROM hr_database
GROUP BY Position;

-- Attrition Rate by Performance Rating
SELECT PerformanceRating,
	COUNT(*) AS Total_Employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Attrition_Count,
    ROUND((SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) / COUNT(*))*100, 2) AS Attrition_Rate
FROM hr_database
GROUP BY PerformanceRating;

-- Attrition Rate by Working Hours
SELECT WorkHours,
    COUNT(*) AS Total_Employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Attrition_Count,
    ROUND((SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) / COUNT(*))*100, 2) AS Attrition_Rate
FROM hr_database
GROUP BY WorkHours;

-- No promotion & Low satisfaction score vs attrition rate
SELECT 
    CASE WHEN LastPromotionDate IS NULL THEN 'No' ELSE 'Yes' END AS Promotion_Received,
    AVG(SatisfactionScore) AS AvgSatisfactionScore,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Attrition_Count
FROM hr_database
GROUP BY Promotion_Received;

-- Attrition rate by Years of Service 
SELECT 
    YearsOfService,
    COUNT(*) AS Total_Employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Attrition_Count,
	ROUND((SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) / COUNT(*))*100, 2) AS Attrition_Rate
FROM hr_database
GROUP BY YearsOfService;

-- Attrition rate by Satisfaction score 
SELECT 
    SatisfactionScore,
    COUNT(*) AS Total_Employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Attrition_Count,
	ROUND((SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) / COUNT(*))*100, 2) AS Attrition_Rate
FROM hr_database
GROUP BY SatisfactionScore;

-- Attrition rate by Training Hours 
SELECT 
    TrainingHours,
    COUNT(*) AS Total_Employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Attrition_Count,
	ROUND((SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) / COUNT(*))*100, 2) AS Attrition_Rate
FROM hr_database
GROUP BY TrainingHours;

-- Attrition rate by Promotion 
SELECT 
    Promotion,
    COUNT(*) AS Total_Employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Attrition_Count,
	ROUND((SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) / COUNT(*))*100, 2) AS Attrition_Rate
FROM hr_database
GROUP BY Promotion;

-- DEPARTMENT
SELECT
	Department,
    COUNT(*) AS TotalEmp,
    ROUND(AVG(Salary),0) AS AvgSalary,
    ROUND(AVG(SatisfactionScore),0) AS AvgSatisfactionScore,
    ROUND(AVG(WorkHours),0) AS AvgWorkHours,
    ROUND(AVG(TrainingHours),0) AS AvgTrainingHours
FROM hr_database
WHERE Attrition = 'Yes'
GROUP BY Department;

-- Comparing Performance Ratings and Satisfaction Scores:
SELECT 
    PerformanceRating,
    AVG(SatisfactionScore) AS AvgSatisfactionScore
FROM hr_database
GROUP BY PerformanceRating;

-- Identifying Teams with High Satisfaction Scores and Attrition:
SELECT 
    Department,
    AVG(SatisfactionScore) AS AvgSatisfactionScore,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Attrition_Count
FROM hr_database
GROUP BY Department;

-- Analyzing Employees Who Left the Company Based on Performance Rating and Years in the Company:
SELECT 
    PerformanceRating,
    YearsOfService,
    COUNT(*) AS Attrition_Count
FROM hr_database
WHERE Attrition = 'Yes'
GROUP BY PerformanceRating, YearsOfService;

-- Analyzing Work Hours, Satisfaction Score, and Department Against Attrition Rate:
SELECT 
    Department,
    AVG(WorkHours) AS AvgWorkHours,
    AVG(SatisfactionScore) AS AvgSatisfactionScore,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Attrition_Count
FROM hr_database
GROUP BY Department;

-- Checking if Employees Leaving the Company Have Been Promoted:
SELECT 
    COUNT(*) AS Total_Leavers,
    SUM(CASE WHEN LastPromotionDate IS NULL THEN 0 ELSE 1 END) AS Promoted_Leavers
FROM hr_database
WHERE Attrition = 'Yes';

----------------------------------------------------------------------------------------------------------------------------------------

/* Problem Statement 2: "Optimize Employee Training Programs" (Assignment)
Objective: Analyze the effectiveness of training programs and recommend improvements to
enhance employee skills and performance. */

-- Checking Training Hours Against Promotion:
SELECT 
    TrainingHours,
    AVG(CASE WHEN Promotion = 'Yes' THEN 1 ELSE 0 END) * 100 AS Promotion_Rate
FROM hr_database
GROUP BY TrainingHours;

-- Calculating Average Training Hours by Department:
SELECT Department, AVG(TrainingHours) AS Avg_Training_Hours
FROM hr_database
GROUP BY Department;

-- Identifying High-Performing Departments:
SELECT Department, AVG(TrainingHours) AS Avg_Training_Hours, AVG(PerformanceRating) AS Avg_Performance_Rating
FROM hr_database
GROUP BY Department
ORDER BY Avg_Performance_Rating DESC;

-- Evaluating Training Program Effectiveness:
SELECT Training_Status, AVG(PerformanceRating) AS Avg_Performance_Rating
FROM (
    SELECT CASE WHEN TrainingHours > 0 THEN 'Completed' ELSE 'Not Completed' END AS Training_Status,
           PerformanceRating
    FROM hr_database
) AS TrainingStatus
GROUP BY Training_Status;

-- Analyzing Training Hours vs. Performance Rating:
SELECT
    CASE
        WHEN TrainingHours <= 10 THEN 'Low'
        WHEN TrainingHours <= 20 THEN 'Medium'
        ELSE 'High'
    END AS Training_Level,
    AVG(PerformanceRating) AS Avg_Performance_Rating
FROM hr_database
GROUP BY Training_Level;

-- Identifying Training Needs by Job Position:
SELECT Position,
       AVG(TrainingHours) AS Avg_Training_Hours,
       AVG(PerformanceRating) AS Avg_Performance_Rating
FROM hr_database
GROUP BY Position;

-- Tracking Training Completion Trends Over Time:
SELECT YEAR(LastPromotionDate) AS Promotion_Year,
       COUNT(CASE WHEN TrainingHours > 0 THEN EmployeeID END) AS Training_Completed,
       COUNT(EmployeeID) AS Total_Employees
FROM hr_database
GROUP BY Promotion_Year;

-- Assessing Impact of Training on Promotion Rates:
SELECT Promotion,
       AVG(PerformanceRating) AS Avg_Performance_Rating
FROM (
    SELECT CASE WHEN TrainingHours > 0 THEN 'Training Completed' ELSE 'Training Not Completed' END AS Promotion,
           PerformanceRating
    FROM hr_database
) AS PromotionStatus
GROUP BY Promotion;

-- Segmenting Employees for Targeted Training Interventions:
SELECT CASE
           WHEN PerformanceRating >= 4.5 THEN 'High Performer'
           WHEN PerformanceRating >= 3.5 THEN 'Medium Performer'
           ELSE 'Low Performer'
       END AS Performance_Segment,
       AVG(TrainingHours) AS Avg_Training_Hours
FROM hr_database
GROUP BY Performance_Segment;


