nums = [2, 2, 1, 1, 1, 2, 2]

def majority_element(nums):
  dic = {}
  for num in nums:
    if num in dic:
      dic[num] += 1
    else:
      dic[num] = 0

  return max(dic, key = dic.get)

print(majority_element(nums))