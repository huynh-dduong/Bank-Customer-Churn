SELECT * FROM `customer-churn-records-cleaned`;

-- Satisfaction Sentiment --

-- Counting number of customers that left the bank who complained and the respective satisfaction score after complaint resolution
SELECT 
	Gender,
    Geography,
    Age,
    Complain,
    SatisfactionScore
FROM `customer-churn-records-cleaned`
WHERE HasLeftBank = TRUE;

-- Get the average satisfaction score based on the customer demographic with most amount of complaints
SELECT 
	Gender,
    Geography,
    Age,
    Complain,
    ROUND(AVG(SatisfactionScore), 0) AS AvgSatisfactionScore,
    COUNT(Complain) AS ComplaintCount
FROM `customer-churn-records-cleaned`
WHERE HasLeftBank = TRUE
GROUP BY Geography, Gender, Age, Complain
ORDER BY ComplaintCount DESC;

-- Get count of customers who left complained by region
SELECT 
	Gender,
    Geography,
    Complain,
    COUNT(Complain) AS ComplaintCount
FROM `customer-churn-records-cleaned`
WHERE HasLeftBank = TRUE
GROUP BY Geography, Gender, Complain
ORDER BY ComplaintCount DESC;

-- Account Age --
SELECT 
	Gender,
    Geography,
    Age,
    YearsAtBank    
FROM `customer-churn-records-cleaned`
WHERE HasLeftBank = TRUE;

-- Get average account age based on customer demographic
SELECT 
	Gender,
    Geography,
    Age,
    ROUND(AVG(YearsAtBank), 1) AS AvgYearsAtBank    
FROM `customer-churn-records-cleaned`
WHERE HasLeftBank = TRUE
GROUP BY Gender, Geography, Age
ORDER BY AvgYearsAtBank DESC;

SELECT 
	Gender,
    Geography,
    ROUND(AVG(YearsAtBank), 1) AS AvgYearsAtBank    
FROM `customer-churn-records-cleaned`
WHERE HasLeftBank = TRUE
GROUP BY Gender, Geography
ORDER BY AvgYearsAtBank DESC;

-- Product Trend Analysis --
SELECT
	Gender,
    Geography,
    Age,
    NumOfProducts,
    HasCrCard,
    IsActiveMember
FROM `customer-churn-records-cleaned`
WHERE HasLeftBank = TRUE
ORDER BY HasCrCard DESC, IsActiveMember DESC;

-- Get average number of products bought from bank based on customer demographic with most amount of products sold
SELECT
	Gender,
    Geography,
    Age,
    ROUND(AVG(NumOfProducts), 0) AS AvgNumberofProducts
FROM `customer-churn-records-cleaned`
WHERE HasLeftBank = TRUE
GROUP BY Gender, Geography, Age
ORDER BY AvgNumberofProducts DESC;

-- Get average number of products bought from bank based on customer demographic with most amount of products sold
SELECT
	Gender,
    Geography,
    COUNT(HasCrCard) AS AvgCrCard
FROM `customer-churn-records-cleaned`
WHERE HasLeftBank = TRUE
GROUP BY Gender, Geography
ORDER BY AvgCrCard DESC;


-- Customer Demographic --
SELECT
	Gender,
    COUNT(Gender) AS CustomerCount,
    Geography
FROM `customer-churn-records-cleaned`
WHERE HasLeftBank = TRUE
GROUP BY Gender, Geography;

-- Counting the number of customers that left the bank by region
SELECT
	Geography,
    Gender,
    Age,
    COUNT(Geography) AS CustomerGeography
FROM `customer-churn-records-cleaned`
WHERE HasLeftBank = TRUE
GROUP BY Geography, Gender, Age
ORDER BY CustomerGeography DESC;

SELECT
	Geography,
    Gender,
    COUNT(Geography) AS CustomerGeography
FROM `customer-churn-records-cleaned`
WHERE HasLeftBank = TRUE
GROUP BY Geography, Gender
ORDER BY CustomerGeography DESC;

SELECT
	Geography,
    COUNT(Geography) AS CustomerGeography
FROM `customer-churn-records-cleaned`
WHERE HasLeftBank = TRUE
GROUP BY Geography
ORDER BY CustomerGeography DESC;

--  Get the average balance and salary of customers that left the bank by gender, age, region
SELECT
	Geography,
    Gender,
    Age,
    ROUND(AVG(Balance), 2) AS AvgBalance,
    ROUND(AVG(EstimatedSalary), 2) AS AvgSalary
FROM `customer-churn-records-cleaned`
WHERE HasLeftBank = TRUE
GROUP BY Geography, Gender, Age
ORDER BY AvgBalance DESC;

