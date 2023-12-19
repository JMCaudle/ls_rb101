CONTENT_WIDTH = 76

def slice_overflow!(line)
  words = line.split
  index = 0
  char_counter = 0
  loop do
    char_counter += words[index].length
    if (char_counter + 1 + words[index + 1].length) > CONTENT_WIDTH
      remainder = words.slice!((index + 1)...words.length)
      line.replace(words.join(' '))
      return remainder.join(' ')
    end
    index += 1
    char_counter += 1
  end
end

def wrap_long_lines!(lines)
  lines.each do |line|
    if line.length > CONTENT_WIDTH
      remainder = slice_overflow!(line)
      lines.insert(lines.index(line) + 1, remainder)
    end
  end
end

def greatest_line_length(lines)
  greatest_length = 0
  lines.each do |line|
    greatest_length = line.length if line.length > greatest_length
  end
  greatest_length
end

def display_border_row(length)
  puts "+-#{'-' * length}-+"
end

def display_buffer_row(length)
  puts "| #{' ' * length} |"
end

def display_content_row(line, length)
  line ||= ''
  puts "| #{line.center(length)} |"
end

# def display_horizontal_ruler(length)
#   length.times { |i| print(i % 10) }
#   puts
# end

def bannerize(string)
  sub_strings = string.split("\n")
  wrap_long_lines!(sub_strings)
  height = [sub_strings.length, 1].max
  length = greatest_line_length(sub_strings)

  display_border_row(length)
  display_buffer_row(length)
  height.times { |idx| display_content_row(sub_strings[idx], length) }
  display_buffer_row(length)
  display_border_row(length)
  # display_horizontal_ruler(length + 4)
end

bannerize 'To boldly go where no one has gone before.'
bannerize ''
bannerize "abc\nabcdef\nlmnopqrstuv"
bannerize <<-MSG
  What Operation would you like to perform?
      1) add
      2) subtract
      3) multiply
      4) divide
    MSG
bannerize "You don't have to be Nostradamus\n to predict that since sending a " \
          "small probe to the nearest star will require, at a minimum, over " \
          "a hundred times the entire annual energy output of the earth to " \
          "be stored in a body the dimensions of a small car just to do a " \
          "flyby in a human lifetime, and that energy requirements don't " \
          "scale linearly with mass, it's gonna be a tough nut to crack to " \
          "the point of \nimpossibility. "
