# Duplicate Emails

# https://leetcode.com/problems/duplicate-emails/?lang=pythondata

import pandas as pd

def duplicate_emails(person: pd.DataFrame) -> pd.DataFrame:
    # Identify all duplicates (including the first occurrence)
    is_duplicate = person.duplicated(subset=['email'], keep=False)
    
    # Filter the DataFrame to keep only duplicates
    dups_only = person.loc[is_duplicate].drop_duplicates(subset = 'email',keep = 'first')
    dups_only = dups_only[['email']]
    dups_only.rename({'email':'Email'},inplace=True)
    return dups_only