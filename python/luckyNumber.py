arr = [2, 2, 3, 4]
arr2 = [1, 2, 2, 3, 3, 3]
arr3 = [2, 2, 2, 3, 3]
arr4 = [5]
arr5 = [7, 7, 7, 7, 7, 7, 7]

def findLucky(arr):
  hash = {}
  output = -1

  for num in arr:
    if num in hash:
      hash[num] += 1
    else:
      hash[num] = 1

  for key, value in hash.items():
    if key == value and key > output:
      output = key

  return output


print(findLucky(arr))
print(findLucky(arr2))
print(findLucky(arr3))
print(findLucky(arr4))
print(findLucky(arr5))

