# Extracting audio captions
# importing modules
!pip install twython

# nltk-related junk
import nltk
from nltk.sentiment import SentimentIntensityAnalyzer

nltk.download('vader_lexicon')

sia = SentimentIntensityAnalyzer()

def get_nltk_sentiment(txt):
  tmp = sia.polarity_scores(txt)
  return(tmp['compound'])