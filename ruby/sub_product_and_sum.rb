n = 234
n2 = 4421

def subtract_product_and_sum(n)
  product = product_of_digits(n)
  sum = sum_of_digits(n)

  product - sum
end

def product_of_digits(n)
  split_num = n.to_s.split('')
  result = 1

  split_num.each do |num|
    result *= num.to_i
  end

  result
end

def sum_of_digits(n)
  split_num = n.to_s.split('')
  sum = 0

  split_num.each do |num|
    sum += num.to_i
  end

  sum
end

p subtract_product_and_sum(n)
p subtract_product_and_sum(n2)

