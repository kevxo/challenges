num = 987

def thousand_separator(num)
  num = num.to_s.split('')
  place = -4

  ((num.length - 1) / 3).times do
    num.insert(place, '.')
    place -= 4
  end

  num.join
end

p thousand_separator(num)
