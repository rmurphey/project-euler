# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

# Find the sum of all the primes below two million.

class SumOfPrimesLessThan
  def initialize(max)
    @primes = [ 2, 3 ]

    i = @primes.last
    while i < max
      i += 2
      if is_prime(i)
        @primes << i
      end
    end

    puts @primes.last
    puts @primes.length
    puts @primes.inject :+
  end

  def is_prime(num)
    prime = true
    tested = 0
    sqrt = Math.sqrt(num)

    @primes.each do |p|
      tested += 1
      if p > sqrt
        # puts "rejected \t#{num} after \t#{tested} tries. failed on \t#{p}"
        break
      end
      if num % p == 0
        prime = false
        #puts "rejected \t#{num} after \t#{tested} tries. failed on \t#{p}"
        break
      end
    end

    prime
  end
end

SumOfPrimesLessThan.new(2000000)
