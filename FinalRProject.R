##### Final Project
##### Name: Usman Asghar

## Task 1: Load workspace.  No code needed.  Follow directions on the PDF.
load("/Users/usmanasghar23/Downloads/CollegeSample381_Workspace_v1.RData")


## Task 2: Summary Statistics for AdmissionRate
# a) Summary Stats Code and Results
StatsAdmission <- summary(AdmissionRate)
StatsAdmission

Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
0.0881  0.5300  0.6737  0.6570  0.7843  1.0000 

# b) Variance Code and Results
varAdmission <- var(AdmissionRate)
varAdmission

[1] 0.03559853

# c) Standard Deviation Code and Results
stddevAdmission <- sd(AdmissionRate)
stddevAdmission
[1] 0.1886757

# d) IQR Code and Results
IQRadmission <- IQR(AdmissionRate)
IQRadmission
[1] 0.254375

# e) Mean / Median Comparison: 
The data distribution has a little skew to the left 
as indicated by the mean (65.70) being slightly lower than the median (67.37).


# f) SD / IQR comparison: 
The interquartile range of AdmissionRate at 25.44% is larger than the standard deviation
of 18.87%, suggesting a wider spread in the middle 50% of the data compared to the overall variability. 
This disparity indicates that the distribution may be influenced by outliers because SD is more affected by extreme values than IQR.


## Task 3: Summary Statistics for MedianDebt
# a) Summary Stats Code and Results
statsDebt <- summary(MedianDebt)
statsDebt

Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
5700   14500   17575   17391   20134   27000 

# b) Variance Code and Results
varDebt <- var(MedianDebt)
varDebt

[1] 17271065

# c) Standard Deviation Code and Results
stddevDebt <- sd(MedianDebt)
stddevDebt

[1] 4155.847

# d) IQR Code and Results
IQRdebt <- IQR(MedianDebt)
IQRdebt
[1] 5633.75

# e) Mean / Median Comparison: 
The mean of MedianDebt is 17,391 and the median is 17,575
with the median slightly higher than the mean, this minimal 
difference suggests a slight left skew in the data indicating a
concentration of lower values with fewer higher values pulling the mean upwards.


# f) SD / IQR comparison: 
The interquartile range of MedianDebt at 5633.75 exceeds the standard deviation
of 4155.847 indicating that the middle 50% of data is more spread out than the overall 
data distribution. This disparity probalby suggests there are outliers, particularly on the higher end 
as SD is more sensitive to extreme values than IQR.


## Task 4: Histogram for AdmissionRate
## Remember to save your plot and also submit it to Gradescope.

# a) Code:
hist(AdmissionRate, breaks = seq(0, 1.05, by = 0.15), right = FALSE, main = "Histogram of AdmissionRate", xlab = "Admission Rate", ylab = "Frequency", xlim = c(0, 1), ylim = c(0, 100), col = "blue")


# c) Describe histogram: relatively symmetric, skewed, or neither?
# It looks to be skewed to the left 


# c) Describe histogram: unimodal or bimodal or multimodal?
With a single distinct peak located in the range of admission rates between 0.6 and 0.75 it seems to be unimodal.


## Task 5: Boxplot for AdmissionRate
## Remember to save your plot and also submit it to Gradescope.

# a) Code:
boxplot(AdmissionRate, vertical = TRUE, ylim = c(0, 1.2), main = "Boxplot of Admission Rate", ylab = "Admission Rate", col = "lightblue")


# c) Are there outliers present?
Yes it looks like there are at least two outliers


## Task 6: Shapiro-Wilk Test for AdmissionRate using 0.038 as the cutoff
# a) Code:
shapiro_test <- shapiro.test(AdmissionRate)
shapiro_test


# b) Copy and paste results here
Shapiro-Wilk normality test

data:  AdmissionRate
W = 0.98455, p-value = 0.008653


