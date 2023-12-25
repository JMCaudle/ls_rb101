def get_word(word_type)
  loop do
    print "Enter a #{word_type}: "
    word = gets.chomp
    return word if word != ''
  end
end

noun = get_word('noun')
verb = get_word('verb')
adverb = get_word('adverb')
adjective = get_word('adjective')

puts "\nDo you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious!"
