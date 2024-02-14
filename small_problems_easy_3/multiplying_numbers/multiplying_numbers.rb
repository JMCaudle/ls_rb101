def multiply(num1, num2)
  num1 * num2
end

def square(n)
  multiply(n, n)
end

def power(n, e)
  e = e.to_i
  if e < 0
    1 / power(n.to_f, -e)
  elsif e == 0
    1
  else
    value = n
    (e - 1).times { value = multiply(value, n) }
    value
  end
end

puts multiply(5, 3) == 15
# puts multiply([1, 2, 3], 5)

puts square(5) == 25
puts square(-8) == 64

puts power(3, 3) == 27
puts power(2, -2)
puts power(10, -3)
puts power(5, 1)
