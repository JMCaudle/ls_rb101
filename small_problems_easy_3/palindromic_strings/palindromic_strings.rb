def palindrome?(list)
  list == list.reverse
end

def real_palindrome?(list)
  array = list.downcase.chars
  array.filter! { |char| /\w/.match(char) }
  palindrome?(array)
end

def palindromic_number?(number)
  palindrome?(number.to_s)
end

puts palindrome?('madam') == true
puts palindrome?('Madam') == false          # (case matters)
puts palindrome?("madam i'm adam") == false # (all characters matter)
puts palindrome?('356653') == true
puts palindrome?([1, 2, 3, 2, 1]) == true
puts palindrome?([1, 2, 3, 2, 1, 0]) == false
puts palindrome?(['a', 'b', 'c', 'b', 'a']) == true
puts
puts real_palindrome?('madam') == true
puts real_palindrome?('Madam') == true           # (case does not matter)
puts real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
puts real_palindrome?('356653') == true
puts real_palindrome?('356a653') == true
puts real_palindrome?('123ab321') == false

puts palindromic_number?(34543) == true
puts palindromic_number?(123210) == false
puts palindromic_number?(22) == true
puts palindromic_number?(5) == true
