# Write a method that:
  # takes a string as an argument
  # Returns true if it is a palindrome
  # False otherwise
  # Palindromes are case-insensitive
  # Ignore all non-alphanumeric characters (punctuation)
  # You may use the palindrome? method from 08.rb

# Algorithm
  # Convert the string to an array of lowercase characters
  # Initialize an empty string as `test_string`
  # Iterate over all the characters, for each character
    # Is it alphanumeric? if yes, add it to the test_string
  # See if the test_string is the same backwards and forwards

def palindrome?(str_or_array)
  str_or_array.reverse == str_or_array
end

def real_palindrome?(string)
  test_string = ''
  characters = string.downcase.chars
  characters.each do |char|
    if ('0'..'9').include?(char) || ('a'..'z').include?(char)
      test_string << char
    end
  end

  test_string.reverse == test_string
end

puts real_palindrome?('madam') == true
puts real_palindrome?('Madam') == true           # (case does not matter)
puts real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
puts real_palindrome?('356653') == true
puts real_palindrome?('356a653') == true
puts real_palindrome?('123ab321') == false