The HR Analytics Dashboard provides a comprehensive view of workforce insights with a key focus on employee attrition. It helps HR teams analyze turnover patterns, identify high-risk groups, and support data-driven retention strategies.



**Data Cleaning \& Preparation:**

Data was cleaned and transformed using Power Query in Power BI and SQL:



**SQL:**

Attrition count column added

use project1;

select \* from HR;

alter table HR add column Attrition\_count int;

update HR

set Attrition\_count = case

when Attrition = 'yes' then '1'

when Attrition = 'No' then '0'

end;



**PowerBI:**

Data review and checked for Null/blank columns   

1\. **Replaced travel\_rarely to travel rarely**

2\. I have added new column in power bi through power query

to understand possible employee attrition in future based on employee job satisfaction

**Possible attrition = IF('HR\_Analytics Updated'\[JobSatisfaction]<=2,**

**"yes",**

**IF('HR\_Analytics Updated'\[JobSatisfaction]=3,**

**"may be",**

**if('HR\_Analytics Updated'\[JobSatisfaction]>3,**

**"No",**

**Blank())))**



3\. New calculated column added - Attrition Rate

**attrition\_rate = SUM('HR\_Analytics Updated'\[Attrition count])/SUM('HR\_Analytics Updated'\[EmployeeCount])**

**--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------**

**Dashboard 1: HR Analytics Dashboard**

This dashboard highlights key HR metrics and attrition insights across various employee dimensions.

Key Visuals \& Metrics:

1\.	Employee Count – total number of employees in the organization

2\.	Sum of Attrition Count – total employees who have left

3\.	Attrition Rate – percentage of employees who left vs total

4\.	Average Age – average employee age

5\.	Average Salary – average monthly income of employees

6\.	Average Years at Company – average tenure of employees

7\.	Attrition by Gender – comparison of male vs female attrition

8\.	Attrition by Education – attrition trends based on education level

9\.	Attrition by Age Group – age group-wise turnover patterns

10\.	Proportion of Attrition Count – visual representation of attrition share

11\.	Job Satisfaction Matrix – job roles vs job satisfaction with attrition counts

12\.	Attrition by Salary Slab – attrition based on salary categories

13\.	Attrition by Years at Company – how experience influences attrition

14\.	Attrition Count by Job Roles – job-wise attrition numbers

15\.	Department Slicer – filter dashboard insights by department



**Dashboard 2: HR Analytics – Attrition by Business Travel**

This dashboard focuses on how business travel frequency influences attrition.

Key Visuals \& Metrics:

1\.	Attrition Count by Business Travel – shows how travel frequency affects turnover

2\.	Root Causes of Attrition – analyzes attrition count by both business travel and job role



**Dashboard 3: Forecasted Future Attrition Based on Job Satisfaction**

This dashboard focuses on predicting future employee attrition by analyzing job satisfaction levels.

It helps HR managers identify potential risks and take proactive actions to retain employees.

Key Insights \& Visuals:

1\.	Forecasted Attrition Count – estimated number of employees likely to leave in the future.

2\.	Attrition by Job Satisfaction Level – shows how satisfaction scores influence turnover probability.

3\.	At-Risk Employee Segments – identifies Departments most likely to face attrition.
4.identify through Q&A top 5 Employees with least job satisfaction more likely to leave the company in future.


**Purpose:**

To use data-driven forecasting and employee feedback metrics (like Job Satisfaction) to anticipate future attrition and improve employee retention strategies.
