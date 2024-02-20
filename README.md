# Meitav-Trade-Spark-Portfolio-Analyzer

## Overview
A tool to get some visualizations over data from Meitav Trade Spark platform. (since Meitav builtin visualizations sucks)

## Prerequisites
Before running Meitav Trade Spark Portfolio Analyzer, ensure that:
- Python 3 and pip is installed on your system.
- Update `instrument_details.yaml` with the relevant details of the instruments you want to analyze.
- Download from Meitav Trade Spark the xlsx file from your portfolio page.
- [Optional] The `mercury` Python package is installed. You can install it using pip: `pip install mercury`.

## Usage
### Option 1: Running in a Jupter Notebook
1. Change in the 3rd cell the `demo_data.xlsx` to the file path of the xlsx from Meitav Trade Spark.
2. Run the notebook.

### Option 2: Running in Mercury

1. Run mercury with the following command:
```
mercury run
```
2. Add the notebook to the Mercury by running (this needs to be done only once):
```
mercury add /path/to/spark_portfolio_analysis.ipynb

```
3. Go to the Mercury UI in localhost:3000 and navigate to the notebook.
4. Upload the xlsx file to the Mercury using the UI, and wait for the results.