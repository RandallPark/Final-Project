# Dependencies
import tweepy
import json
import numpy as np
from datetime import datetime
import matplotlib.pyplot as plt

# Twitter API Keys
consumer_key = "Ed4RNulN1lp7AbOooHa9STCoU"
consumer_secret = "P7cUJlmJZq0VaCY0Jg7COliwQqzK0qYEyUF9Y0idx4ujb3ZlW5"
access_token = "839621358724198402-dzdOsx2WWHrSuBwyNUiqSEnTivHozAZ"
access_token_secret = "dCZ80uNRbFDjxdU2EckmNiSckdoATach6Q8zb7YYYE5ER"

# Setup Tweepy API Authentication
auth = tweepy.OAuthHandler(consumer_key, consumer_secret)
auth.set_access_token(access_token, access_token_secret)
api = tweepy.API(auth, parser=tweepy.parsers.JSONParser())

# Target User
target_user = 'latimes'

# Get all tweets from home feed
public_tweets = api.user_timeline(target_user)

# A list to hold tweet timestamps
tweet_times = []

# Loop through all tweets and append to the list
for tweet in public_tweets:
    raw_time = tweet["created_at"]
    # @TODO: YOUR CODE HERE!
    raise NotImplementedError()

# Convert tweet timestamps to datetime objects that can be manipulated by Python
# A list to hold datetime objects
converted_timestamps = []
for raw_time in tweet_times:
    # https://docs.python.org/3/library/datetime.html#strftime-and-strptime-behavior

    # @TODO: YOUR CODE HERE!
    raise NotImplementedError()

print(tweet_times[0])
print(tweet_times[1])

print(converted_timestamps[0])
print(converted_timestamps[1])

diff = converted_timestamps[0] - converted_timestamps[1]
print("Time difference: ", diff)
print('seconds: {}'.format(diff.seconds))
