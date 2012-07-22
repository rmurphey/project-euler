# A Pythagorean triplet is a set of three natural numbers, a  b  c, for which,

# a^2 + b^2 = c^2
# For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.

# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

# c must be 997 or less if a + b + c = 1000 and a < b < c (1 < 2 < 997)

class PythagoreanTriplet

  def initialize
    c = 997

    while c > 3
      a_b_sum = 1000 - c
      a = 1
      b = a_b_sum - a

      while a < b
        if ((a**2) + (b**2) == c**2)
          puts "a: #{a} b: #{b} c: #{c}"
          puts a * b * c
        end

        a = a + 1
        b = b - 1
      end

      c = c - 1
    end
  end


end

PythagoreanTriplet.new