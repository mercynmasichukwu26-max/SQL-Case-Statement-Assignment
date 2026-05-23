Employee Data Classification: SQL CASE Statements

Project Overview
Classified over 1,000 employee records across 10 categories using 
advanced SQL CASE statements in MySQL Workbench. The goal was to 
permanently store classification results directly in the database 
for future analysis and reporting.

Tools Used
- MySQL Workbench
- SQL: CASE Statements, ALTER TABLE, UPDATE

What Was Done
Created 10 new permanent columns in the employee dataset:

1. Tax_Bracket — Low, Medium or High based on Salary
2. Age_Group — Young, Mid-age or Senior based on Age
3. Performance Classification — Outstanding to Poor based on Rating
4. Job_Stability — New Employee, Stable Employee or Veteran
5. Promotion_Eligibility — Eligible or Not Eligible
6. Bonus_Amount — 10% of Salary if eligible, otherwise 0
7. Workload_Category — High, Moderate or Low based on Department
8. Work_Type_Category — Permanent, Temporary or General Staff
9. Retention_Risk — High, Moderate or Low Risk
10. Take_Home_Salary — Salary after tax deduction based on bracket

Key Learning
The difference between temporary SELECT results and permanent 
ALTER TABLE + UPDATE commands — ensuring all classifications 
are saved directly into the database and not just shown on screen.

Skills Demonstrated
- Advanced SQL CASE statements
- ALTER TABLE to add new columns
- UPDATE to permanently store calculated values
- Database creation and table management
- Data classification and categorisation
