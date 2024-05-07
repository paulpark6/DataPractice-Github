# Customers Who Never Order

# https://leetcode.com/problems/customers-who-never-order/description/?lang=pythondata

# Solution:
import pandas as pd

def find_customers(customers: pd.DataFrame, orders: pd.DataFrame) -> pd.DataFrame:
    not_customer = customers[~customers['id'].isin(orders['customerId'])].rename(columns={'name':'Customers'})[['Customers']]
    return not_customer



# Solution 2:
import pandas as pd

def find_customers(customers: pd.DataFrame, orders: pd.DataFrame) -> pd.DataFrame:
    not_customer = customers.merge(orders, left_on='id', right_on='customerId', how='left')
    not_customer = not_customer.loc[not_customer['customerId'].isna()]
    not_customer=not_customer[['name']]
    not_customer=not_customer.rename(columns={'name':'Customers'})
    return not_customer