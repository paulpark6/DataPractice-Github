# https://leetcode.com/problems/unique-number-of-occurrences/?envType=daily-question&envId=2024-01-17
# Unique Number of Occurences
class Solution:
    def uniqueOccurrences(self, arr: List[int]) -> bool:
        words = dict()
        for value in arr:
            if value in words:
                words[value] +=1
            else:
                words[value] = 1
        counts = dict()
        for count in words.values():
            if count not in counts.keys():
                counts[count] = 1
            else:
                return False
        return True
    
    def uniqueOccurrences2(self, arr: List[int]) -> bool:
        words = Counter(arr)
        counts = dict()
        for count in words.values():
            if count not in counts.keys():
                counts[count] = 1
            else:
                return False
        return True