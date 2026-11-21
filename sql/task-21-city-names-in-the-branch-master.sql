-- Task 21: City names in the branch master
-- Requirement: FR-01
--
-- How many distinct city names appear in `branches`? (Old names such as Bangalore count separately.)

-- Write SQL here. Tables: gold_loans, repayments, gold_rates, branches, customers
SELECT
    COUNT(DISTINCT city) as count_distinct_city
FROM branches;
