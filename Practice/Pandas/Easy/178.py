import pandas as pd

def order_scores(scores: pd.DataFrame) -> pd.DataFrame:
    fin = scores.copy()  # Creating a copy of the input DataFrame
    fin['rank'] = fin['score'].rank(method='dense', ascending=False)  # Adding a rank column
    return fin.sort_values(by='rank', ascending=True)[['score','rank']]  # Sorting values by rank