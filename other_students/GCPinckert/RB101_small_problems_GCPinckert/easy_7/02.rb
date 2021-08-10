# Input: string
# Return: Hash containing 3 entries:
  # Number of characters in the string that are lowercase
  # Number of characters in the string that are uppercase
  # Number of characters that are neither
  # whitespace counts as a "neither" character
  # an empty string returns 0 for all hash values

# Examples:
  # letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
  # letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
  # letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
  # letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

# Initialize a hash with the required keys and values at 0
# Convert string to an array of characters
# Iterate through the array, for each character
  # If it is lowercase, increment the lowercase value
  # If it is uppercase, increment the uppercase value
  # If it is neither, increment the neither value
# Return the hash

def letter_case_count(string)
  characters = string.chars
  characters.each_with_object({lowercase: 0, uppercase: 0, neither: 0}) do |char, hsh|
    if ('a'..'z').include?(char)
      hsh[:lowercase] += 1
    elsif ('A'..'Z').include?(char)
      hsh[:uppercase] += 1
    else
      hsh[:neither] += 1
    end
  end
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

# Option 2
# Algorithm:
  # Initialize a hash with keys lowercase, uppercase, and neither, set values to 0
  # Set lowercase value to the count of lowercase letters
  # Set uppercase value to the count of uppercase letters
  # Set neither value to the count of chars that are not alphabetical

def letter_case_count2(string)
  result = {}
  result[:lowercase] = string.count('a-z')
  result[:uppercase] = string.count('A-Z')
  result[:neither] = string.count('^A-Za-z')
  result
end

p letter_case_count2('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count2('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count2('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count2('') == { lowercase: 0, uppercase: 0, neither: 0 }