# c) Do you think that your population is normally distributed?
No 
# c) Reason:
The p-value of 0.008653 is less than the cutoff of 0.038. 
This result indicates that there is significant evidence to reject the 
hypothesis that AdmissionRate follows a normal distribution. 
The data significantly deviates from a normal distribution


# d) Does your decision here match what you are seeing with your histogram from Task 4? Why or why not?
The Shapiro-Wilk test results are consistent with what the histogram shows. 
The AdmissionRate data is not regularly distributed.

## Task 7: Histogram for MedianDebt
## Remember to save your plot and also submit it to Gradescope.

# a) Code:
hist(MedianDebt, breaks = seq(5000, 30000, by = 5000), right = FALSE, 
     main = "Histogram of Median Debt", xlab = "Median Debt ($)", ylab = "Frequency", 
     xlim = c(5000, 30000), ylim = c(0, 120), col = "red")


# c) Describe histogram: relatively symmetric, skewed, or neither?
Its looks to be relatively symmetri


# c) Describe histogram: unimodal or bimodal or multimodal?
Looks to be unimodal



## Task 8: Boxplot for MedianDebt
## Remember to save your plot and also submit it to Gradescope.

# a) Code:
boxplot(MedianDebt, vertical = TRUE, ylim = c(5000, 30000), main = "Boxplot of Median Debt", ylab = "Median Debt ($)", col = "coral")


# c) Are there outliers present?
Yes there appears to be one outlier


## Task 9: Shapiro-Wilk Test for MedianDebt using 0.038 as the cutoff
# a) Code:
shapiroTest <- shapiro.test(MedianDebt)
shapiroTest

# b) Copy and paste results here
Shapiro-Wilk normality test

data:  MedianDebt
W = 0.99396, p-value = 0.4217


# c) Do you think that your population is normally distributed?
Yes


# c) Reason:
Compared to the limit of 0.038, the p-value of 0.4217 is much higher. 
This suggests that the idea that the data originates from a normal 
distribution cannot be rejected due to insufficient evidence. 
The strong p-value indicates that there is no discernible deviation from a
normal distribution in the observed distribution of median debt.

# d) Does your decision here match what you are seeing with your histogram from Task 7? Why or why not?
Yes, considering that task 7's bell-shaped graph indicates that it is about regularly distributed.



## Task 10: Compare average MedianDebt for different Regions. Create a confidence interval, assuming equal variances. (See PDF for CI to create.)

# a) Code:
conf_interval <- t.test(plains, lakes, var.equal = TRUE, conf.level = 0.932)
conf_interval


# b) Copy and paste results here
Two Sample t-test

data:  plains and lakes
t = 0.1084, df = 63, p-value = 0.914
alternative hypothesis: true difference in means is not equal to 0
93.2 percent confidence interval:
 -1583.307  1779.617
sample estimates:
mean of x mean of y 
 18586.28  18488.12 


# c) State the parameter the confidence interval is for.
The confidence interval is for the difference in mean MedianDebt between 
the Great Plains and Great Lakes regions (μ_Great Plains - μ_Great Lakes).


# d) Write down the confidence interval.
[1] (-1583.307,  1779.617)


# e) Write an interpretation of your confidence interval.
"We are 93.2% confident that the true difference in mean MedianDebt 
between the Great Plains and Great Lakes regions lies between a and b dollars."


# f) We are interested in whether there is evidence that there is specific value difference between the two groups. (See PDF for more specifics.)
# Does this value seem plausible (like it could happen)?
Yes

# Reason why or why not.
At the 93.2% confidence leve the confidence interval which includes zero
indicates that there is no statistically significant difference between the 
average median debt of the two regions. Also 1000 is a reasonable estimate for the 
difference in the average median debt between the Great Plains and the Great Lakes 
areas because it is within the range of our confidence interval. 



## Task 11: Create a confidence interval for the proportion of colleges (variable SAT_Cat) that are a specific one.

# a) Code to observe how many values exist per group.
table(college$SAT_Cat) # count by group
sum(table(college$SAT_Cat)) # total number of observations



