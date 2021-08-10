# Write a method that takes a string as argument, and returns true if all parentheses in the string are properly balanced, 
# false otherwise. To be properly balanced, parentheses must occur in matching '(' and ')' pairs.

# Note that balanced pairs must each start with a (, not a ).

# input = string 
# output is boolean 
# balance = ( has a ), and it's in that order (can't be )( )

# accepts a string as input (str)
# str turned into an array of its characters with chars 
# initialize local variable of counter to 0 (counter = 0)
# iterate through the array of characters with each
# if there is a '(' add 1
# if there is a ')' subtract 1
# return true if counter is zero

def balanced?(str)
  counter = 0

  str.chars.each do |chr|
    if chr == '('
      counter += 1
    elsif chr == ')' && counter > 0
      counter -= 1
    elsif str.count(')') != str.count('(')
      counter -= 1
    end
  end
  counter == 0
end






def balanced?(str)
  counter = 0

  str.chars.each do |chr|
    if chr == '('
      counter += 1
    elsif chr == ')' && counter > 0
      counter -= 1
    elsif str.count(')') != str.count('(')
      counter -= 1
    end
  end
  counter == 0
end

def balanced?(str)
  counter = 0

  str.chars.each do |chr|
    return false if counter < 0 
    if chr == '('
      counter += 1
    elsif chr == ')'
      counter -= 1
    end
  end
  counter == 0
end

def balanced?(str)
  counter = 0

  str.chars.each do |chr|
    if chr == '('
      counter += 1
    elsif chr == ')'
      counter -= 1
    end
    return false if counter < 0 
  end
  counter == 0
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false