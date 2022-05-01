number = 1000000000
number2 = 0
number3 = 1
number4 = 3
number5 = 75
number6 = -1
number7 = 73
number8 = 4


def is_prime(number: int) -> bool:
  prime_numbers: list = []

  if number > 1:
    count = 1

    while count <= number:
     quotient = number / count

     if quotient == int(quotient):
      prime_numbers.append(int(quotient))

     count += 1

    if 1 in prime_numbers and number in prime_numbers and len(prime_numbers) == 2:
      return True

  return False


print(is_prime(number))
print(is_prime(number2))
print(is_prime(number3))
print(is_prime(number4))
print(is_prime(number5))
print(is_prime(number6))
print(is_prime(number7))
print(is_prime(number8))



