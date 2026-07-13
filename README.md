# 📊 Recruitment Analytics Dashboard

## 📌 Project Overview

The Recruitment Analytics Dashboard is an end-to-end Data Analytics project designed to analyze candidate hiring data and optimize recruitment performance. The project demonstrates the complete analytics workflow, from data preparation to business intelligence reporting, using Excel, Python, Oracle SQL, and Power BI.

---

## 🎯 Business Problem

Recruitment teams often struggle to monitor hiring performance, recruiter efficiency, candidate conversion, and recruitment source effectiveness.

This dashboard provides a centralized solution to:

- Monitor the complete recruitment funnel
- Analyze recruiter performance
- Identify top recruitment sources
- Track hiring trends
- Analyze candidate demographics
- Support data-driven hiring decisions

---

## 🛠️ Tools & Technologies

- Microsoft Excel
- Python (Pandas, NumPy, Matplotlib)
- Oracle SQL
- Power BI
- DAX

---

## 📂 Project Workflow

```
Excel Dataset (1000+ Records)
            │
            ▼
Python
(Data Cleaning & EDA)
            │
            ▼
Oracle SQL
(Data Validation & Analysis)
            │
            ▼
Power BI
(Data Modeling & Dashboard)
            │
            ▼
Business Insights
```

---

## 📁 Dataset

The dataset contains **1000+ recruitment records** with the following attributes:

- Application ID
- Candidate ID
- Candidate Name
- Gender
- Age
- City
- Department
- Job Title
- Recruiter
- Recruitment Source
- Apply Date
- Interview Result
- Offer Status
- Joining Status
- Salary

---

# 🐍 Python

Performed:

- Data Cleaning
- Missing Value Analysis
- Duplicate Removal
- Data Type Validation
- Exploratory Data Analysis (EDA)
- Salary Analysis
- Department Analysis
- Recruitment Source Analysis

### Python Libraries

```python
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
```

---

# 🗄️ Oracle SQL

Performed SQL analysis using

- GROUP BY
- HAVING
- CASE
- Aggregate Functions
- Subqueries
- CTE
- Window Functions
- Views

Example

```sql
SELECT Department,
       COUNT(*) AS Total_Applications
FROM Recruitment
GROUP BY Department;
```

---

# 📈 Power BI Dashboard

## Page 1 — Executive Dashboard

- KPI Cards
- Total Applications
- Total Offers
- Total Joined
- Average Salary
- Hiring Trend
- Department Analysis
- Gender Distribution

---

## Page 2 — Recruitment Funnel

- Recruitment Funnel
- Recruiter Performance
- Department Hiring
- Interview Analysis
- Drill Through

---

## Page 3 — Candidate Demographics

- Age Distribution
- Gender Diversity
- City-wise Hiring
- Salary Analysis
- Top 10 Highest Paid Employees
- Decomposition Tree

---

## Page 4 — Recruitment Source Analysis

- Recruitment Source Performance
- Monthly Hiring Trend
- Recruiter vs Source Analysis
- Department vs Source Matrix
- Hiring Rate Analysis

---

# 📊 Key KPIs

- Total Applications
- Total Interviews
- Total Offers
- Total Joined
- Hiring Rate
- Offer Acceptance Rate
- Average Salary
- Highest Salary
- Recruiter Performance
- Recruitment Source Performance

---

# 💡 Business Insights

- Identified the best-performing recruitment sources.
- Evaluated recruiter hiring performance.
- Compared department-wise hiring trends.
- Analyzed candidate demographics.
- Identified salary distribution across departments.
- Monitored monthly recruitment trends.
- Supported data-driven hiring decisions.

---

# 📷 Dashboard Preview

> Add screenshots here after uploading your Power BI dashboard.

Example:

```
images/
│── Executive_Dashboard.png
│── Recruitment_Funnel.png
│── Candidate_Demographics.png
│── Source_Analysis.png
```

---

# 📁 Repository Structure

```
Recruitment-Analytics-Dashboard
│
├── Dataset
│   ├── Recruitment_Analytics_Dataset.xlsx
│
├── Python
│   ├── Recruitment_Analytics.ipynb
│
├── SQL
│   ├── Recruitment_SQL_Scripts.sql
│
├── PowerBI
│   ├── Recruitment_Analytics.pbix
│
├── Images
│   ├── Dashboard1.png
│   ├── Dashboard2.png
│   ├── Dashboard3.png
│   ├── Dashboard4.png
│
├── README.md
```

---

# 🚀 Project Outcomes

✔ Improved recruitment performance analysis

✔ Built an interactive Power BI dashboard

✔ Automated recruitment KPI reporting

✔ Generated actionable business insights

✔ Demonstrated an end-to-end Data Analytics workflow

---

# 🧠 Skills Demonstrated

- Data Cleaning
- Exploratory Data Analysis
- SQL Query Writing
- Window Functions
- Data Modeling
- DAX
- Dashboard Design
- Business Intelligence
- Data Visualization
- KPI Reporting

---

# 👨‍💻 Author

**Hariprasath S**

Aspiring Data Analyst

### Skills

- SQL
- Python
- Power BI
- Excel
- Data Analytics

---

## ⭐ If you found this project useful, consider giving it a star!
