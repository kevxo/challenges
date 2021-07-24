#Ruby

def int_to_bin(input)
  answer = ''

  until input.zero?
    remainder = input % 2
    answer.prepend(remainder.to_s)

    input /= 2
  end

  answer
end

p int_to_bin(8)