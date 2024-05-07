# https://leetcode.com/problems/employee-bonus/description/?lang=pythondata
# employee bonus

import pandas as pd

def employee_bonus(employee: pd.DataFrame, bonus: pd.DataFrame) -> pd.DataFrame:
    comb = pd.merge(employee,bonus, left_on='empId', right_on='empId', how="left")
    return comb[(comb['bonus']<1000) | (comb['bonus'].isna())][['name','bonus']]