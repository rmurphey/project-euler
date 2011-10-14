class DivisibleBySeries
  def initialize(size)
    @size = size
    primes = [ 2, 3, 5, 7, 11, 13, 17, 19 ].inject(:*)
    smallest = 0
    found = false

    while !found
      smallest += primes
      found = test(smallest)
    end

    puts smallest
  end

  def test(num)
    @size.downto(1).all? { |n| (num % n) == 0 }
  end
end

DivisibleBySeries.new 20
