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

  4. Age Group-wise attrition rates
     - Based on the provided data, we can infer that the attrition rate for employees over 30 years old is higher (39.73%) compared to employees aged 30 or below (28.74%).
     - This indicates that age group may play a role in employee attrition, with older employees more likely to leave the company.

       <img width="288" alt="Screenshot 2024-02-24 192759" src="https://github.com/aanchals14/Empower-HR/assets/131793044/59a72805-d58a-42db-b554-1e6e8b9a2dd9">


  5. Gender-wise attrition rate
     - Gender does not appear to be a significant factor in employee attrition, as both male and female employees have similar attrition rates (32.10% for females and 35.44% for males).
     - Other factors such as job satisfaction, work-life balance, and career development opportunities may have a more significant impact on employee attrition than gender in this dataset.

       <img width="269" alt="Screenshot 2024-02-24 193519" src="https://github.com/aanchals14/Empower-HR/assets/131793044/8895fcbc-5f84-42be-9add-1846e30b86ed">

  6. Salary-wise attrition rate
     - Employees in the 90K - 100K salary range have the highest attrition rate (85.71%), indicating that factors beyond salary, such as job satisfaction and growth opportunities, significantly influence retention. This suggests that higher salaries alone may not be sufficient to retain employees.
     - As salary ranges increase from 70K to 100K, attrition rates consistently rise above 30%, contrasting with lower ranges (50K - 70K) showing rates below 25%, implying that higher salaries prompt employees to seek more fulfilling roles.
     - Mid-high salary brackets (70K - 90K) face retention challenges, with attrition rates ranging from 32.50% to 38.24%, possibly due to higher expectations, limited growth prospects, or competition from employers offering superior benefits or work environments.

       <img width="292" alt="Screenshot 2024-02-25 003703" src="https://github.com/aanchals14/Empower-HR/assets/131793044/4eb0fbb0-a200-4f1d-a41d-fee82be611cf">

  7. Years of Service-wise attrition rate
     - Employees with 2 years of service have the highest attrition rate (66.67%), suggesting challenges in retaining employees in the early stages of their tenure. This could be due to factors such as mismatched expectations or career development opportunities.
     - Attrition rates remain high for employees with 7 years (50.00%) and 10 years (50.00%) of service. This indicates that as employees stay longer, retention becomes more challenging, possibly due to factors such as limited growth opportunities or evolving job preferences.
     - Employees with 3 or more years of service show relatively stable attrition rates (19.23% to 35.48%). This suggests that after an initial period, employees may become more committed to their roles, leading to lower attrition rates compared to earlier stages.

       <img width="302" alt="Screenshot 2024-02-25 004956" src="https://github.com/aanchals14/Empower-HR/assets/131793044/7d22fd3d-4118-45cb-a63f-3d0cb65913b2">

  8. Satisfaction-score-wise attrition rate
     - There is no clear trend between satisfaction score and attrition rate. Employees with a satisfaction score of 2 have an attrition rate of 29.41%, while those with scores of 3, 4, and 5 have attrition rates of 37.74%, 33.87%, and 28.57% respectively. This suggests that factors other than satisfaction score may be influencing attrition in this dataset.

       <img width="306" alt="Screenshot 2024-02-25 010735" src="https://github.com/aanchals14/Empower-HR/assets/131793044/94cc724a-ab7b-488a-bc4a-242adb13b972">

  9. Training hour-wise attrition rate
      - Employees with fewer training hours show higher attrition rates: 10 hours (59.09%), 20 hours (35.14%), and 25 hours (40.00%). This suggests that inadequate training may lead to employees feeling underprepared or undervalued, increasing the likelihood of leaving.
      - Higher training hours are associated with lower attrition: employees with 30 hours have a low rate (15.63%). This implies that thorough training and skill development opportunities could reduce attrition rates by enhancing employee satisfaction and proficiency.
    
        <img width="291" alt="Screenshot 2024-02-25 112153" src="https://github.com/aanchals14/Empower-HR/assets/131793044/c4b31a13-167b-4ee1-a1f4-cc67407ff512">

 10. Work hours-wise attrition rate
     - Employees working 44 hours have the highest attrition rate (71.43%), followed by those working 45 hours (50.00%) and 42 hours (59.09%). This indicates that longer working hours may lead to higher attrition, possibly due to increased stress, burnout, or dissatisfaction with work-life balance.
     - Employees working standard 40-hour weeks have a relatively lower attrition rate (17.39%). This suggests that adhering to standard working hours may contribute to higher employee retention, potentially due to better work-life balance and job satisfaction.

       <img width="285" alt="Screenshot 2024-02-25 010034" src="https://github.com/aanchals14/Empower-HR/assets/131793044/56f799a7-7d7d-47cf-ad6d-659fe95f715c">

