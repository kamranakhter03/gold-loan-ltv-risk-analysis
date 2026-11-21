-- Task 16: Gold rate history
-- Requirement: FR-02
--
-- How many daily rates are in `gold_rates`?

-- Write SQL here. Tables: gold_loans, repayments, gold_rates, branches, customers
SELECT 
    COUNT(*) as daily_rates
FROM gold_rates;
