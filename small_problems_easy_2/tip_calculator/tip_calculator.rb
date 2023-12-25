def get_valid_float
  loop do
    float = gets.chomp.gsub(/[,_$%]/, '')
    float = Float(float, exception: false) # supressing all errors is dangerous
    break float if float && float >= 0.0
    prompt "Please enter a valid non-negative number:"
  end
end

def format_number(num)
  whole, decimal = format('%.2f', num).split('.')
  index = -4
  while -index <= whole.length
    whole.insert(index, ',')
    index -= 4
  end
  "#{whole}.#{decimal}"
end

print "What is the bill? "
bill = get_valid_float()
print "What is the tip percentage? "
percentage = get_valid_float()

tip = bill * (percentage / 100)
puts "\nThe tip is $#{format_number(tip)}"
puts "The total is $#{format_number(bill + tip)}"
