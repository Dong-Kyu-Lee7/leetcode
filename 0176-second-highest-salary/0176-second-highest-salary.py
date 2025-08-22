import pandas as pd

def second_highest_salary(employee: pd.DataFrame) -> pd.DataFrame:
    employee['dense_rank'] = employee['salary'].rank(method = 'dense', ascending = False)
    second_salary = employee[employee['dense_rank'] == 2]['salary']
    
    if second_salary.empty:
        second_salary = None
    else:
        second_salary = second_salary.iloc[0]

    return pd.DataFrame({'SecondHighestSalary': [second_salary]})