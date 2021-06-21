num = 13_466_917

def check_perfect_number(num)
  numbers = (1..num - 1).to_a
  count = 0

  numbers.each do |int|
    divisible = num % int
    count += int if divisible.zero?
  end

  count == num
end

p check_perfect_number(num)
