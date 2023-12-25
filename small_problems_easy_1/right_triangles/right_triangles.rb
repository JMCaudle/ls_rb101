SETTINGS = {
  right: {
    left_char: ' ',
    right_char: '*',
    bottom: -1,
    top: 1
  },
  left: {
    left_char: '*',
    right_char: ' ',
    bottom: 1,
    top: -1
  }
}

def initial_num_left_chars(n, y_pos, x_pos)
  if x_pos == :right
    if y_pos == :bottom
      n - 1
    else
      0
    end
  elsif y_pos == :bottom
    1
  else
    n
  end
end

def triangle(n, y_pos = :bottom, x_pos = :right)
  puts "Printing triangle(#{n}) in the #{y_pos} #{x_pos}:\n\n"
  n = 80 if n > 80
  n = 0 if n < 0

  left_char = SETTINGS[x_pos][:left_char]
  right_char = SETTINGS[x_pos][:right_char]
  step = SETTINGS[x_pos][y_pos]
  num_left_chars = initial_num_left_chars(n, y_pos, x_pos)

  n.times do
    puts (left_char * num_left_chars) + (right_char * (n - num_left_chars))
    num_left_chars += step
  end
end

triangle 5
triangle 9
triangle 0
triangle 100

triangle(5, :top)
triangle 9, :top
triangle 0, :top
triangle 100, :top

triangle(5, :top, :left)
triangle 9, :top, :left

triangle(5, :bottom, :left)
triangle 9, :bottom, :left
