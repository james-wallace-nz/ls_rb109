# Input: string
  # one or more words
  # containing alphanumeric and other characters
# Return: new string
  # Every uppercase letter is replaced by its lowercase version
  # Every lowercase letter is replaced by its uppercase version
  # All other characters should be unchanged
# Do not use the .swapcase method

# Examples:
  # swapcase('CamelCase') == 'cAMELcASE'
  # swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

# Change the string into an array of chars
# Iterate through the array, for each char
  # If it is an uppercase letter
    # change to downcase
  # If it is an uppercase letter
    # change to upcase
  # Otherwise
    # leave it the same
# Join the array back into a string
# Return the string

def swapcase(string)
  string.chars.map do |char|
    if ('a'..'z').include?(char)
      char.upcase
    elsif ('A'..'Z').include?(char)
      char.downcase
    else
      char
    end
  end.join
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
