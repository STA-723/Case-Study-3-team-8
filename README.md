# Case Study 3: The College Alcohol Study ICPSR 4291

**Summary:**

The Harvard School of Public Health College Alcohol Study (CAS), a multi-round survey that interviewed students in four-year colleges, examined key issues in alcohol abuse and other high risk behaviors among college students, including the relationship of state alcohol control measures and college policies to alcohol use and the role of fraternities and sororities, easy access to alcohol, and low alcohol prices. As in the previous rounds of CAS, which were conducted in 1993 (ICPSR 6577), 1997 (ICPSR 3163), and 1999 (ICPSR 3818), this round collected information on students' use of alcohol, tobacco, and illicit drugs, views on campus alcohol policies and student alcohol use, reasons for drinking alcohol and reasons for not drinking or limiting drinking, and personal difficulties caused by drinking problems (e.g., missed classes and trouble with police). Additional topics covered by the survey include overall health status, daily activities, satisfaction with education being received, grade-point average, living arrangements, social life, sexual activity (heterosexual, homosexual, and bisexual), use of condoms during sexual intercourse, rape, and drunk driving. Background variables include age, height, weight, sex, marital status, religion, mother's and father's education, mother's and father's drinking habits, race, and Hispanic origin.

**Goal:**

Develop a predictive model of alcohol related risks in college students using information readily available to schools, in order to help schools:
  (1) identify populations at risk;
  (2) allocate support ressources as effectively as possible; and
  (3) determine what additional information could be collected to identify populations and students at risk.

**How we do that:**

Reponse variables:
  - Define awareness and risk scores for students that have answered the long survey.
  - Risk desagregated by consumption risk, behavioural risk and situational risks.

Predictive models:
  Base model:
    - Predict risk and awareness as a function of easily accessible predictors (GPA, age, dorm, etc).
  Improved data model:
    - Same, but we add less easily accessible variables
    
The base predictive model will allow us paint a picture of the risk and awareness profile of the student population, and to help allocate support ressources effectively.

Comparison with the improved data model will allow us to access the benefits of collecting additional information.


Other things to look into:
  - Biases encoded in the model?
    - Important under title IX. Need to disantangle differences in need from issues related to differences in data quality/availability.
    - Conditionally valid conformal predictions (based on race, gender, etc.)




in order to help schools allocate help and support as effectively as possible.

Subgoals:

- Identify population at risk and population which is not aware of risks and ressources
- Determine if the schools should increase their data collection efforts in order to better identify students at risk.

it would be worthwhile to collect more information to improve the model

Develop a predictive model of student alcohol consumption and associated risks in order to help schools allocate help and support as effectively as possible.

- So that schools can reach students most in need with appropriate ressources. Right ressources to the rights people.


**Challenges and considerations:**

- Non-representative sample (try post-stratification?)
- Missing values



TODO:

OB: response variables










