# Empower-HR
Unveiling the Secrets of Attrition and Training Efficacy

### Introduction:
This report aims to provide insights into two key aspects of human resource management: employee attrition and training program effectiveness. The analysis is based on HR data, including various metrics like age, department, performance ratings, etc.

### Objectives:
The project focuses on two primary objectives:
  1. To determine the factors contributing to employee attrition and provide insights for reducing attrition rates.
  2. To analyze the effectiveness of training programs and recommend improvements.

### Data Cleaning and Preparation: 
The initial dataset contained several missing values and discrepancies. Data cleaning involved:
  1. For the Gender & Position column, the values were updated to a more concise format for easier handling in future analyses. Specifically, the transformations were:
     - 'Female' was replaced with 'F'
     - 'Male' was replaced with 'M'
     - 'DataScientist' was replaced with 'Data Scientist'
     - 'MarketingAnalyst' was replaced with 'Marketing Analyst'
  2. For more detailed analysis, the Age and Salary columns were categorized into different groups. These categorizations were designed to facilitate subgroup analyses, enabling the identification of patterns or trends that might not be obvious when considering the entire data set.
     - Age Categories:
         - Less than or equal to 30 years
         - Greater than 30 years
     - Salary Categories:
         - 50k-60k
         - 60k-70k
         - 70k-80k
         - 80k-90k
         - 90k-100k
  3. Converting the Last Promotion Date to a Standard date format.

### Analytics & Insights:

### Employee Attrition Analysis:
  1. Department wise Attrition rate
