print "What is your age? "
age = gets.chomp.to_i

print "At what age would you like to retire? "
retirement_age = gets.chomp.to_i

remaining_years = retirement_age - age
year = Time.now.year

puts "\nIt's #{year}. You will retire in #{year + remaining_years}."
puts "You only have #{remaining_years} years of work to go!"
