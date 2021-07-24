nums = [2, 5, 1, 3, 4, 7]
n = 3

def shuffle(nums, n)
  new_arr = []

  n.times do |i|
    new_arr.push(nums[i])
    new_arr.push(nums[i + n])
  end

  new_arr
end

p shuffle(nums, n)
