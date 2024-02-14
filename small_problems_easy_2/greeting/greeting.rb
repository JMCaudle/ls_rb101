name = ''
loop do
  print "What is your name? "
  name = gets.chomp
  break if !['', '!'].include?(name)
end

if name.gsub!('!', '')
  puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end
