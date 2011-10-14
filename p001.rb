i, sum = 0, 0

until i == 1000
  if (i % 3 == 0) || (i % 5 == 0)
    puts "adding #{i} to #{sum}"
    sum += i
  end
  i += 1
end

puts sum
