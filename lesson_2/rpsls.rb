VALID_CHOICES = ['rock', 'paper', 'scissors', 'lizard', 'Spock']
WIN_TABLE = {
  'rock' => ['scissors', 'lizard'],
  'paper' => ['rock', 'Spock'],
  'scissors' => ['paper', 'lizard'],
  'lizard' => ['paper', 'Spock'],
  'Spock' => ['rock', 'scissors']
}

require 'yaml'
MESSAGES = YAML.load_file 'rpsls_message_tables.yml'

def prompt(message)
  puts "=> #{message}"
end

def get_name
  prompt "What name would you like to compete under?"
  name = gets.chomp
  name = "Human" if name == ''
  name
end

def get_choice
  loop do
    prompt "Choose one: #{VALID_CHOICES.join(', ')}."
    choice = gets.chomp.downcase

    VALID_CHOICES.each do |word|
      lower = word.downcase
      if ((lower[0] == choice[0]) && (choice[0] != 's')) ||
         (lower[0..1] == choice[0..1])
        return word
      end
    end
    prompt "That is not a valid choice."
  end
end

def win?(checkee, opponent)
  WIN_TABLE[checkee].include?(opponent)
end

def determine_winner(player, computer)
  if win?(player, computer)
    :player
  elsif win?(computer, player)
    :computer
  else
    :tie
  end
end

def infer_loser(winner)
  if winner == :tie
    nil
  elsif winner == :player
    :computer
  else
    :player
  end
end

def display_choices(player, computer)
  prompt "You chose: #{player}; the Computer chose: #{computer}."
end

def display_action_message(winner, loser)
  prompt MESSAGES['action_message'][winner][loser]
end

def display_win_message(winner)
  prompt "#{MESSAGES['win_message'][winner.to_s]}\n\n"
end

def display_scores(name, human_wins, computer_wins)
  prompt "The current score is:"
  prompt "#{name}: #{human_wins}"
  prompt "Computer: #{computer_wins}\n\n"
end

def play_round
  choices = {}
  choices[:player] = get_choice
  choices[:computer] = VALID_CHOICES.sample
  display_choices(choices[:player], choices[:computer])
  winner = determine_winner(choices[:player], choices[:computer])
  if winner != :tie
    display_action_message(choices[winner], choices[infer_loser(winner)])
  end
  winner
end

def play_match_to_three(name)
  scoreboard = { player: 0, computer: 0, tie: 0 }
  loop do
    winner = play_round
    display_win_message winner
    scoreboard[winner] += 1
    display_scores(name, scoreboard[:player], scoreboard[:computer])
    if scoreboard[:player] >= 3
      prompt "Congratulations #{name}, you are the Tournament Champion!"
      break
    elsif scoreboard[:computer] >= 3
      prompt "Sorry #{name}, you have been defeated by Array#sample."
      prompt "The Computer is the Tournament Champion!"
      break
    end
  end
end

prompt 'Welcome to the "Rock Paper Scissors Lizard Spock" Grand Tournament!'
name = get_name

loop do
  prompt "The Tournament Champion will be the first competitor to win 3 rounds."
  play_match_to_three name
  prompt "Would you like to play again? (Y)"
  break unless gets.chomp.downcase.start_with?('y')
end
