# https://leetcode.com/problems/two-sum/description/

class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:
        length = len(nums)
        sum = 0
        for i in range(length):
            num = nums[i]
            find = target - num
            if find not in nums:
                continue
            else:
                for j in range(length):
                    if i != j and nums[j] == find:
                        return [i,j]
                    
                    