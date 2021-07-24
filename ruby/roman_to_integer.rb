s = 'MCMXCIV'

def roman_to_integer(s)
  output = 0

  roman = {
    'I' => 1,
    'IV' => 4,
    'V' => 5,
    'X' => 10,
    'L' => 50,
    'C' => 100,
    'D' => 500,
    'M' => 1000
  }


  s.length.times do |i|
    if i == (s.length - 1) || roman[s[i]] >= roman[s[i + 1]]
      output += roman[s[i]]
    else
      output -= roman[s[i]]
    end
  end


  output
end

p roman_to_integer(s)
