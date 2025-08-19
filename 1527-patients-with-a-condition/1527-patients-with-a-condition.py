import pandas as pd

def find_patients(patients: pd.DataFrame) -> pd.DataFrame:
    # result = patients[(patients['conditions'].str.contains(r'\bDIAB1', regex = True))]
    result = patients[patients["conditions"].str.startswith("DIAB1") | patients["conditions"].str.contains(" DIAB1", regex=False)]
    return result