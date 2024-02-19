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
       <img width="284" alt="Screenshot 2024-02-19 173630" src="https://github.com/aanchals14/Empower-HR/assets/131793044/72c7db5a-d952-4a0d-8e5d-db0c385a0d3b">

  2. Position-wise Attrition rates

     - The positions with the highest attrition rates are Financial Manager (85.71%) and Marketing Manager (54.55%). Immediate attention is needed to understand why these roles are experiencing such high attrition.
     - The HR Manager position has the lowest attrition rate at 8.33%, followed by the Sales Associate at 12.50%. These roles seem to have higher job stability.
     - Roles like Software Engineer and Financial Analyst have nearly equal proportions of attrition, indicating that the reasons for leaving could be multifactorial and require a deeper dive.
     - While Data Scientists have a 31.03% attrition rate, the total number of Data Scientists is the highest at 29. Even if the rate is not the highest, the volume of attrition could be impactful.
     - Interestingly, the HR Coordinator has a higher attrition rate (41.67%) compared to the HR Manager (8.33%), suggesting that the level in the hierarchy could be a factor in job stability.
     - The Marketing Analyst has a lower attrition rate compared to the Marketing Manager. This might indicate that as employees move up the ladder in Marketing, they are more likely to leave.
       <img width="309" alt="Screenshot 2024-02-19 174439" src="https://github.com/aanchals14/Empower-HR/assets/131793044/cdaa66f3-f5fc-452b-a652-84b1664233cf">


  3. Performance rating-wise attrition rates
     - Employees with a performance rating of 4.0 have the highest attrition rate at 38.04%.
     - Even employees with a high-performance rating of 5.0 have a significant attrition rate of 34.48%.
     - Employees with a performance rating of 3.0 have the lowest attrition rate at 23.08%.
     - It's intriguing that employees with high-performance ratings are more likely to leave the company.
       <img width="311" alt="Screenshot 2024-02-19 175011" src="https://github.com/aanchals14/Empower-HR/assets/131793044/e4d73e30-e62c-4e72-8eae-8e75ce6fb4eb">

### Recommendations
- Given the high attrition rates in the Finance and IT departments, targeted retention programs may be effective. This could include mentorship programs, work-life balance initiatives, and career development plans.
- Employees with 2 years and those with 7-8 years of service are leaving at high rates. For newer employees, improved onboarding and mentorship could help. For veterans, new career growth opportunities or skill diversification may be beneficial.
- Surprisingly, employees in higher salary brackets are leaving more frequently. This could indicate that the issue is not salary but other factors like work culture, growth opportunities, or job satisfaction. A comprehensive review could help understand this counterintuitive trend.
- Employees with higher performance ratings are also leaving. Ensure that high performers are adequately recognized and have clear paths for career progression.
- While job satisfaction is generally high, employees are still leaving. Regular surveys and one-on-one meetings could help identify and address hidden issues.
- The average training hours are lower for employees who left. This could point to the effectiveness of training programs for employee retention, although the difference is minimal.
- The number of training hours doesn't necessarily correlate with better performance. The focus should be on the quality and relevance of the training programs.
- Recommendations include focusing on training quality, tailoring training programs, and linking training to career progression.
