s = "ab_a"

def is_palindrome?(s)
  str_array = s.scan(/\w/)
  initial_str = str_array.join.downcase
  initial_str = initial_str.downcase.gsub!(/[^0-9A-Za-z]/, '') if initial_str.split('').include?('_')
  final_wrd = initial_str.reverse

  initial_str == final_wrd
end

p is_palindrome?(s)
