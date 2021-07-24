a = '11'
b = '1'

def add_binary(a, b)
  (a.to_i(2) + b.to_i(2)).to_s(2)
end

p add_binary(a, b)
