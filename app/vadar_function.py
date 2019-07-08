#This script runs vader sentiment analysis on string passed as 'text'
import pandas as pd
import nltk
from nltk.sentiment.vader import SentimentIntensityAnalyzer

nltk.download('vader_lexicon')


def analyze_text(text):

   sid = SentimentIntensityAnalyzer()

   filtered_text = text.strip('./')
   print(filtered_text)
   text_results = {}
   ss = sid.polarity_scores(filtered_text)
   text_results['negative'] = ss['neg']
   text_results['neutral']  = ss['neu']
   text_results['positive'] = ss['pos']
   text_results['polarity'] = ss['compound']

   return (text_results)




