num = -123

def reverse(num)
  int_to_str = num.to_s.split('')
  x = ''
  reverse = nil

  if int_to_str.include?('-')
    x << int_to_str.shift(1)[0]

    x << int_to_str.reverse.join
    reverse = x.to_i
  else
    reverse = int_to_str.reverse.join.to_i
  end

  if reverse.bit_length < 32
    reverse
  else
    0
  end
end

p reverse(num)