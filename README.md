# Gold Loan LTV Breach Early Warning

**Banking & Finance** · SQL, Python (pandas, seaborn)

Gold prices have fallen sharply. Find which active gold loans now breach the regulatory LTV cap, how much money is at risk, and where.

> A live industry project on [JobPrax](https://www.jobprax.com). The client, Suvarna Finance Ltd, and its data are simulated.

> **Status: in progress.** 50 of 50 tasks solved as of 26 Nov 2026. The final report will be added when the project is complete.

## Business problem

Management does not know how many active gold loans currently breach the 75% LTV cap, how much outstanding principal is exposed, or which schemes, states and branches are driving the problem. The risk team needs a reliable, reproducible assessment as of 15 October 2026 to plan margin calls before the next risk committee.

## Objectives

- Measure the fall in the gold rate from its 2026 peak to the assessment date.
- Recalculate the current LTV of every active gold loan using the latest gold rate.
- Quantify the number of loans and the outstanding principal above the 75% cap, and above 80% (critical).
- Identify the schemes, disbursal periods, states and branches that contribute most to breaches.
- Recommend a prioritised margin-call plan and any change needed to lending policy.

## Work so far

- ✅ [Task 5: Disbursal period](sql/task-05-disbursal-period.sql)
- ✅ [Task 7: Duplicate rows](sql/task-07-duplicate-rows.sql)
- ✅ [Task 8: Inconsistent status values](sql/task-08-inconsistent-status-values.sql)
- ✅ [Task 10: Purity formats](sql/task-10-purity-formats.sql)
- ✅ [Task 15: Loans that cannot be assessed](sql/task-15-loans-that-cannot-be-assessed.sql)
- ✅ [Task 16: Gold rate history](sql/task-16-gold-rate-history.sql)
- ✅ [Task 17: 2026 peak gold rate](sql/task-17-2026-peak-gold-rate.sql)
- ✅ [Task 18: Date of the peak](sql/task-18-date-of-the-peak.sql)
- ✅ [Task 19: Rate on the assessment date](sql/task-19-rate-on-the-assessment-date.sql)
- ✅ [Task 20: Fall from the peak](sql/task-20-fall-from-the-peak.sql)
- ✅ [Task 21: City names in the branch master](sql/task-21-city-names-in-the-branch-master.sql)
- ✅ [Task 22: Loans by scheme](sql/task-22-loans-by-scheme.sql)
- ✅ [Task 23: Total disbursed](sql/task-23-total-disbursed.sql)
- ✅ [Task 30: Interest collected](sql/task-30-interest-collected.sql)
- ✅ [Task 41: Book by region](sql/task-41-book-by-region.sql)

## What I did

- Solved 50 of 50 analysis tasks tied to the business requirements
- Wrote 15 SQL queries, one per task, in [`sql/`](sql)
- Explored and charted the data in Python, in [`notebook/analysis.ipynb`](notebook/analysis.ipynb)

## Skills

Data cleaning · Joins and aggregation · Business rules · Risk metrics · Executive reporting

## Data

- **Gold loans** (`gold_loans.csv`): One row per loan as extracted from the loan system. Contains duplicates and inconsistent formats.
- **Repayments** (`repayments.csv`): Every payment received. Interest payments do not reduce the principal.
- **Gold rates** (`gold_rates.csv`): Daily 24K gold rate used for valuation (no rates on Sundays and some holidays).
- **Branches** (`branches.csv`): Branch master data.
- **Customers** (`customers.csv`): Customer profile (no personal identifiers).

Column details and a sample of each table are in [`data/`](data).

## Repository structure

```
sql/          one SQL file per task
notebook/     Python analysis
data/         table samples and column descriptions
```
