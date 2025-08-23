import pandas as pd

def department_highest_salary(employee: pd.DataFrame, department: pd.DataFrame) -> pd.DataFrame:
    # employee['dense_rank'] = employee['salary'].rank(method = 'dense', ascending = False)
    employee['dense_rank'] = employee.groupby('departmentId')['salary'].rank(method = 'dense', ascending = False)
    first_salary = employee[employee['dense_rank'] == 1]

    result = pd.merge(first_salary, department, left_on = 'departmentId', right_on = 'id', suffixes =('_first', '_department'))
    result.rename(columns = {'name_department': 'Department', 'name_first' : 'Employee', 'salary': 'Salary'}, inplace = True)

    return result[['Department', 'Employee', 'Salary']]
    # return result