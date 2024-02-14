def get_valid_int
  loop do
    puts ">> Please enter in integer greater than 0:"
    int = gets.chomp
    return int.to_i if int == int.to_i.to_s && int.to_i > 0
  end
end

def get_valid_operator
  loop do
    puts ">> Enter 's' to compute the sum, 'p' to compute the product:"
    opr = gets.chomp
    return 'sum' if opr[0] == 's'
    return 'product' if opr[0] == 'p'
  end
end

int = get_valid_int
opr = get_valid_operator
if opr == 'sum'
  # result = 0
  # (1..int).each { |i| result += i }
  result = (1..int).inject(:+)
else
  # result = 1
  # (1..int).each { |i| result *= i }
  result = (1..int).inject(:*)
end
puts "The #{opr} of the integers between 1 and #{int} is #{result}."
