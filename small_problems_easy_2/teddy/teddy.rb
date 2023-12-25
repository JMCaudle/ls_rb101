puts "Please input the name of the entity whose age you wish to know:"
name = gets.chomp
name = "Teddy" if name == ''
puts "#{name} is #{rand(20..200)} years old!"
