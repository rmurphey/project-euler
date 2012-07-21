# By listing the first six prime numbers:
# 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

# What is the 10 001st prime number?

class NthPrime
  attr_reader :primes

  def initialize(nth)
    @count = 1;
    @primes = [ 2 ]

    while @primes.length < nth
      @primes << find_next_prime
    end
  end

  def answer
    @primes.last
  end

  def find_next_prime
    found = false
    next_prime = @primes.last

    while !found
      next_prime += 1
      found = is_prime(next_prime)
    end

    next_prime
  end

  def is_prime(num)
    prime = true

    @primes.each do |p|
      if num % p == 0
        prime = false
        break
      end
    end

    prime
  end
end

solution = NthPrime.new(10001)
puts solution.answer
