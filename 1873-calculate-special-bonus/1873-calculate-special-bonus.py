import pandas as pd

def calculate_special_bonus(employees: pd.DataFrame) -> pd.DataFrame:
    employees['bonus'] = 0
    cond1 = (employees['employee_id'] % 2 == 1) & (~employees['name'].str.startswith('M'))

    employees.loc[cond1, 'bonus'] = employees['salary']
    employees = employees.sort_values(by = 'employee_id')
    result = employees[['employee_id', 'bonus']]
    return result