a = '1010'
b = '1011'

def add_binary(a, b)
  sum = a.to_i + b.to_i
  sum_arr = sum.to_s.split('')

  sum_arr.length.times do |i|
    sum_arr[i] = if sum_arr[i] == '2'
                   10
                 else
                   sum_arr[i].to_i
                 end
  end

  sum = sum_arr.sum
  answer = ''

  until sum.zero?
    remainder = sum % 2
    answer.prepend(remainder.to_s)

    sum /= 2
  end
  answer
end

p add_binary(a, b)
