n = 15

def fizz_buzz(n)
  answer = []

  (n + 1).times do |i|
    next unless i > 0

    answer << if (i % 3).zero? && (i % 5).zero?
                'FizzBuzz'
              elsif (i % 3).zero?
                'Fizz'
              elsif (i % 5).zero?
                'Buzz'
              else
                i.to_s
              end
  end

  answer
end

p fizz_buzz(n)
