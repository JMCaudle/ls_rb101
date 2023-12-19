famous_words = "seven years ago..."

fw1 = "Four score and " + famous_words
fw2 = "Four score and " << famous_words
puts fw1
puts fw2

famous_words.prepend "Four score and "
puts famous_words
