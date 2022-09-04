from typing import List

class Solution:
  def search(nums: List[int], target: int ) -> int:
    index = 0
    for num in nums:
      if num == target:
        return index

      index += 1

    return -1



print(Solution.search([-1,0,3,5,9,12], 9))
print(Solution.search([-1,0,3,5,9,12], 2))