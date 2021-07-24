require 'prime'

n = 10

def count_primes(n)
  count = 0

  Prime.each(n - 1) do |_prime|
    count += 1
  end

  count
end

p count_primes(n)
