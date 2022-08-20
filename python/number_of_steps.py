num: int = 14
num2: int = 8
num3: int = 123


def number_of_steps(num: int) -> int:
  count = 0

  while num > 0:
    if num % 2 == 0:
      num /= 2
      count += 1
    else:
      num -= 1
      count += 1

  return count



print(number_of_steps(num))
print(number_of_steps(num2))
print(number_of_steps(num3))
