nums = [3, 2, 4]
target = 6

def two_sum(nums, target)
  (0..nums.length - 1).each do |index|
    nxt_num = index + 1

    (nxt_num..nums.length - 1).each do |index2|
      return [index, index2] if nums[index] + nums[index2] == target
    end
  end
end

p two_sum(nums, target)
