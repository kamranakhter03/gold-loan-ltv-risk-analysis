-- Task 19: Rate on the assessment date
-- Requirement: FR-02
--
-- Which 24K rate (₹ per gram) applies on 15 October 2026?

-- Write SQL here. Tables: gold_loans, repayments, gold_rates, branches, customers

SELECT
    rate_24k_per_gram
FROM gold_rates
WHERE rate_date = '2026-10-15';
