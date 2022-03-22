


digits = [1, 2, 3]
digits2 = [4, 3, 2, 1]
digits3 = [9]

def plusOne(digits):
  new_sum = int("".join([str(digit) for digit in digits])) + 1

  return [int(num) for num in str(new_sum)]





print(plusOne(digits))
print(plusOne(digits2))
print(plusOne(digits3))
