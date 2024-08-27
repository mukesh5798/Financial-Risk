--  Selecting All Data

select * from financial_risk_assessment

-- Total Assets Value by Marital Status

SELECT marital_status, SUM(assets_value) AS total_assets_value
FROM financial_risk_assessment
GROUP BY marital_status;

-- Average Debt-to-Income Ratio for Employed Individuals


SELECT employment_status, AVG(debt_to_income_ratio) AS avg_dti_ratio
FROM financial_risk_assessment
group by employment_status;

-- Individuals with Previous Defaults Greater Than 3
SELECT *
FROM financial_risk_assessment
WHERE previous_defaults > 3;

-- Average Credit Score by Gender

SELECT Gender, AVG(Credit_Score) AS avg_credit_score
FROM financial_risk_assessment
GROUP BY Gender;

-- Count of Individuals by Employment Status

SELECT Employment_Status, COUNT(*) AS count
FROM financial_risk_assessment
GROUP BY Employment_Status;

 -- Sum of Loan Amounts by Loan Purpose


SELECT Loan_Purpose, SUM(Loan_Amount) AS total_loan_amount
FROM financial_risk_assessment
GROUP BY Loan_Purpose;


--  Finding High-Risk Individuals

SELECT * 
FROM financial_risk_assessment
WHERE Risk_Rating = 'High';

