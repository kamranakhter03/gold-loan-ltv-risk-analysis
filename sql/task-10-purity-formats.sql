-- Task 10: Purity formats
-- Requirement: FR-01
--
-- How many different raw values does the `purity` column contain?

-- Write SQL here. Tables: gold_loans, repayments, gold_rates, branches, customers
SELECT
    COUNT(DISTINCT purity) as unique_purity
FROM gold_loans;
