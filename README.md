# Titanic Survival Analysis Using R

## Project Overview

This project explores passenger survival patterns from the Titanic disaster using R.

The analysis investigates the relationship between passenger survival and three factors:

1. Passenger fare as an indicator of socioeconomic status.
2. Port of embarkation.
3. Passenger gender.

The project uses data manipulation and statistical summaries to compare survival rates across different passenger groups.

## Dataset

The dataset contains passenger information, including:

- Passenger survival status
- Fare paid
- Port of embarkation
- Gender

**Dataset File:** `titanic.csv`

The dataset was provided through the course assignment.

For dataset access, see [DATASET.md](DATASET.md).

## Technologies and Libraries

- R
- dplyr

## Analysis and Methodology

### 1. Did Rich Passengers Survive at a Higher Rate?

Passenger fare was used as an approximate indicator of socioeconomic status.

The 75th percentile of passenger fares was selected as the threshold for identifying higher-fare passengers. Their survival rate was compared with that of the remaining passengers.

### 2. Does Survival Depend on the Port of Embarkation?

Passengers were grouped according to their port of embarkation.

The average survival rate was calculated for each group to identify differences between passengers who boarded at different locations.

### 3. Did Male Passengers Sacrifice Themselves to Save Female Passengers?

Survival rates were compared between male and female passengers.

The analysis showed a substantial difference between the two groups, with female passengers having a much higher survival rate than male passengers.

This difference is consistent with the historical account of women and children being given priority during evacuation, although survival statistics alone cannot establish individual intentions or actions.

## Results and Discussion

The analysis produced the following general findings:

- **Passenger Fare:** Passengers who paid higher fares had a higher survival rate than lower-fare passengers.
- **Port of Embarkation:** Survival rates differed across embarkation locations. Passengers who embarked at Cherbourg (C) had the highest reported survival rate, followed by Queenstown (Q) and Southampton (S).
- **Gender:** Female passengers had an approximate survival rate of 74%, compared with approximately 18% for male passengers.

These findings suggest that passenger fare, embarkation location, and gender were associated with differences in survival rates in the dataset.

## Conclusion

This project demonstrates how R can be used to explore real-world datasets and investigate relationships between variables.

Using the dplyr package, passenger groups were analyzed and their survival rates were compared to answer the three assignment questions.

The results highlight differences in survival according to passenger fare, embarkation location, and gender.


## How to Run the Project

1. Install R or RStudio.
2. Download or clone this repository.
3. Ensure that `titanic.csv` is in the same folder as the R script.
4. Open `Titanic_Survival_Analysis.R` in RStudio.
5. Install the required package if it is not already installed:

   `install.packages("dplyr")`

6. Run the script to reproduce the analysis.
