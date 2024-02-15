# employees earning more than their managers

# https://leetcode.com/problems/employees-earning-more-than-their-managers/?lang=pythondata

# Solutions:

def find_employees(employee: pd.DataFrame) -> pd.DataFrame:
    df_all = employee.merge(employee, left_on="managerId", right_on="id")
    df_all = df_all.loc[df_all['salary_x']> df_all['salary_y']]
    df_all = df_all[['name_x']]
    df_all.rename(columns={'name_x': 'Employee'}, inplace=True)
    return df_all


## need to find a faster solution!!!
