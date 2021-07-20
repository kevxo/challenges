integer = -123

def reverse_integer(integer):
  reverse = 0
  int_to_str = list(str(integer))
  num = ''

  if '-' in int_to_str:
    num = num + int_to_str.pop(0)
    int_to_str.reverse()
    reverse = int(num + ''.join(int_to_str))
  else:
    int_to_str.reverse()
    reverse = int(''.join(int_to_str))

  if reverse.bit_length() < 32:
    return reverse
  else:
    return 0


print(reverse_integer(integer))