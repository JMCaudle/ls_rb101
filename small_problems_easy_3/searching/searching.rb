ORDINALS = ["1st", "2nd", "3rd", "4th", "5th", "last"]
numbers = []

6.times do |idx|
  puts "==> Enter the #{ORDINALS[idx]} number:"
  numbers << gets.chomp.to_i
end

last = numbers.pop
answer_phrase = numbers.include?(last) ? "appears" : "does not appear"
puts "The number #{last} #{answer_phrase} in #{numbers}"
