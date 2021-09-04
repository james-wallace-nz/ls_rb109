# What will the following code print, and why? Don't run the code until you have tried to answer.

array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
# => ['Moe', 'Larry', 'Curly', 'Shemp', 'Harpo', 'Chico', 'Groucho', 'Zeppo']

array2 = []
array1.each { |value| array2 << value }

# array2 => ['Moe', 'Larry', 'Curly', 'Shemp', 'Harpo', 'Chico', 'Groucho', 'Zeppo']
# `array2` elements point to the same String objects that `array1` contains.

array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
# array1 & array2 => ['Moe', 'Larry', 'CURLY', 'SHEMP', 'Harpo', 'CHICO', 'Groucho', 'Zeppo']

puts array2
# Moe
# Larry
# CURLY
# SHEMP
# Harpo
# CHICO
# Groucho
# Zeppo
