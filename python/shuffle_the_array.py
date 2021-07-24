nums = [2, 5, 1, 3, 4, 7]
n = 3


def shuffle(nums, n):
  shuffle_arr = []

  for i in range(n):
    shuffle_arr.append(nums[i])
    shuffle_arr.append(nums[i + n])

  return shuffle_arr




print(shuffle(nums, n))