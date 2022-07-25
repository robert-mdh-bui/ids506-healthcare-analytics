___
# Healthcare Information Management and Analytics 

## Information
- Spring 2022, T 3-5:45 PM 
- Dr. Ranganathan Chandrasekaran
- University of Illinois at Chicago, Liautaud Graduate Business School
- Information and Decision Sciences Department, IDS.506
___
## Overview of Projects and Subdirectories

___
### Main Term Project

#### Context:
- Final Term Project in applied data science, based on healthcare-related topic.
#### Problem:
- How do we measure the community response to peers' testimonials of personal experiences of COVID-19 and its symptoms? What factors influence the community response (likes, comments, sentiments, etc.) to a certain small creator's public health testimonial?
#### Solution:
- Collection of ~300 YouTube videos from smaller, non-institution creators, collection of metadata, and processing via text clustering (nltk/VADER/CorEx) of transcripts and computer vision analysis (OpenCV/FER) of audiovisual components.
- GLM Multiple Regressions analysis of component factors and coefficients (R/caret/tidymodels).
#### Tech Stack:
- Python:
    - pandas
    - youtube-transcript-api, requests
    - nltk, VADER, CorEx
    - opencv, FER
- R: 
    - tidyverse, dplyr
    - caret, tidymodels
    - gt

___
### HINTS Analysis on EMR Patient Participation

#### Context:
- Final Term Project in applied data science, based on healthcare-related topic.
#### Problem:
- How do we measure the community response to peers' testimonials of personal experiences of COVID-19 and its symptoms? What factors influence the community response (likes, comments, sentiments, etc.) to a certain small creator's public health testimonial?
#### Solution:
- Collection of ~300 YouTube videos from smaller, non-institution creators, collection of metadata, and processing via text clustering (nltk/VADER/CorEx) of transcripts and computer vision analysis (OpenCV/FER) of audiovisual components.
- GLM Multiple Regressions analysis of component factors and coefficients (R/caret/tidymodels).
#### Tech Stack:
- Python:
    - pandas
    - youtube-transcript-api, requests
    - nltk, VADER, CorEx
    - opencv, FER
- R: 
    - tidyverse, dplyr
    - caret, tidymodels
    - gt

___
### Vanderbilt Elective Surgery Personnel Scheduling

#### Problem:
- Vanderbilt U Medical Center in the case study is looking for ways to improve on advance scheduling of surgery medical personnel for elective procedures based on available data.
#### Solution:
- Mixed time series model (ARIMAx with regressors) can deliver some amount of predictive power uplift (at ~6% MAPE)
#### Tech Stack:
- R:
    - tidyverse
    - tsibble, fable, feasts
    - patchwork

___
### Chronic Kidney Disease Screening

#### Problem:
- Healthcare providers need to be able to detect high-risk subjects for clinical testing for Chronic Kidney Disease (CKD).
#### Solution:
- Elastic-Net Logistic Regression model after some feature engineering and cleaning results in a +45% uplift in Balanced Accuracy, and +446% uplift in Sensitivity (True Positive Rate)
#### Tech Stack:
- R:
    - tidyverse
    - themis
    - caret, tidymodels

___
### Predicting 7-yr Prostate Cancer Survival

#### Problem:
- At diagnosis, healthcare providers need to gauge a patient's survivability to determine their needs for follow-up treatment timelines.
#### Solution:
- eXtreme Gradient Boosted Random Forest ensemble (xGBoost) model after extensive feature engineering and cleaning, combined with manual screening results in a +33.6% uplift in Balanced Accuracy.
#### Tech Stack:
- R:
    - tidyverse
    - survival, survminer
    - themis
    - caret
    - tidymodels, textrecipes, discrim, vip


___
### Mission Hospital Package Pricing

#### Problem:
- At admission, Mission Hospital (Durgapur, India) need to gauge a patient's predicted service needs to determine package pricing rate structures.
#### Solution:
- Multiple Linear model model after extensive feature engineering and cleaning.
#### Tech Stack:
- R:
    - tidyverse
    - caret
    - tidymodels
___
### Medicare Fraud Detection

#### Problem:
- Medicare administration agencies need to be able to identify fraudulent claims in order to keep costs at a controllable level.
#### Solution:
- GLM Logistic Regression or Linear SVM models achive similar levels of performance (~+145% uplift in True Positive Rate, and ~+70% uplift in F1 measure)
#### Tech Stack:
- Alteryx

___
### Medical Examination Demand Forecasting at Fargo Health Group

#### Problem:
- Fargo Health Group needs to manage demands for medical examinations, and use predictive analysis to better plan and prepare to respond to this demand.
#### Solution:
- (Modeling performed by other party). Missing data problem resolved by cleaning and imputation (MICE/Kalman filtering).
#### Tech Stack:
- R:
    - tidyverse
    - caret, tidymodels
    - tsibble, fable, feasts 
    - imputeTS

