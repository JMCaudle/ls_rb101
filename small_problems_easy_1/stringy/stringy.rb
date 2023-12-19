def stringy(int, start = 1)
  str = ''
  int.times do |index|
    str += ((index + start) % 2).to_s
  end
  str
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts (stringy 7) == '1010101'

puts stringy(0) == ''

puts stringy(7, 0)
