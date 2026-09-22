**#METHODOLOGY**
**How I approached the model:**
Using only the data available at the conclusion of the first semester, I trained two classifiers to predict dropout. Since applying it would require training the model on information advisors wouldn't actually have yet, everything from semester two was purposefully left out. Additionally, although though gender and nationality are there in the raw data, I excluded them because I didn't want the model to rely on them rather than truly helpful signals.
**Comparing the two models:**
| Model | Accuracy | ROC-AUC | Dropout precision | Dropout recall |
| Logistic regression | 0.85 | 0.903 | 0.76 | 0.79 |
| Random forest | 0.86 | 0.901 | 0.80 | 0.73 |
**Model Chosen**
I chose Logistic regression. Overall, the two models were comparable, with random forest even having slightly greater precision and accuracy. Recall, however, is crucial in this situation: it costs more to miss a student who is about to drop out than it does for an advisor to spend a few more minutes on a false alarm. The decision was made based on the six-point discrepancy between logistic regression's 79% and random forest's 73% of actual dropouts. Another advantage is that its coefficients are simple to explain to non-data scientists, which is important if advisors are to trust the list and take action.
**Logistic Regression Coefficients**
1. Semester-1 units approved (strongest, negative — passing more units lowers risk)
2. Semester-1 units enrolled (positive — worth further investigation)
3. Tuition fees up to date (negative)
4. Semester-1 units credited (positive)
5. Age at enrollment (positive)
**My Interpretation**
Students who complete their classes and make their tuition payments on time appear secure, and this is the strongest, most assured story about early success and financial security. The other two factors—unit load and credited units—hint at something genuine but haven't been fully explained yet, and I'd rather to point that out honestly than come up with a neat explanation.
**Limitations**
-The full-dataset risk scores do not provide a fair evaluation of the model. Some of those students were in the dataset I trained on, so the model had already "seen" them in some way. Only the results from the held-out test set, as described above, reveal how the model performs on students it has never faced before.

-This demonstrates how things work together rather than what causes what. Simply because a factor is associated with dropout does not imply that it is the cause.

-It is based on the data from a single school. Patterns observed here may not apply to another university with a different student population.
