from typing import List


input = [1, 2, 1]
# expected_output = [1, 2, 1, 1, 2, 1]

def get_concatenation(nums: List[int]) -> List[int]:
  ans = []

  for num in nums:
    ans.append(num)

  return ans + nums


print(get_concatenation(input))