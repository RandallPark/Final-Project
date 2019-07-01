#This script runs vader sentiment analysis on .csv files locate in same 
#file folder as script and creates new .csv containing sentiment.

# get_ipython().system('pip install pandas')
# get_ipython().system('pip install tweepy')
# get_ipython().system('pip install vaderSentiment')

# import tweepy
import pandas as pd
from nltk.sentiment.vader import SentimentIntensityAnalyzer
import nltk
nltk.download('vader_lexicon')

import os

path = '.'

# os function to ('*.csv') - returns files[str]

csv_files = []
# r=root, d=directories, f = files
for r, d, f in os.walk(path):
    for file in f:
        if '.csv' in file:
            csv_files.append(os.path.join(r, file))

for f in csv_files:
    print(f)


#Using Filter
 
def filterString(file_name):
   if 'polarity' in file_name:
      return False
   else:
      return True
 
filtered_files= list(filter(filterString, csv_files))

sid = SentimentIntensityAnalyzer()

filt_file_names = [file.strip('./') for file in filtered_files]
print(filt_file_names)

for file in filt_file_names:
    data_df = pd.read_csv(file)
    print(data_df.head())

    neg_listy = []
    neu_listy = []
    pos_listy = []
    pol_listy = []

    for index, row in data_df.iterrows():
        ss = sid.polarity_scores(row["tweet"])
        neg_listy.append(ss['neg'])
        neu_listy.append(ss['neu'])
        pos_listy.append(ss['pos'])
        pol_listy.append(ss['compound'])


    neg_ser = pd.Series(neg_listy)
    neu_ser = pd.Series(neu_listy)
    pos_ser = pd.Series(pos_listy)
    pol_ser = pd.Series(pol_listy)

    data_df['negative'] = neg_ser.values
    data_df['neutral'] = neu_ser.values
    data_df['positive'] = pos_ser.values
    data_df['polarity'] = pol_ser.values
    #This is where you dictate output file location
   #  data_df.to_csv(f'./analyzed_tweets/polarity_{file}')
    #This is for putting file in folder where it is run.
    data_df.to_csv(f'polarity_{file}')


print('Finished with analyzing files! ')