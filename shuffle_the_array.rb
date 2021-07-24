nums = [2, 5, 1, 3, 4, 7]
n = 3

def shuffle(nums, n)
  new_arr = []

  (nums.length - 1).times do |i|
    x = nums[i]
    y = nums[i + n] unless (nums[i + n]).nil?
    pair = [x, y] unless [x, y].include?(nil)

    new_arr.push(pair) unless pair.nil?
  end

  new_arr.flatten
end

p shuffle(nums, n)
