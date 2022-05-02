number: int = 4421

def subtract_product_and_sum(number: int) -> int:
  numbers = list(str(number))

  product, sum = 1, 0

  for number in numbers:
    product *= int(number)
    sum += int(number)

  return (product - sum)


print(subtract_product_and_sum(number))