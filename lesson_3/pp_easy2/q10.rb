title = "Flintstone Family Members"

def pad_to_40_width(str)
  width_with_half_padding = ((40 - str.length) / 2) + str.length
  str = str.ljust(width_with_half_padding)
  str.rjust(40)
end
puts "#{pad_to_40_width(title)}"

(1..40).each do |i|
  print "#{i % 10}"
end

puts
