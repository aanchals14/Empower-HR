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
  2. The Age and Salary columns were categorized into different groups for more detailed analysis. These categorizations were designed to facilitate subgroup analyses, enabling the identification of patterns or trends that might not be obvious when considering the entire data set.
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

#### Employee Attrition Analysis:
  1. Department-wise Attrition rates

     - The Finance department has the highest attrition rate at 53.57%, followed by IT at 35.29%.
     - The Sales department has the lowest attrition rate at 20.83%.
       
  2. Position-wise Attrition rates

     - The positions with the highest attrition rates are Financial Manager (85.71%) and Marketing Manager (54.55%). Immediate attention is needed to understand why these roles are experiencing such high attrition.
     - The HR Manager position has the lowest attrition rate at 8.33%, followed by the Sales Associate at 12.50%. These roles seem to have higher job stability.
     - Roles like Software Engineer and Financial Analyst have nearly equal proportions of attrition, indicating that the reasons for leaving could be multifactorial and require a deeper dive.
     - While Data Scientists have a 31.03% attrition rate, the total number of Data Scientists is the highest at 29. Even if the rate is not the highest, the volume of attrition could be impactful.
     - Interestingly, the HR Coordinator has a higher attrition rate (41.67%) compared to the HR Manager (8.33%), suggesting that the level in the hierarchy could be a factor in job stability.
     - The Marketing Analyst has a lower attrition rate compared to the Marketing Manager. This might indicate that as employees move up the ladder in Marketing, they are more likely to leave.

  3. Performance rating-wise attrition rates
     - Employees with a performance rating of 4.0 have the highest attrition rate at 38.04%.
     - Even employees with a high-performance rating of 5.0 have a significant attrition rate of 34.48%.
     - Employees with a performance rating of 3.0 have the lowest attrition rate at 23.08%.
     - It's intriguing that employees with high-performance ratings are more likely to leave the company. 
