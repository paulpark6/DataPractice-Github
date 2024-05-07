## Need to review this question

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
        for i in range(len(s)):
            char = s[i]
            # If it's not the first character and the current value is greater than the previous one
            if i > 0 and roman[char] > roman[s[i-1]]:
                # Subtract twice the previous value because it was added once already
                total += roman[char] - 2 * roman[s[i-1]]
            else:
                # Otherwise, just add the current value
                total += roman[char]
        return total

