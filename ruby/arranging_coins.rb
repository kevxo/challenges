n = 1

def arrange_coins(n)
  return 0 if n.zero?

  stairs = 0

  while n >= 0
    n -= stairs + 1
    stairs += 1
  end

  n.zero? ? stairs : stairs - 1
end

p arrange_coins(n)
