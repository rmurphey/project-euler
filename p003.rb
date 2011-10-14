class PrimeFactor
  def initialize(num)
    @orig = num
    @num = num
    @primes = [ 2 ]
    @biggest_prime_factor = nil

    find_prime_factor until @biggest_prime_factor && (@num == 1)
    puts @biggest_prime_factor
  end

  def find_prime_factor
    while @num % @primes.last != 0
      find_next_prime
    end

    @biggest_prime_factor = @primes.last
    @num = (@num / @biggest_prime_factor)
  end

  def is_prime(n)
    !(@primes.select { |p| n % p == 0 }.length > 0)
  end

  def find_next_prime
    found = false
    next_prime = @primes.last

    while !found && (next_prime < (@orig / 2))
      next_prime += 1
      found = is_prime(next_prime)
    end

    if found
      @primes << next_prime
    end
  end
end

PrimeFactor.new 600851475143
