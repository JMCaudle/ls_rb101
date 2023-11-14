NUMBERS = [1, 2, 3]

def test
  puts NUMBERS.inspect
end

test

a = [1, 4, 8, 11, 15, 19]
p a.bsearch {|n| n > 8}