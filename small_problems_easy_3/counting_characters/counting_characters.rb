print "Please write word or multiple words: "
string = gets.chomp

puts "There are #{string.length - string.count(' ')} characters in \"#{string}\"."
