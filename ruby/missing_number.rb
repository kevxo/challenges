nums = [0]

def missing_number(nums)
  missing_number = nil
  range = (0..nums.length).to_a

  range.each do |num|
    missing_number = num unless nums.include?(num)
  end

  missing_number
end

p missing_number(nums)
