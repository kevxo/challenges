number = 14

def is_ugly_num(num: int) -> bool:
  if num == 1:
    return True

  if num < 1:
    return False

  while num > 1:
    if num % 5 == 0:
      num = num / 5
    elif num % 3 == 0:
      num = num / 3
    elif num % 2 == 0:
      num = num / 2
    else:
      return False

  return True

print(is_ugly_num(number))