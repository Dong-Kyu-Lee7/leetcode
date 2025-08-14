import pandas as pd

def article_views(views: pd.DataFrame) -> pd.DataFrame:
    cond1 = views[(views['author_id']) == (views['viewer_id'])]
    cond2 = cond1.rename(columns = {'author_id' : 'id'})[['id']]
    result = cond2.drop_duplicates().sort_values(by = ['id'])
    return result