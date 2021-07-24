nums = [2, 2, 1, 1, 1, 2, 2]

def majority_element(nums)
  hash = {}
  nums.each do |num|
    if hash[num]
      hash[num] += 1
    else
      hash[num] = 0
    end
  end

  hash.key(hash.values.max)
end

p majority_element(nums)
