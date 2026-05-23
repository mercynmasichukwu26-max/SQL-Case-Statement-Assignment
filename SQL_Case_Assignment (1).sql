USE student;
SET SQL_SAFE_UPDATES = 0;
ALTER TABLE sql_case_statement_dataset ADD COLUMN Tax_Bracket VARCHAR(10);

UPDATE sql_case_statement_dataset
SET Tax_Bracket = CASE
    WHEN Salary < 50000 THEN 'Low'
    WHEN Salary BETWEEN 50000 AND 100000 THEN 'Medium'
    ELSE 'High'
END;


ALTER TABLE sql_case_statement_dataset ADD COLUMN Age_Group VARCHAR(10);

UPDATE sql_case_statement_dataset
SET Age_Group = CASE
    WHEN Age < 30 THEN 'Young'
    WHEN Age BETWEEN 30 AND 45 THEN 'Mid-age'
    ELSE 'Senior'
END;

ALTER TABLE sql_case_statement_dataset ADD COLUMN Performance_Classification VARCHAR(20);

UPDATE sql_case_statement_dataset
SET Performance_Classification = CASE
    WHEN Performance_Rating = 5 THEN 'Outstanding'
    WHEN Performance_Rating = 4 THEN 'Good'
    WHEN Performance_Rating = 3 THEN 'Average'
    WHEN Performance_Rating = 2 THEN 'Needs Improvement'
    WHEN Performance_Rating = 1 THEN 'Poor'
END;

ALTER TABLE sql_case_statement_dataset ADD COLUMN Job_Stability VARCHAR(20);

UPDATE sql_case_statement_dataset
SET Job_Stability = CASE
    WHEN Experience_Years < 3 THEN 'New Employee'
    WHEN Experience_Years BETWEEN 3 AND 10 THEN 'Stable Employee'
    ELSE 'Veteran'
END;

ALTER TABLE sql_case_statement_dataset ADD COLUMN Promotion_Eligibility VARCHAR(15);

UPDATE sql_case_statement_dataset
SET Promotion_Eligibility = CASE
    WHEN Performance_Rating >= 4 AND Experience_Years > 5 THEN 'Eligible'
    ELSE 'Not Eligible'
END;

ALTER TABLE sql_case_statement_dataset ADD COLUMN Bonus_Amount DECIMAL(15,2);

UPDATE sql_case_statement_dataset
SET Bonus_Amount = CASE
    WHEN Bonus_Eligibility = 'Yes' THEN Salary * 0.10
    ELSE 0
END;


CREATE DATABASE sql_assignment;
CREATE TABLE sql_assignment.sql_case_statement_dataset 
AS SELECT * FROM student.sql_case_statement_dataset;

SELECT * FROM sql_assignment.sql_case_statement_dataset LIMIT 5;
USE sql_assignment;
SET SQL_SAFE_UPDATES = 0;

ALTER TABLE sql_case_statement_dataset ADD COLUMN Workload_Category VARCHAR(20);

UPDATE sql_case_statement_dataset
SET Workload_Category = CASE
    WHEN Department IN ('IT', 'Finance') THEN 'High Workload'
    WHEN Department IN ('Sales', 'Marketing') THEN 'Moderate Workload'
    WHEN Department = 'HR' THEN 'Low Workload'
END;

ALTER TABLE sql_case_statement_dataset ADD COLUMN Work_Type_Category VARCHAR(20);

UPDATE sql_case_statement_dataset
SET Work_Type_Category = CASE
    WHEN Employment_Type = 'Full-time' AND Seniority_Level = 'Senior' THEN 'Permanent Staff'
    WHEN Employment_Type = 'Contract' THEN 'Temporary Staff'
    ELSE 'General Staff'
END;

ALTER TABLE sql_case_statement_dataset ADD COLUMN Retention_Risk VARCHAR(15);

UPDATE sql_case_statement_dataset
SET Retention_Risk = CASE
    WHEN Performance_Rating <= 2 AND Experience_Years < 3 THEN 'High Risk'
    WHEN Performance_Rating IN (3, 4) THEN 'Moderate Risk'
    ELSE 'Low Risk'
END;

ALTER TABLE sql_case_statement_dataset ADD COLUMN Take_Home_Salary DECIMAL(15,2);

UPDATE sql_case_statement_dataset
SET Take_Home_Salary = CASE
    WHEN Tax_Bracket = 'Low' THEN Salary - (Salary * 0.05)
    WHEN Tax_Bracket = 'Medium' THEN Salary - (Salary * 0.10)
    WHEN Tax_Bracket = 'High' THEN Salary - (Salary * 0.15)
END;

SELECT * FROM sql_case_statement_dataset LIMIT 5;
SELECT * FROM sql_case_statement_dataset;