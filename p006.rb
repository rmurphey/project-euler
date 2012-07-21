class SumOfSquares
  attr_reader :sum

  def initialize(num)
    @sum = 0
    (1..num).each do |n|
      @sum += (n ** 2)
    end

  end
end

class SquareOfSums
  attr_reader :sum

  def initialize(num)
    @sum = 0
    @sum += (1..num).inject(:+) ** 2
  end
end

puts SumOfSquares.new(100).sum - SquareOfSums.new(100).sum
