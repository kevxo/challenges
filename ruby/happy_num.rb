n = 1111111

def happy_num(num, used_nums = [])
  sum = num.digits.sum { |n| n**2 }
  is_happy = sum

  return true if is_happy == 1
  return false if used_nums.include?(is_happy)

  used_nums << is_happy

  happy_num(sum, used_nums)
end

p happy_num(n)
