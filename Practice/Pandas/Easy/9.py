# https://leetcode.com/problems/palindrome-number/description/
class Solution:
    def isPalindrome(self, x: int) -> bool:
        og =x
        if x < 0:
            return False
        nums = 0
        while(x>0):
            nums = x%10 + nums * 10
            x //= 10
        return nums == og

