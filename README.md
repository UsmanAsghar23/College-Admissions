# College Admissions and Debt Analysis Project

## 📊 Overview

This project explores a dataset of U.S. colleges to analyze trends in **admission rates** and **median student debt**. The analysis was performed in R and includes summary statistics, visualizations, and inferential statistics to uncover insights about college accessibility and financial burden across regions. 

## 🧠 Tasks Completed

### ✅ Task 1: Load Workspace
Loaded the `.RData` file containing the dataset required for analysis.

### ✅ Task 2: Summary Stats – Admission Rate
- Mean, Median, Variance, Standard Deviation, IQR
- Compared mean vs. median and SD vs. IQR for skewness and spread

### ✅ Task 3: Summary Stats – Median Debt
- Similar analysis as Task 2, focused on financial metrics

### ✅ Task 4: Histogram – Admission Rate
- Custom bins, blue color scheme
- Interpreted shape: skewed and unimodal

### ✅ Task 5: Boxplot – Admission Rate
- Identified potential outliers

### ✅ Task 6: Shapiro-Wilk Test – Admission Rate
- Tested for normality
- p-value indicated non-normal distribution

### ✅ Task 7–8: Histogram & Boxplot – Median Debt
- Found the distribution to be roughly symmetric and unimodal

### ✅ Task 9: Shapiro-Wilk Test – Median Debt
- p-value supported normality assumption

### ✅ Task 10: CI for Median Debt Difference (Plains vs Lakes)
- Used two-sample t-test with equal variances
- Interpreted confidence interval and p-value

### ✅ Task 11: CI for Proportion of Colleges in Higher SAT Category
- Used normal approximation to construct 99.8% CI

### ✅ Task 12: CI for Variance of Median Debt
- Used chi-square distribution
- Verified normality assumption from earlier tasks

### ✅ Task 13: One-Sample Hypothesis Test – Admission Rate
- Tested whether mean < 0.675 using t-distribution
- Compared results from p-value and critical value methods

## 🛠 Technologies Used

- R
- RStudio
- Libraries: `EnvStats`, `stats`

## 📂 Files Included

- `FinalRProject.R`
- `.RData`

## 📌 Notes

- All assumptions for statistical tests were verified through exploratory data analysis (EDA) and Shapiro-Wilk tests.
- This project demonstrates the full data analysis pipeline: summary statistics → data visualization → inferential statistics.

## Reults
<img width="992" alt="Screenshot 2025-05-30 at 9 49 00 AM" src="https://github.com/user-attachments/assets/c4334389-f55d-4529-a424-ae784fe14568" />
<img width="990" alt="Screenshot 2025-05-30 at 9 48 54 AM" src="https://github.com/user-attachments/assets/81d3dfed-e1e7-46dc-a3e6-43d513e0fcbe" />

