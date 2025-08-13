import pandas as pd

def find_customers(customers: pd.DataFrame, orders: pd.DataFrame) -> pd.DataFrame:
    cond1 = customers[~customers['id'].isin(orders['customerId'])]
    result = cond1[['name']].rename(columns = {'name': 'Customers'})
    return result