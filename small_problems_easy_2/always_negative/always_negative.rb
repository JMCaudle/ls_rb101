def negative(num)
  num > 0 ? -num : num
end

puts negative(5) == -5
puts negative(-3) == -3
puts negative(0) == 0      # There's no such thing as -0 in ruby
# puts negative(0.0) == 0.0
# puts negative(4.5) == -4.5
