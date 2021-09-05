# Write another method that returns true if the string passed as an argument is a palindrome, false otherwise. This time, however, your method should be case-insensitive, and it should ignore all non-alphanumeric characters. If you wish, you may simplify things by calling the palindrome? method you wrote in the previous exercise.

# input: string
# output: boolean - palindrome

# palindrome is case insensitive and ignore non-alphanumeric characters

# algorithim:
# - downcase `string` argument and remove non-alphanumeric characters
# - is resulting string equal to itself with `reverse` called on it

def real_palindrome?(string)
  # clean_string = string.downcase.delete("^a-z0-9")
  clean_string = string.downcase.gsub(/[^a-z0-9]/, '')
  puts clean_string
  clean_string == clean_string.reverse
end

# Examples:
p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false
