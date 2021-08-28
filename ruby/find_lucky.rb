arr = [2, 2, 3, 4]
arr2 = [1, 2, 2, 3, 3, 3]
arr3 = [2, 2, 2, 3, 3]
arr4 = [5]
arr5 = [7, 7, 7, 7, 7, 7, 7]

def find_lucky(arr)
  hash = {}
  output = -1

  arr.each do |num|
    if hash[num]
      hash[num] += 1
    else
      hash[num] = 1
    end
  end

  hash.each do |k, v|
    if k == v && k > output
      output = k
    end
  end

  output
end

p find_lucky(arr)
p find_lucky(arr2)
p find_lucky(arr3)
p find_lucky(arr4)
p find_lucky(arr5)

