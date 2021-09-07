n = 234
n2 = 4421

def subtractProductAndSum(n):
  product = productOfDigits(n)
  sum = sumOfDigits(n)

  return product - sum

def productOfDigits(n):
  split_num = [int(a) for a in str(n)]
  result = 1

  for num in split_num:
    result *= num

  return result

def sumOfDigits(n):
  split_num = [int(a) for a in str(n)]
  sum = 0

  for num in split_num:
    sum += num

  return sum

print(subtractProductAndSum(n))
print(subtractProductAndSum(n2))