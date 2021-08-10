# Write a method that:
  # Takes one argument, a string
  # Returns true if that string is a palindrome
  # False otherwise
  # Case matters and so does punctuation

def palindrome?(str_or_array)
  str_or_array.reverse == str_or_array
end

puts palindrome?('madam') == true
puts palindrome?('Madam') == false          # (case matters)
puts palindrome?("madam i'm adam") == false # (all characters matter)
puts palindrome?('356653') == true

puts 

puts palindrome?([1, 2, 1]) == true
puts palindrome?(['M', 'a', 'm']) == false
puts palindrome?(['m', 'a', 'm']) == true
puts palindrome?([35, 66, 53]) == false