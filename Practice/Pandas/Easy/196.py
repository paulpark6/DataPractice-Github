# 196. Delete Duplicate Emails
# https://leetcode.com/problems/delete-duplicate-emails/description/?lang=pythondata

# SOLUTION:\

import pandas as pd

def delete_duplicate_emails(person: pd.DataFrame) -> None:
    person.sort_values(by='id',ascending=True,inplace=True)
    # Drop the duplicates based on email.
    person.drop_duplicates(subset='email', keep='first', inplace=True)