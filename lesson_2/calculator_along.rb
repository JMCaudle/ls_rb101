# ask the user for two numbers
# ask the user for an operation to perform
# perform the operation on the two numbers
# output the result

DEFAULT_LANG = 'en'
$language = DEFAULT_LANG
# Let's come back in and make a class called UserData
# instead of having a global variable

require 'yaml'
MESSAGES = YAML.load_file 'calculator_messages.yml'
# puts MESSAGES.inspect

def messages(message, lang = 'en')
  MESSAGES[lang][message]
end

def prompt(key, interpolation = nil)
  message = messages(key, $language)
  message = format(message, interpolation) if interpolation
  puts "=> #{message}"
end

def valid_number?(number)
  number.to_i.to_s == number || number.to_f.to_s == number
end

# def int?(string)
#   string.to_i.to_s == string
# end

def operation_to_message(op)
  # op_string = case op
  #             when '1'
  #               'Adding'
  #             when '2'
  #               'Subtracting'
  #             when '3'
  #               'Multiplying'
  #             when '4'
  #               'Dividing'
  #             end
  # n = 1 + 2
  # op_string
  MESSAGES[$language]['op_verb'][op.to_i - 1]
end

prompt 'change_language'
lang = gets.chomp.downcase
if lang.start_with? 'es'
  $language = 'es'
elsif lang.start_with? 'fr'
  $language = 'fr'
end

prompt('welcome')

name = ''
loop do
  name = gets.chomp
  if name.empty?
    prompt 'valid_name'
  else
    break
  end
end
prompt('named_greet', { name: name })

loop do
  number1 = ''
  loop do
    prompt 'first_num'
    number1 = gets.chomp
    if valid_number? number1
      break
    else
      prompt 'valid_num'
    end
  end

  number2 = ''
  loop do
    prompt 'second_num'
    number2 = gets.chomp
    if valid_number? number2
      break
    else
      prompt 'valid_num'
    end
  end

  #   operator_prompt = <<-MSG
  # What Operation would you like to perform?
  #     1) add
  #     2) subtract
  #     3) multiply
  #     4) divide
  #   MSG

  prompt 'op_prompt'

  operator = ''
  loop do
    operator = gets.chomp
    if ('1'..'4').include? operator
      break
    else
      prompt 're_op'
    end
  end

  prompt 'confirmation', { op_word: operation_to_message(operator) }

  result =  case operator
            when '1'
              number1.to_i + number2.to_i
            when '2'
              number1.to_i - number2.to_i
            when '3'
              number1.to_i * number2.to_i
            when '4'
              number1.to_f / number2.to_f
            end
  prompt 'answer', result: result

  prompt 're_calc'
  answer = gets.chomp
  break unless answer.downcase[0] == MESSAGES[$language]['yes_letter']
end

prompt 'goodbye'
