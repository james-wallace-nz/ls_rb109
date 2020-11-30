REPEAT = %w[y yes].freeze

EXIT = %w[n no].freeze

OPERATIONS = {
  '1' => 'add',
  '2' => 'subtract',
  '3' => 'multiply',
  '4' => 'divide'
}.freeze

MESSAGES =
  {
    messages: {
      welcome: 'Welcome to Calculator!',
      greeting: 'Hi',
      repeat_welcome: 'Back again',
      exit: 'Thanks for using the Calculator',
      signoff: 'Goodbye!'
    },
    requests: {
      name: 'What is your name?',
      repeat: "Do you want to perform another calculation? \
              \n ('y' or 'yes' to calculate again, 'n' or 'no' to exit')",
      first_number: 'What is your first number?',
      second_number: 'What is your second number?',
      operator: "What operation do you want to perform? \
                \n '1' or 'add' \
                \n '2' or 'subtract' \
                \n '3' or 'multiply' \
                \n '4' or 'divide'"
    },
    invalid_inputs: {
      name: 'Make sure to use a valid name with characters.',
      repeat: "Please enter 'y' or 'yes' to calculate again, " \
              "or 'n' or 'no' to exit'",
      integer: 'Invalid integer input. Please try again',
      operation: "Invalid operation input. Please try again with: \
                  \n `1`, `2`, `3` or `4`  \
                  \n\t or \
                  \n 'add', 'subtract', 'multiply', or 'divide",
      zero_divisor: 'indivisible by zero'
    },
    operations: {
      add: {
        name: OPERATIONS['1'],
        msg: 'plus'
      },
      subtract: {
        name: OPERATIONS['2'],
        msg: 'subtracted from'
      },
      multiply: {
        name: OPERATIONS['3'],
        msg: 'multiplied by'
      },
      divide: {
        name: OPERATIONS['4'],
        msg: 'divided by'
      }
    }
  }.freeze

def prompt(msg)
  puts "=> #{msg}"
end

def request_name
  prompt MESSAGES[:messages][:welcome]

  loop do
    prompt MESSAGES[:requests][:name]
    name = gets.chomp
    break name if valid_name?(name)

    prompt MESSAGES[:invalid_inputs][:name]
  end
end

def request_input(msg, type)
  prompt msg

  loop do
    input = gets.chomp.downcase

    case type
    when 'number'
      break input.to_i if valid_integer?(input)
      break input.to_f if valid_float?(input)

      prompt MESSAGES[:invalid_inputs][:integer]

    when 'operation'
      break input if valid_operation?(input)

      prompt MESSAGES[:invalid_inputs][:operation]
    end
  end
end

def valid_name?(input)
  !input.empty?
end

def valid_integer?(input)
  /^-?\d+$/.match(input)
end

def valid_float?(input)
  /\d*/.match(input) && /^-?\d*.?\d*$/.match(input)
end

def valid_operation?(input)
  OPERATIONS.keys.include?(input) || OPERATIONS.values.include?(input)
end

def normalise_operation(input)
  if OPERATIONS.keys.include?(input)
    OPERATIONS[input]
  else
    input
  end
end

def add(first, second)
  first + second
end

def subtract(first, second)
  first - second
end

def multiply(first, second)
  first * second
end

def divide(first, second)
  if second.zero?
    MESSAGES[:invalid_inputs][:zero_divisor]
  elsif (first / second).to_f != first / second.to_f
    first / second.to_f
  else
    first / second
  end
end

def calculate_result(first, second, operation)
  case operation
  when MESSAGES[:operations][:add][:name] then add(first, second)
  when MESSAGES[:operations][:subtract][:name] then subtract(first, second)
  when MESSAGES[:operations][:multiply][:name] then multiply(first, second)
  when MESSAGES[:operations][:divide][:name] then divide(first, second)
  end
end

def display_result(first, second, calc_result, operation)
  prompt result_message(first, second, calc_result, operation)
end

def result_message(first, second, calc_result, operation)
  if operation == OPERATIONS['2']
    "#{second} #{MESSAGES[:operations][operation.to_sym][:msg]} " \
    "#{first} equals #{calc_result}"
  else
    "#{first} #{MESSAGES[:operations][operation.to_sym][:msg]} " \
    "#{second} equals #{calc_result}"
  end
end

def play_again?
  prompt MESSAGES[:requests][:repeat]
  repeat = ''
  loop do
    repeat = gets.chomp.downcase
    break if valid_exit?(repeat)

    prompt MESSAGES[:invalid_inputs][:repeat]
  end

  if REPEAT.include?(repeat)
    true
  elsif EXIT.include?(repeat)
    false
  end
end

def valid_exit?(input)
  REPEAT.include?(input) || EXIT.include?(input)
end

name = request_name
prompt "#{MESSAGES[:messages][:greeting]}, #{name}!"

loop do
  first_num = request_input(MESSAGES[:requests][:first_number], 'number')
  second_num = request_input(MESSAGES[:requests][:second_number], 'number')
  operation = request_input(MESSAGES[:requests][:operator], 'operation')
  operation = normalise_operation(operation)
  calc_result = calculate_result(first_num, second_num, operation)
  display_result(first_num, second_num, calc_result, operation)

  break unless play_again?

  prompt "#{MESSAGES[:messages][:repeat_welcome]}, #{name}!"
end

prompt "#{MESSAGES[:messages][:exit]}, #{name}. " \
        "#{MESSAGES[:messages][:signoff]}"
