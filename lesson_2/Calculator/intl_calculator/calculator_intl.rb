require 'yaml'
require 'pry'

# ------------------- Imports --------------------------------------------------

LANGS = YAML.load_file('languages.yml')
OPS = YAML.load_file('operations.yml')
MSGS = YAML.load_file('messages.yml')

# ------------------- Access MSGS ----------------------------------------------

def msg_l2(lang, msg_type, msg)
  MSGS[lang][msg_type][msg]
end

def msg_l3(lang, msg_type, sub_msg_type, msg)
  MSGS[lang][msg_type][sub_msg_type][msg]
end

# ------------------- Display Methods ------------------------------------------

def prompt(msg)
  puts "=> #{msg}"
end

def clear_screen
  system('clear') || system('cls')
end

def display_langs
  LANGS.each do |key, lang|
    puts "   '#{key}' / '#{lang}'"
  end
end

def display_result(lang, first, second, calc_result, operation)
  first = format_thousands(lang, first)
  second = format_thousands(lang, second)
  calc_result = format_thousands(lang, calc_result)
  prompt result_message(lang, first, second, calc_result, operation)
end

def format_thousands(lang, input)
  if input == msg_l2(lang, 'invalid_inputs', 'zero_divisor') || input < 1000
    input
  else
    left, right = input.to_s.split('.')

    left = left.chars
    increments = []
    while left.size > 0
      increments.unshift(left.pop(3).join)
    end

    left = increments.join(',')
    right.nil? ? left : left << '.' << right
  end
end

def result_message(lang, first, second, calc_result, operation)
  operation_number = OPS[lang].key(operation)
  default_lang = LANGS.keys.first
  english_op = OPS[default_lang][operation_number]
  if calc_result == msg_l2(lang, 'invalid_inputs', 'zero_divisor')
    "#{first} #{msg_l3(lang, 'ops', english_op, 'msg')} " \
    "#{second} #{calc_result}"
  elsif operation == OPS[lang]['2']
    "#{second} #{msg_l3(lang, 'ops', english_op, 'msg')} " \
    "#{first} equals #{calc_result}"
  else
    "#{first} #{msg_l3(lang, 'ops', english_op, 'msg')} " \
    "#{second} equals #{calc_result}"
  end
end

# ------------------- Validation Methods ---------------------------------------

def affirmative_answers(lang)
  [msg_l2(lang, 'responses', 'affirmative_short'),
   msg_l2(lang, 'responses', 'affirmative_long')]
end

def negative_answers(lang)
  [msg_l2(lang, 'responses', 'negative_short'),
   msg_l2(lang, 'responses', 'negative_long')]
end

def valid_lang?(lang)
  LANGS.keys.include?(lang.downcase) ||
    LANGS.values.include?(lang.capitalize)
end

def valid_name?(input)
  !input.empty? && !/^\s+$/.match(input)
end

def valid_integer?(input)
  !!(/^-?\d+$/.match(input) && !input.empty?)
end

def valid_float?(input)
  !!(/\d/.match(input) && /^-?\d*.?\d*$/.match(input) && !input.empty?)
end

def valid_operation?(lang, input)
  !!(OPS[lang].keys.include?(input) ||
    OPS[lang].values.include?(input.downcase))
end

def valid_update?(default_lang, input)
  affirmative_answers(default_lang).include?(input) ||
    negative_answers(default_lang).include?(input)
end

def valid_exit?(lang, input)
  affirmative_answers(lang).include?(input) ||
    negative_answers(lang).include?(input)
end

# ------------------- Language Methods -----------------------------------------

def normalise_lang(default_lang)
  if update_lang?(default_lang)
    lang = request_lang(default_lang)
    if LANGS.values.include?(lang.capitalize)
      LANGS.key(lang.capitalize)
    else
      lang.downcase
    end
  else
    lang
  end
end

def update_lang?(default_lang)
  prompt msg_l2(default_lang, 'requests', 'lang')
  update = nil
  loop do
    update = gets.chomp.downcase
    break if valid_update?(default_lang, update)

    prompt msg_l2(default_lang, 'invalid_inputs', 'repeat')
  end
  affirmative_answers(default_lang).include?(update)
end

def request_lang(default_lang)
  new_lang = nil
  loop do
    prompt msg_l2(default_lang, 'requests', 'choices')
    display_langs
    new_lang = gets.chomp
    break if valid_lang?(new_lang)
    prompt msg_l2(default_lang, 'invalid_inputs', 'lang')
  end
  new_lang
end

# ------------------- Request Methods ------------------------------------------

def request_name(lang)
  prompt msg_l2(lang, 'messages', 'welcome')

  loop do
    prompt msg_l2(lang, 'requests', 'name')
    name = gets.chomp
    break name if valid_name?(name)

    prompt msg_l2(lang, 'invalid_inputs', 'name')
  end
end

def request_number(lang, msg)
  prompt msg
  loop do
    input = gets.chomp.downcase
    break input.to_i if valid_integer?(input)
    break input.to_f if valid_float?(input)
    prompt msg_l2(lang, 'invalid_inputs', 'number')
  end
end

def request_operation(lang, msg)
  prompt msg
  loop do
    input = gets.chomp.downcase
    break input if valid_operation?(lang, input)
    prompt msg_l2(lang, 'invalid_inputs', 'operation')
  end
end

def normalise_operation(lang, msg)
  input = request_operation(lang, msg)
  if OPS[lang].keys.include?(input)
    OPS[lang][input]
  else
    input
  end
end

def play_again?(lang)
  prompt msg_l2(lang, 'requests', 'repeat')
  repeat = nil
  loop do
    repeat = gets.chomp.downcase
    break if valid_exit?(lang, repeat)

    prompt msg_l2(lang, 'invalid_inputs', 'repeat')
  end

  affirmative_answers(lang).include?(repeat)
end

# ------------------- Calculation Methods --------------------------------------

def divide(lang, first, second)
  if second.zero?
    msg_l2(lang, 'invalid_inputs', 'zero_divisor')
  elsif (first / second).to_f != first / second.to_f
    first / second.to_f
  else
    first / second
  end
end

def calculate_result(lang, first, second, operation)
  case operation
  when msg_l3(lang, 'ops', 'add', 'name') then first + second
  when msg_l3(lang, 'ops', 'subtract', 'name') then first - second
  when msg_l3(lang, 'ops', 'multiply', 'name') then first * second
  when msg_l3(lang, 'ops', 'divide', 'name') then divide(lang, first, second)
  end
end

# ------------------- Program---------------------------------------------------

clear_screen
default_lang = LANGS.keys.first
lang = normalise_lang(default_lang)

clear_screen
name = request_name(lang)

clear_screen
prompt "#{msg_l2(lang, 'messages', 'greeting')}, #{name}!"

loop do
  first_num = request_number(lang, msg_l2(lang, 'requests', 'first_num'))
  second_num = request_number(lang, msg_l2(lang, 'requests', 'second_num'))
  operation = normalise_operation(lang, msg_l2(lang, 'requests', 'operator'))
  calc_result = calculate_result(lang, first_num, second_num, operation)
  clear_screen
  display_result(lang, first_num, second_num, calc_result, operation)

  break unless play_again?(lang)
  clear_screen
  prompt "#{msg_l2(lang, 'messages', 'repeat_welcome')}, #{name}!"
end

clear_screen
prompt "#{msg_l2(lang, 'messages', 'exit')}, #{name}. " \
       "#{msg_l2(lang, 'messages', 'signoff')}"
