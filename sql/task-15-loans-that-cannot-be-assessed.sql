-- Task 15: Loans that cannot be assessed
-- Requirement: FR-01
--
-- How many active loans cannot be assessed because the gold weight is missing or the principal is 0 or less?

-- Write SQL here. Tables: gold_loans, repayments, gold_rates, branches, customers

SELECT 
    COUNT(*) as loans
FROM (SELECT DISTINCT * FROM gold_loans)
WHERE
    (LOWER(status) = 'active') AND (principal <= 0 OR gold_weight_gm IS NULL);
