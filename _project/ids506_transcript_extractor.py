# importing modules
! pip install youtube_transcript_api
import re
import pandas as pd
import numpy as np
from youtube_transcript_api import YouTubeTranscriptApi

# nltk-related junk
import nltk
nltk.download('stopwords')
nltk.download('punkt')
nltk.download('wordnet')
from nltk.corpus import stopwords
from nltk.tokenize import word_tokenize
from nltk.stem import WordNetLemmatizer

# initialising lemmatizer object
lem = WordNetLemmatizer()

# initialising stopwords list
stop_words = set(stopwords.words('english'))

# wrapper function
def get_text(url):
    
    # Try/exception loop
    try:
      # get transcript object from API
      transcript = YouTubeTranscriptApi\
                      .list_transcripts(url)\
                      .find_transcript(['en'])\
                      .fetch()

      # joining individual lines into text and stripping for whitespace and special chars
      txt = ' '.join([d['text'] for d in transcript])
      txt = txt.replace('\n', '')
      txt = re.sub(r"(@[A-Za-z0–9_]+)|[^\w\s]|#|RT|http\S+", "", txt)
      
      # tokenising
      tokenlist = word_tokenize(txt)
      txt = []

      # filtering for stopwords, lemmatising, and filtering for musical cues
      for w in tokenlist:
          if w not in stop_words: 
              w = lem.lemmatize(w.lower())
              if w != "music":
                  txt.append(w)
      
      # rejoining all tokens into raw string for output
      output = ' '.join(txt)
      
      return(output)

    # If exception is raised by any component, return NoneType
    except Exception as ex:
      return(None)

# Unintentional invocation protection wrapper
if __name__ == __main__:
	excel_file = pd.read_excel('/content/drive/My Drive/Feature_list.xlsx', sheet_name='Sheet2')
	df = excel_file[['url_id']]
	df['transcript'] = df['url_id'].apply(get_text)

	df_merged = pd.merge(left  = df,
						 right = excel_file,
						 how = "left",
						 left_on = "url_id",
						 right_on = "url_id")\
				.drop(axis = 1, labels = ['Unnamed: 3','Unnamed: 4'])[['video_id','url','url_id','transcript']]
	
	df_merged.to_csv('transcript_out.csv')