-- Task 17: 2026 peak gold rate
-- Requirement: FR-02
--
-- What was the highest 24K gold rate (₹ per gram) during 2026?

-- Write SQL here. Tables: gold_loans, repayments, gold_rates, branches, customers

SELECT
    MAX(rate_24k_per_gram) as highest_gold_rate
FROM gold_rates
WHERE EXTRACT(YEAR FROM rate_date) = 2026;