# b) Check the success / failure condition.
# Code (if needed):
> table(college$SAT_Cat)

 Lower Middle Higher 
    58    142     48 
> sum(table(college$SAT_Cat))
[1] 248

# Expected Number of Successes = 48
# Expected Number of Failures = 200
# Can we use the Normal Distribution to approximate this confidence interval?
Yes, both conditions for using the Normal distribution to approximate the confidence 
interval are met, as the expected number of successes is 48 and the expected number 
of failures is 200.

# c) Code for Confidence Interval:
ci <- prop.test(48, 248, conf.level = 0.998, correct = FALSE)$conf.int
ci


# d) Copy and paste results here
[1] 0.1279918 0.2818305
attr(,"conf.level")
[1] 0.998


# e) State the parameter the confidence interval is for.
p (population proportion)



# f) Write down the confidence interval.
(12.7%, 28.1%) with a 99.8% accuracy




## Task 12: Create a confidence interval for the variance of MedianDebt. (See PDF for CI to create.)

# a) Code:
library(EnvStats)
varianceCi <- varTest(MedianDebt, conf.level = 0.927)
varianceCi



# b) Copy and paste results here
Results of Hypothesis Test
--------------------------

Null Hypothesis:                 variance = 1

Alternative Hypothesis:          True variance is not equal to 1

Test Name:                       Chi-Squared Test on Variance

Estimated Parameter(s):          variance = 17271065

Data:                            MedianDebt

Test Statistic:                  Chi-Squared = 4265952994

Test Statistic Parameter:        df = 247

P-value:                         0

92.7% Confidence Interval:       LCL = 14797479
                                 UCL = 20444355


# c) State the parameter the confidence interval is for.
Population variance


# d) Write down the confidence interval.
92.7% Confidence Interval:       LCL = 14797479
                                 UCL = 20444355

# e) What assumption did we need to make to construct this confidence interval?
We should assume that the population is approximately normal.



# e) Do you think that this assumption was met? You should reference an earlier Task from this project to answer this question.
Yes we are able to conclude that it was met because the Histogram and 
Shapiro-Wilk test both reveal that MedianDebt was regularly distributed.



## Task 13: Hypothesis Test for AdmissionRate
# a) Do you know sigma^2 (the population variance) or not?
No we do not know what it is



# a) Name the distribution you should use when performing this test.
Since we do not know the population variance
we should use the t-distribution for this hypothesis test.



# b) What conditions must you satisfy to perform this test? Do you think they are met?  Why or why not?




# c) State the hypotheses:
#H0:μ = 0.675
#H1:μ < 0.675


# d) Code:
tTest <- t.test(AdmissionRate, mu = 0.675, alternative = "less")
tTest

# e) Copy and paste results here
One Sample t-test

data:  AdmissionRate
t = -1.5022, df = 247, p-value = 0.06716
alternative hypothesis: true mean is less than 0.675
95 percent confidence interval:
      -Inf 0.6767831
sample estimates:
mean of x 
 0.657002 


# f) State the Test Statistic Value:
t = -1.5022

# g) State the P-Value:
p-value = 0.06716

# h) Decision from P-Value (see PDF for significance level):
Do Not Reject H0


# i) Conclusion from P-Value:
The p-value of 0.06716 above the usual significance level indicating insufficient 
statistical evidence to reject the null hypothesis. So this means that there is 
insufficient evidence to suggest that the genuine admission rate is less than 0.675.



# j) State the critical value. Provide your code and results.
criticalValue <- qt(0.074, df = 247, lower.tail = TRUE)
criticalValue


# j) State the critical region.
[1] -1.451175


# k) Decision from Critical Region:
If t < critical value, reject H0. In this scenario, 
I would reject H0 because my t-statistic is smaller than the critical number.


# k) Did you make the same decision based on the critical region that you did with your p-value?
No, I stated Do Not Reject H0 for the P-Value and H0 for the Critical Region.







