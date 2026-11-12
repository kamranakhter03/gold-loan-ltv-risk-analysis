-- Task 7: Duplicate rows
-- Requirement: FR-01
--
-- How many exact duplicate rows must be removed from `gold_loans`?

-- Write SQL here. Tables: gold_loans, repayments, gold_rates, branches, customers

SELECT
    (SELECT COUNT(*) FROM gold_loans)
    -
    (SELECT COUNT(*)
     FROM (
         SELECT DISTINCT *
         FROM gold_loans
     ) as unique_rows
    ) AS duplicate_rows;
