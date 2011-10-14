class LargestPalindrome
  def initialize(size)
    @max_factor = (10 ** size)
    @min_factor = 10 ** (size - 1)

    @min = @min_factor ** 2
    @max = @max_factor ** 2

    i = @max
    found = false

    while !found && i > @min
      if is_palindrome(i)
        found = find_factors(i)
      end

      i -= 1
    end

    puts @factors
    puts @factors[0] * @factors[1]
  end

  def is_palindrome(num)
    num.to_s == num.to_s.reverse
  end

  def find_factors(num)
    f1 = Math.sqrt(num).to_i

    while num % f1 != 0 && f1 > @min_factor
      f1 -= 1
    end

    @factors = [ f1, num / f1 ]

    (f1 > @min_factor && num / f1 > @min_factor) && (f1 <= @max_factor && num / f1 <= @max_factor)
  end
end

LargestPalindrome.new 3
