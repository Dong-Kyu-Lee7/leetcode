import pandas as pd

def pivotTable(weather: pd.DataFrame) -> pd.DataFrame:
    result = pd.pivot_table(weather, index = 'month', columns = 'city', values = 'temperature', aggfunc = 'max')
    return result