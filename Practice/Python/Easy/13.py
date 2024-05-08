class Solution:
    def romanToInt(self, s: str) -> int:
        total = 0
        roman = {
            "I": 1,
            "V": 5,
            "X": 10,
            "L": 50,
            "C": 100,
            "D": 500,
            "M": 1000
        }
        length = len(s)
        for i in range(0,length):
            if i != 0 and roman[s[i-1]]<roman[s[i]]: # when prev is smaller than current
                total += (roman[s[i]]-2*roman[s[i-1]])
            else:
                total+=roman[s[i]]
        return total
