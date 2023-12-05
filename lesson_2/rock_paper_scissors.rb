VALID_CHOICES = ['rock', 'paper', 'scissors']

def prompt(message)
  puts "=> #{message}"
end

def get_choice
  loop do
    prompt "Choose one: #{VALID_CHOICES.join(', ')}."
    choice = gets.chomp
    if VALID_CHOICES.include? choice
      return choice
    else
      prompt "That is not a valid choice."
    end
  end
end

def win?(checkee, opponent)
  (checkee == 'rock' && opponent == 'scissors') ||
    (checkee == 'paper' && opponent == 'rock') ||
    (checkee == 'scissors' && opponent == 'paper')
end

def display_results(player, computer)
  prompt "You chose: #{player}; the Computer chose: #{computer}."
  if win?(player, computer)
    prompt "You Won!"
  elsif win?(computer, player)
    prompt "The Computer Won!"
  else
    prompt "It's a tie!"
  end
end

loop do
  choice = get_choice
  computer_choice = VALID_CHOICES.sample

  display_results(choice, computer_choice)

  prompt "Do you want to play again?"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end
