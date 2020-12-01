require 'yaml'
require 'pry'

# ------------------- Imports --------------------------------------------------

LANGS = YAML.load_file('languages.yml')
OPS = YAML.load_file('operations.yml')
MSGS = YAML.load_file('messages.yml')

# ------------------- Methods --------------------------------------------------

def prompt(msg)
  puts "=> #{msg}"
end

def clear_screen
  system('clear') || system('cls')
end

def display_langs
  LANGS.each do |key, lang|
    puts "'#{key}' / '#{lang}'"
  end
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

def valid_operation?(input)
  !!(OPS[LANG].keys.include?(input) ||
    OPS[LANG].values.include?(input.downcase))
end

def update_lang?
  prompt MSGS[LANG]['requests']['lang']
  update = ''
  loop do
    update = gets.chomp.downcase
    break if valid_exit?(repeat)

    prompt MSGS[LANG]['invalid_inputs']['repeat']
  end

  if AFFIRMATIVE.include?(repeat)
    true
  elsif NEGATIVE.include?(repeat)
    false
  end
end

def request_lang
  lang = 'en'
  loop do
    prompt MSGS['en']['requests']['lang']
    display_langs
    lang = gets.chomp
    break if valid_lang?(lang)
    prompt MSGS['en']['invalid_inputs']['lang']
  end
  lang
end

def normalise_lang
  lang = request_lang
  if LANGS.values.include?(lang.capitalize)
    LANGS.key(lang.capitalize)
  else
    lang.downcase
  end
end

def request_name
  prompt MSGS[LANG]['messages']['welcome']

  loop do
    prompt MSGS[LANG]['requests']['name']
    name = gets.chomp
    break name if valid_name?(name)

    prompt MSGS[LANG]['invalid_inputs']['name']
  end
end

def request_number(msg)
  prompt msg
  loop do
    input = gets.chomp.downcase
    break input.to_i if valid_integer?(input)
    break input.to_f if valid_float?(input)
    prompt MSGS[LANG]['invalid_inputs']['integer']
  end
end

def request_operation(msg)
  prompt msg
  loop do
    input = gets.chomp.downcase
    break input if valid_operation?(input)
    prompt MSGS[LANG]['invalid_inputs']['operation']
  end
end

def normalise_operation(msg)
  input = request_operation(msg)
  if OPS[LANG].keys.include?(input)
    OPS[LANG][input]
  else
    input
  end
end

def divide(first, second)
  if second.zero?
    MSGS[LANG]['invalid_inputs']['zero_divisor']
  elsif (first / second).to_f != first / second.to_f
    first / second.to_f
  else
    first / second
  end
end

def calculate_result(first, second, operation)
  case operation
  when MSGS[LANG]['operations']['add']['name'] then first + second
  when MSGS[LANG]['operations']['subtract']['name'] then first - second
  when MSGS[LANG]['operations']['multiply']['name'] then first * second
  when MSGS[LANG]['operations']['divide']['name'] then divide(first, second)
  end
end

def display_result(first, second, calc_result, operation)
  first = format_thousands(first)
  second = format_thousands(second)
  calc_result = format_thousands(calc_result)
  prompt result_message(first, second, calc_result, operation)
end

def format_thousands(input)
  if input == MSGS[LANG]['invalid_inputs']['zero_divisor'] || input < 1000
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

def result_message(first, second, calc_result, operation)
  operation_number = OPS[LANG].key(operation)
  english_operation = OPS['en'][operation_number]
  if calc_result == MSGS[LANG]['invalid_inputs']['zero_divisor']
    "#{first} #{MSGS[LANG]['operations'][english_operation]['msg']} " \
    "#{second} #{calc_result}"
  elsif operation == OPS[LANG]['2']
    "#{second} #{MSGS[LANG]['operations'][english_operation]['msg']} " \
    "#{first} equals #{calc_result}"
  else
    "#{first} #{MSGS[LANG]['operations'][english_operation]['msg']} " \
    "#{second} equals #{calc_result}"
  end
end

def play_again?
  prompt MSGS[LANG]['requests']['repeat']
  repeat = ''
  loop do
    repeat = gets.chomp.downcase
    break if valid_exit?(repeat)

    prompt MSGS[LANG]['invalid_inputs']['repeat']
  end

  if AFFIRMATIVE.include?(repeat)
    true
  elsif NEGATIVE.include?(repeat)
    false
  end
end

def valid_exit?(input)
  AFFIRMATIVE.include?(input) || NEGATIVE.include?(input)
end

# ------------------- Constants ------------------------------------------------

# lang = 'en'

clear_screen
LANG = normalise_lang

AFFIRMATIVE = [MSGS[LANG]['responses']['affirmative_short'],
          MSGS[LANG]['responses']['affirmative_long']]

NEGATIVE = [MSGS[LANG]['responses']['negative_short'],
        MSGS[LANG]['responses']['negative_long']]

# ------------------- Program --------------------------------------------------

# clear_screen
# lang = normalise_lang

clear_screen
name = request_name

clear_screen
prompt "#{MSGS[LANG]['messages']['greeting']}, #{name}!"

loop do
  first_num = request_number(MSGS[LANG]['requests']['first_number'])
  second_num = request_number(MSGS[LANG]['requests']['second_number'])
  operation = normalise_operation(MSGS[LANG]['requests']['operator'])
  calc_result = calculate_result(first_num, second_num, operation)
  clear_screen
  display_result(first_num, second_num, calc_result, operation)

  break unless play_again?
  clear_screen
  prompt "#{MSGS[LANG]['messages']['repeat_welcome']}, #{name}!"
end

clear_screen
prompt "#{MSGS[LANG]['messages']['exit']}, #{name}. " \
        "#{MSGS[LANG]['messages']['signoff']}"

# changing LANG to lang default value = 'en' then re-assign with request method

# change prompt
  # def prompt(lang, msg_type, msg)
  #   puts "=> #{MSGS[lang][msg_type][msg]}"
  # end

# update play_again?
  # AFFIRMATIVE.include?(repeat)

