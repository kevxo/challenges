s = 'a1c1e1'
s2 = 'a1b2c3d4e'
s3 = 'v0g6s4d'

def replace_digits(string)
  alphabet = ('a'..'z').to_a

  string_arr = string.split('')

  string_arr.length.times do |i|
    if string_arr[i].to_i && i.odd?
      letter_i = alphabet.index(string_arr[i - 1]) + string_arr[i].to_i
      string_arr[i] = alphabet[letter_i]
    end
  end

  string_arr.join('')
end

p replace_digits(s)
p replace_digits(s2)
p replace_digits(s3)
