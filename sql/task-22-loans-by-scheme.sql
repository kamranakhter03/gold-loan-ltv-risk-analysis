-- Task 22: Loans by scheme
-- Requirement: FR-05
--
-- After removing duplicates, return `scheme` and `loans` for each scheme.

-- Write SQL here. Tables: gold_loans, repayments, gold_rates, branches, customers

SELECT
    scheme,
    COUNT(loan_id) as loans
FROM (SELECT DISTINCT * FROM gold_loans)
GROUP BY 1;
