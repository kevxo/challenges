nums = [1, 2, 3, 1]

def contains_duplicate(nums)
    duplicate = nums.uniq.length == nums.length

    duplicate == false
end

p contains_duplicate(nums)