11. Attrition rate by Promotion:
    - Employees who were not promoted have a higher attrition rate (35.43%) compared to those who were promoted (27.27%). This suggests that promotion could be a factor influencing employee retention, with those not promoted being more likely to leave.
    - There is a notable difference in attrition rates between promoted (27.27%) and non-promoted (35.43%) employees. This indicates that promotion may have a mitigating effect on attrition, potentially due to increased job satisfaction or perceived career advancement opportunities.

      <img width="279" alt="Screenshot 2024-02-25 115323" src="https://github.com/aanchals14/Empower-HR/assets/131793044/000344b1-2ebd-49e2-863e-b22fc4573275">
       
#### Employee Training Program Optimization Analysis
  1. Training Hours vs Promotion Rate:
     - Employees with 25 training hours have the highest promotion rate (40.00%), followed by those with 30 hours (31.25%), and 20 hours (18.92%). This indicates a trend where higher training hours are associated with higher promotion rates, suggesting the effectiveness of training programs in facilitating career advancement.
     - The promotion rates for employees with 10 hours of training are the lowest (4.55%), highlighting the potential impact of training on career development. Employees who undergo more training may acquire the skills and knowledge needed for advancement, leading to higher promotion rates.

       <img width="159" alt="Screenshot 2024-02-25 120558" src="https://github.com/aanchals14/Empower-HR/assets/131793044/f390c537-5f7b-4eb1-92c1-abe59168169d">

  2. Training Hours vs. Performance Rating
     - There is a trend of higher average performance ratings associated with lower training levels. Employees with low training levels have the highest average performance rating (4.0909), followed by medium (3.9737), and high (3.8387). This suggests that extensive training may not always directly correlate with higher performance ratings.
     - The data indicates that extensive training may not always lead to higher performance ratings. Employees with lower training levels have higher performance ratings on average, suggesting that factors other than training, such as experience, job fit, or individual capabilities, may play a significant role in determining performance.

       <img width="194" alt="Screenshot 2024-02-25 140617" src="https://github.com/aanchals14/Empower-HR/assets/131793044/6bc5b863-08b0-4118-bc7d-2b89574a478d">

  3. Performance Segment vs Training Hours
     - High performers have the lowest average training hours, indicating they may require less training to achieve high performance. This suggests that high performers may have a higher ability to quickly apply and benefit from training, making their training more effective and efficient.
     - Low performers, despite having the highest average training hours, still have the lowest performance rating. This indicates that the effectiveness of training programs may vary among different performance categories.
     - For low performers, simply increasing training hours may not lead to significant performance improvements, suggesting a need for more targeted or comprehensive training approaches.

       <img width="209" alt="Screenshot 2024-02-25 142305" src="https://github.com/aanchals14/Empower-HR/assets/131793044/c40c9bab-3e6c-4b68-b339-b4ae664677e7">

  4. Training Hours vs Departments
     - Marketing has the highest average training hours (22.12), followed by HR (21.25), Finance (21.43), IT (18.73), and Sales (19.17). This suggests that Marketing and HR departments prioritize or require more extensive training compared to other departments.
     - IT has the highest average performance rating (4.33), followed by Finance (4.14), Sales (4.00), HR (3.67), and Marketing (3.30). This indicates that IT employees tend to perform better on average compared to other departments, while Marketing employees have the lowest performance rating on average.
     - Despite Marketing having the highest average training hours, it has the lowest average performance rating. This suggests that the effectiveness of training programs may vary across departments, with Marketing possibly needing to reassess or adjust its training strategies to improve performance outcomes.

       <img width="272" alt="Screenshot 2024-02-25 142502" src="https://github.com/aanchals14/Empower-HR/assets/131793044/78048fe1-1f73-400b-90c6-d905dad58699">
       

### Recommendations
- Given the high attrition rates in the Finance and IT departments, targeted retention programs may be effective. This could include mentorship programs, work-life balance initiatives, and career development plans.
- Employees with 2 years and those with 7-8 years of service are leaving at high rates. For newer employees, improved onboarding and mentorship could help. For veterans, new career growth opportunities or skill diversification may be beneficial.
- Surprisingly, employees in higher salary brackets are leaving more frequently. This could indicate that the issue is not salary but other factors like work culture, growth opportunities, or job satisfaction. A comprehensive review could help understand this counterintuitive trend.
- Employees with higher performance ratings are also leaving. Ensure that high performers are adequately recognized and have clear paths for career progression.
- While job satisfaction is generally high, employees are still leaving. Regular surveys and one-on-one meetings could help identify and address hidden issues.
- The average training hours are lower for employees who left. This could point to the effectiveness of training programs for employee retention, although the difference is minimal.
- The number of training hours doesn't necessarily correlate with better performance. The focus should be on the quality and relevance of the training programs.
- Recommendations include focusing on training quality, tailoring training programs, and linking training to career progression.
