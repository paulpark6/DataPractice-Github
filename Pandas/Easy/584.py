# https://leetcode.com/problems/find-customer-referee/description/?lang=pythondata
# Find Customer Referee

import pandas as pd

def find_customer_referee(customer: pd.DataFrame) -> pd.DataFrame:
    return customer[(customer["referee_id"]!=2)|(customer["referee_id"].isna())][["name"]]

# solution 2
import pandas as pd

def find_customer_referee(customer: pd.DataFrame) -> pd.DataFrame:
    return customer[~(customer["referee_id"].isin([2]))[["name"]]