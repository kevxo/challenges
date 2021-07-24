bin_a = '11'
bin_b = '1'

def add_binary(a, b):
  return str(bin((int(a, 2) + int(b, 2))))[2:]



print(add_binary(bin_a, bin_b))