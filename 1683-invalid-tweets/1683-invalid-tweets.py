import pandas as pd

def invalid_tweets(tweets: pd.DataFrame) -> pd.DataFrame:
    # cond1 = tweets[len(tweets[['content']]) < 15]
    # result = cond1['tweet_id']
    result = tweets[tweets['content'].str.len() > 15][['tweet_id']]
    return result