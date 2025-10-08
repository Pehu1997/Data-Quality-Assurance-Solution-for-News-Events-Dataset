# Data-Quality-Assurance-Solution-for-News-Events-Dataset
This project focuses on building a comprehensive Data Quality (DQ) assurance framework for a real-world “News Events” dataset. It includes data profiling, cleaning, validation, and automated monitoring of key DQ dimensions using Python, MySQL, and interactive visualization inside Jupyter Notebook.

## Key Features

### Data Cleaning & Preprocessing:

* Convert datetime columns to standard formats

* Handle missing values (NaN → None) for MySQL compatibility

* Drop duplicate records based on primary keys (event_id)

* Standardize categorical columns (location, company_name, event_type)

* Handle numeric outliers in amount_normalized and headcount



### Data Profiling:

* Identify missing values, outliers, and invalid entries

* Generate statistics and summaries for each column

* Analyze uniqueness, completeness, and consistency

* Data Quality Metrics:

* Completeness, Uniqueness, Consistency, Accuracy/Validity, Text Quality

* Calculation methods and results documented for each metric

### Dashboard & Monitoring:

* Interactive dashboard for visualizing data quality metrics

* Automated monitoring plan for ongoing quality checks

Project Structure
project-root/
│
├─ data/                       # Raw and cleaned dataset files
│   ├─ news_events_raw.jsonl
│   ├─ cleaned_news_events.csv
│   └─ advanced_cleaned_news_events.csv
│
├─ notebooks/                  # Jupyter notebooks for EDA & cleaning
│   └─ news_events_main.ipynb
│     └─ news_events_dq.ipynb
│
│
├─ scripts/                    # Python scripts for cleaning, profiling, and DB loading
│   ├─ advanced_cleaning.py
│   └─ mysql_load.py
│
├─ dashboard/
        └─ dq dashboard images 
                             # Dashboard files (Power BI and Plotly + Dash)
│
├─ README.md                   # Project overview (this file)
└─ requirements.txt            # Python dependencies

### Setup and Running Instructions

Clone the repository:

git clone <repository_url>
cd project-root


Install dependencies:

pip install -r requirements.txt


Load raw data:

Place JSONL files in the data/ directory.

Use the advanced_cleaning.py script or notebook to process and clean the data.

Data Cleaning:

Run the notebook data_cleaning.ipynb or advanced_cleaning.py to:

Flatten JSONL files

Handle missing values and duplicates

Standardize columns and clean text

Handle outliers and validate datatypes

Load into MySQL:

Update MySQL credentials in mysql_load.py.

Run the script to upload the cleaned dataset into your MySQL database.

Explore Data Quality Metrics:

Check Notion Document or dashboard for completeness, uniqueness, consistency, and outlier metrics.

### Notion Document

Solution Summary: Overview of the approach and workflow

Data Profiling & Issue Findings: Insights and DQ issues

DQ Metric Definitions & Calculations: Metrics, calculation methods, and results

Data Quality Improvement Steps: Cleaning steps and observed improvements

Dashboard Overview: Key insights for stakeholders

Automated Monitoring Plan: Framework for ongoing DQ checks

IDE Used for Development: Jupyter Notebook, VS Code

Technologies & Tools

Python (pandas, numpy, re, SQLAlchemy etc.)

MySQL (for data storage, DDL)

Jupyter Notebook / VS Code (IDE)

Power BI / Plotly (for dashboard visualization)


Author,

Aditi Shil