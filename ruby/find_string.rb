#Ruby

def find_string?(string1, string2)
  array = []
  string2.length.times do |i|
    string1.length.times do |i2|
      array << string2[i] == string1[i2] if string2[i] == string1[i2]
    end
  end

  if array.uniq.join == string1
    true
  else
    array.uniq.join == string2
  end
end

p find_string?('fox', 'thisfox')
p find_string?('cat', 'thisfox')
