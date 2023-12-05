VALID_CHOICES = ['rock', 'paper', 'scissors', 'lizard', 'Spock']
WIN_TABLE = {
  'rock' => ['scissors', 'lizard'],
  'paper' => ['rock', 'Spock'],
  'scissors' => ['paper', 'lizard'],
  'lizard' => ['paper', 'Spock'],
  'Spock' => ['rock', 'scissors']
}

def prompt(message)
  puts "=> #{message}"
end

def get_choice
  loop do
    prompt "Choose one: #{VALID_CHOICES.join(', ')}."
    choice = gets.chomp.downcase

    VALID_CHOICES.each do |word|
      lower = word.downcase
      if lower[0] == choice[0] || lower[0..1] == choice[0..1]  # need to handle the 's's separately
        return word
      end
    end

    prompt "That is not a valid choice."
  end
end

def win?(checkee, opponent)
  WIN_TABLE[checkee].include?(opponent)
end

def determine_result

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

def play_round
  choice = get_choice
  computer_choice = VALID_CHOICES.sample
  display_results(choice, computer_choice)
end


