def stringy(int)
  puts int
  str = ''
  if int > 0
    (1..int).each { |i| str << (i % 2).to_s }
  end
  str
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts (stringy 7) == '1010101'

puts stringy(0) == ''
