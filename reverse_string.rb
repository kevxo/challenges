string = %w[h e l l o]

def reverse_string(string)
  left = 0
  right = string.length - 1

  while left < right
    string[left], string[right] = string[right], string[left]

    left += 1
    right -= 1
  end

  string
end

p reverse_string(string)

# reverse_string = ''

# (string.length - 1).downto(0) do |i|
#   reverse_string << string[i]
# end

# reverse_string.split('')
