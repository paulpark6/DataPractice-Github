import pandas as pd

def combine_two_tables(person: pd.DataFrame, address: pd.DataFrame) -> pd.DataFrame:
    df_new = person.set_index('personId').join(address.set_index('personId'), on ="personId",how = "left")[['firstName', 'lastName', 'city', 'state']]
    return df_new 