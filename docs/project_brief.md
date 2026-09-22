**Project-brief: Student Retention Early-warning Dashboard**

**#1. Problem Statement**
After their first year of college, many students drop out, and both sides bear the expense. In addition to the university losing tuition income and failing to meet its retention targets, students lose time, money, and momentum. The issue is timing: advisors frequently don't become aware of a student's difficulties until it's too late to offer assistance. In order to help advisors reach out to first-semester students who are at risk of dropping out early and focusing their limited time on the students who need it most, I developed a predictive model and dashboard.

**#2. Types of Analytics used**
Four types of analytics are used in this project, each of which builds upon the previous level:

**Descriptive:** What happened? I begin by tracking the number of students who remain and those who drop out, as well as the differences in these rates among various programs and student groups.
**Diagnostic:** Why is this happening? I then examine the variables that are associated with dropout, including first-semester performance, course of study, and tuition payment status. These are not established causes, but rather correlations.
**Predictive:** What is most likely to happen? I train a model that calculates each student's dropout risk using data from the first semester.
**Prescriptive:** What actions should we take? Lastly, I create a sorted watchlist based on those risk scores so advisors know who to reach out to first.

**#3. Who this is for**
This project would be used by four groups, each of which has a distinct question:

-In order to focus recruitment efforts appropriately, **enrollment management** tries to understand the kind of students who enroll and remain.

-**Program chairs and deans** are concerned about their respective programs. They want to determine which courses lose the most students and whether there are any issues that need to be fixed.

-There are too many students and does not have enough time for **advisors and the student success staff**. They need a limited list of people to contact first.

-**The institutional research office and provost** are interested in the overall retention rate and if it is increasing or decreasing.

**#4. Business Questions**
I wanted the data to address the following questions:

1. How many of the students in the dataset are still enrolled, how many graduated, and how many dropped out?

2. Which courses see the highest dropout rates?

3. Does a student's application process or admission grade indicate anything about their final performance?

4. How much can we learn about a student's final outcome from their first semester?

5. Are students who don't have a scholarship, are in debt, or are late on their tuition more likely to drop out?

6. Which students appear to be most at risk after the first semester, and why?

**#5. KPIs**
These are the figures that I track and display on the dashboard during the project.

**Dropout rate:** The percentage of students  who dropped out.
**Graduation rate:** The percentage of all students in the dataset who completed their education.
**Semester-1 Pass rate:** The percentage of students who passed the courses they took in their first semester.
**Current tuition rate:** The percentage of students who have paid their tuition on time.
**At-risk number:** The number of students exceeding my selected cutoff for which the model provides a dropout probability.

**#6. Model Goal and Success Criteria**
-What I'm predicting is whether or not a student will drop out.

The information we have about a student at the time of enrollment and the results of their first semester are shown to the model (I purposefully excluded the data from the second semester).By then, it's often too late for an advisor to step in and they wouldn't have this information when choosing who to contact.
What is considered successful? In order to avoid giving advisers false alarms, I want the model to identify as many students as possible who actually do drop out. Students will slip through if it misses too many. Advisors lose faith in the list if it highlights too many. Since the majority of students do not drop out, accuracy alone cannot tell me if I've found the correct balance. Simply assuming that almost everyone stays would make a model appear nice.

**#7. Data source**
Realinho, V., Vieira Martins, M., Machado, J., & Baptista, L. (2021).
Predict Students' Dropout and Academic Success [Dataset]. UCI Machine
Learning Repository. https://archive.ics.uci.edu/dataset/697
License: CC BY 4.0.
Paper: Realinho et al. (2022), Predicting Student Dropout and Academic
Success, Data 7(11), 146. https://doi.org/10.3390/data7110146


**#8. Limitations**
-It comes from just one institution. Because the sample is from a single school, what is true here might not be true for other students or programs.
-The data lacks a timeline. I can't determine if things are improving or growing worse over time without dates, I can only determine the general pattern.
-These are former students, not present ones. For better or worse, everyone in the dataset has already completed their work. The purpose of the watchlist, which is based on their data, is to illustrate how the strategy would function rather than to now flag any individuals.
-Causation is not correlated. Dropouts are not always caused by unpaid tuition, even if they coexist with it. Both may be motivated by something else, such as general financial difficulties.
-I purposefully excluded gender and nationality. Even if they are present in the raw data, they are removed since doing so puts the model at danger of learning unfair patterns rather than ones that are actually helpful.









