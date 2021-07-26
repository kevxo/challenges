str = 'codeleet'
indices = [4, 5, 6, 7, 0, 2, 1, 3]

def restore_string(str, indices)
  answer = []
  indices.each_with_index do |n, i|
    answer[n] = str[i]
  end

  answer.join
end

p restore_string(str, indices)
