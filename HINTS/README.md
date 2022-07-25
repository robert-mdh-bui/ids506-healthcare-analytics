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
