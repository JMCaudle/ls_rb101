def get_float
  loop do
    num = gets.chomp
    num = Float(num, exception: false) # !!masking all errors!!
    return num if num && num >= 0
    prompt "Please enter a valid non-negative number:"
  end
end

def display_meters(area)
  puts "The area of the room is #{area} square meters."
end

def display_imperial(area)
  puts  "The area of the room is #{area} square feet, " \
        "or #{area * 144} square inches, " \
        "or #{(area * 929.03).round(3)} square centimeters."
end

choice = ''
puts "Would you like to calculate area in feet, or meters:"
loop do
  choice = gets.chomp.downcase
  case choice[0]
  when 'm'
    choice = 'meters'
  when 'f'
    choice = 'feet'
  else
    puts "Please enter a valid choice, feet or meters:"
    next
  end
  break
end

puts "Enter the length of the room in #{choice}:"
length = get_float()
puts "Enter the width of the room in #{choice}:"
width = get_float()

area = (length * width).round(3)
if choice[0] == 'm'
  display_meters(area)
else
  display_imperial(area)
end
