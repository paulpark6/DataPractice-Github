class Solution:
    def scoreOfString(self, s: str) -> int:
        # score of string is sum of abs diff of ASCII character of adjacent characters
        length = len(s)
        total  = 0
        for i in range(length-1):
            total += abs(ord(s[i])-ord(s[i+1]))
        return total