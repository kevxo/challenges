num = 0

def add_digits(num)
  split_num = num.to_s.split('')

  numbers = split_num.map(&:to_i)

  if numbers.sum < 10
    numbers.sum
  else
    num = numbers.sum
    add_digits(num)
  end
end

p add_digits(num)
