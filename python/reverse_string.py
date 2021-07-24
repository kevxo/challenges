string = ["h", "e", "l", "l", "o"]

def reverse_string(string):
  left = 0
  right = len(string) - 1

  while left < right:
    string[left], string[right] = string[right], string[left]
    left += 1
    right -= 1

  return string


print(reverse_string(string))