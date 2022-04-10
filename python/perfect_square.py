num = 2000105819

def is_perfect_square(num):
  if int((num ** 0.5)) ** 2 == num:
    return True

  return False


print(is_perfect_square(num))