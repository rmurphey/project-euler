i, sum = 0, 0

fib = [ 1, 2 ]

def calc(arr)
  arr[arr.length - 1] + arr[arr.length - 2]
end

fib << calc(fib) until fib.last > 4e6

fib.pop

fib.each do |n|
  if (n % 2 == 0)
    sum += n
  end
end

puts sum
