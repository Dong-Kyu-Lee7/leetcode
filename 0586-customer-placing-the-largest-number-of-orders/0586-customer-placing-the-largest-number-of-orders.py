import pandas as pd

def largest_orders(orders: pd.DataFrame) -> pd.DataFrame:
    result = orders.groupby('customer_number').count().reset_index()

    result = result.loc[result['order_number'].max() == result['order_number'], ['customer_number']]
    return result