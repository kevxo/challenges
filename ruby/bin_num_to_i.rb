head = [1, 0, 0, 1, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0]

def bin_num_to_i(head)
  answer = ''

  head.length.times do |i|
    answer << head[i].to_s
  end

  answer.to_i(2)
end

p bin_num_to_i(head)
