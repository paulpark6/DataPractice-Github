import pandas as pd

## Solution 1

def combine_two_tables(person: pd.DataFrame, address: pd.DataFrame) -> pd.DataFrame:
    df_new = person.set_index('personId').join(address.set_index('personId'), on ="personId",how = "left")[['firstName', 'lastName', 'city', 'state']]
    return df_new 

## Solution 2


def combine_two_tables2(person: pd.DataFrame, address: pd.DataFrame) -> pd.DataFrame:
    comb = person.merge(address, left_on = "personId", right_on="personId", how="left")
    comb = comb[["firstName","lastName","city","state"]]
    return comb
s = "string"
for i in range(0, len(s)):
    print(s[i])

