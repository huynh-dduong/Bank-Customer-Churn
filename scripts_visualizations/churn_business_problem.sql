SELECT * 
FROM `customer-churn-records-cleaned`
ORDER BY HasLeftBank;


SELECT 
	COUNT(DISTINCT CustomerId) AS customer_count
FROM `customer-churn-records-cleaned`;

--  Determine if customer gender/geography affects if customer left bank
SELECT 
	Gender,
	HasLeftBank,
    ROUND(AVG(Age), 0) AS customer_age_avg,
    Geography,
    COUNT(Geography) AS customer_location,
    COUNT(HasLeftBank) AS customer_left_count
FROM `customer-churn-records-cleaned`
GROUP BY Gender, HasLeftBank, Geography
ORDER BY customer_left_count;

-- Determine if credit score affects if customer left bank 
SELECT
	HasLeftBank,
    ROUND(AVG(CreditScore), 0) AS customer_credit_score,
	COUNT(HasLeftBank) AS customer_left_count
FROM `customer-churn-records-cleaned`
GROUP BY HasLeftBank
ORDER BY customer_left_count;

-- Determine if complaints and satifacation scores affect if customer left bank
SELECT
	HasLeftBank,
    ROUND(AVG(YearsAtBank), 0) AS customer_tenure,
    Complain,
    COUNT(Complain) AS customer_has_complain,
    ROUND(AVG(SatisfactionScore), 1) AS customer_satification_score,
	COUNT(HasLeftBank) AS customer_left_count
FROM `customer-churn-records-cleaned`
GROUP BY HasLeftBank, Complain
ORDER BY customer_left_count;

-- Determine if bank activity affect if customer left bank
SELECT
	HasLeftBank,
    IsActiveMember,
	COUNT(HasLeftBank) AS customer_left_count
FROM `customer-churn-records-cleaned`
GROUP BY HasLeftBank, IsActiveMember
ORDER BY customer_left_count;

-- Determine if having a card affect if customer left bank
SELECT
	HasLeftBank,
	HasCrCard,
    CardType,
    ROUND(AVG(PointsEarned), 0) AS customer_points_avg,
	COUNT(HasLeftBank) AS customer_left_count
FROM `customer-churn-records-cleaned`
GROUP BY HasLeftBank, HasCrCard, CardType
ORDER BY customer_left_count;

-- Determine if the number of products purchased from the bank affect if customer left bank
SELECT
	HasLeftBank,
	NumOfProducts,
	COUNT(HasLeftBank) AS customer_left_count
FROM `customer-churn-records-cleaned`
GROUP BY HasLeftBank, NumOfProducts
ORDER BY NumOfProducts DESC;

-- Determine if the customer's salary and bank balance affect if customer left bank 
SELECT
	HasLeftBank,
	ROUND(AVG(Balance), 0) AS customer_balance_avg,
	ROUND(AVG(EstimatedSalary), 0) AS customer_salary_avg,
	COUNT(HasLeftBank) AS customer_left_count
FROM `customer-churn-records-cleaned`
GROUP BY HasLeftBank
ORDER BY customer_left_count;