s = '824#15#826#'
s2 = '1326#'
s3 = '25#'
s4 = '12345678910#11#12#13#14#15#16#17#18#19#20#21#22#23#24#25#26#'

def freq_alphabet(s)
  answer = ''

  set_string_to_arr(s).each do |ele|
    answer << (char_j_to_z[ele] || char_a_to_i[ele]) unless ele.nil?
  end

  answer
end

def set_string_to_arr(s, x = [])
  s.length.times do |i|
    if s[i + 2] == '#'
      x << [s[i], s[i + 1], s[i + 2]].join
      s.slice!(i..i + 2)
    else
      x << s[i]
      s.slice!(i)
    end

    set_string_to_arr(s, x)
  end

  x
end

def char_a_to_i
  {
    '1' => 'a',
    '2' => 'b',
    '3' => 'c',
    '4' => 'd',
    '5' => 'e',
    '6' => 'f',
    '7' => 'g',
    '8' => 'h',
    '9' => 'i'
  }
end

def char_j_to_z
  {
    '10#' => 'j',
    '11#' => 'k',
    '12#' => 'l',
    '13#' => 'm',
    '14#' => 'n',
    '15#' => 'o',
    '16#' => 'p',
    '17#' => 'q',
    '18#' => 'r',
    '19#' => 's',
    '20#' => 't',
    '21#' => 'u',
    '22#' => 'v',
    '23#' => 'w',
    '24#' => 'x',
    '25#' => 'y',
    '26#' => 'z'
  }
end

p freq_alphabet(s)
p freq_alphabet(s2)
p freq_alphabet(s3)
p freq_alphabet(s4)
