# Load the dplyr package
library(dplyr)
#Question-01:- Did Rich folks survive at a higher rate ?
titaniccc <- read.csv("C:/Users/Hamza/Downloads/titaniccc.csv")
# Defining threshold for classifying passengers in rich or poor category (e.g.75th percentile)
fare_threshold <- quantile(titaniccc$fare, 0.75)
rich_survival_rate <- titaniccc %>%
filter(fare > quantile(fare, 0.75)) %>%
summarize(survival_rate = mean(survived))
# Viewing survival rates for both
print(survival_rates)
# checking who survived more
if (survival_rates$survival_rate[1] > survival_rates$survival_rate[2]) {
  print("Poor passengers survived more.")
} else if (survival_rates$survival_rate[1] < survival_rates$survival_rate[2]) {
  print("Rich passengers survived more.")
} else {
  print("Survival rates for rich and poor passengers are equal.")
}
#ANSWER: Based on results, rich survived more



#Question-02:Does survivability depend on where you got onboard the Titanic?
library(dplyr)
survival_by_embarkation <- titaniccc %>%
group_by(embarked) %>%
summarize(survival_rate = mean(survived))
print(survival_by_embarkation)
#ANSWER: Thus the survival rates depend on where passenger got onboard. In this dataset, passengers who embarked from "C" had the highest survival rate, followed by those who embarked from "Q", and passengers from Southampton "S" had the lowest survival rate. 
#So, it can be said that survivability on the Titanic depends on where passengers boarded the ship. Specifically, passengers who embarked from "C" had a higher chance of survival compared to those from "Q" and "S".



#Question-03:Do the male passengers sacrificed themselves to save female passengers? Justify your answer.
library(dplyr)
# Calculate survival rates by gender
survival_by_gender <- titaniccc %>%
group_by(sex) %>%
summarize(survival_rate = mean(survived))
print(survival_by_gender)
# Comparing survival rates of both
if (survival_by_gender$survival_rate[1] < survival_by_gender$survival_rate[2]) {
  print("Survival rate for males is higher than females.So it can be said that males sacrificed themselves for females.")
} else if (survival_by_gender$survival_rate[1] > survival_by_gender$survival_rate[2]) {
  print("Survival rate for females is higher than males.So it can be said that males didnotsacrificed themselves.")
} else {
  print("Survival rates for males and females are equal.So further analysis is required to check if sacrifice occured or not")
}
#ANSWER JUSTIFICATION: Survival rate of female is 74% and males is 18%. So it can be said that males sacrificed themselves for females because males survival rate is much less than that of females.