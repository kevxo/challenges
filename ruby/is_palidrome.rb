x = 33

def is_palidrome?(x)
  x == x.to_s.reverse.to_i
end

p is_palidrome?(x)