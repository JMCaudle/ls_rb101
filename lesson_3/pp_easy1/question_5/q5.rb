def inbetween_10_and_100(int)
  (10..100).include? int
end

puts inbetween_10_and_100 42
puts inbetween_10_and_100 5
puts inbetween_10_and_100 50
puts inbetween_10_and_100 100
