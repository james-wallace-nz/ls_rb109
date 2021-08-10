# Input: string
# Return: new string
  # Every other character is capitalized
  # Remaining characters are lowercase
  # Characters that are not letters should not be changed
  # They do count as characters when switching between upper and lower case

# Examples:
  # staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
  # staggered_case('ALL_CAPS') == 'AlL_CaPs'
  # staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

# Change the string into an array of chars
# Iterate through the array, for each char
  # If index is even, change char to uppercase
  # Otherwise, change char to lowercase
# Join array back into string
# Return the string

def staggered_case(string)
  index = -1
  string.chars.map do |char|
    index += 1
    if index.even?
      char.upcase
    else
      char.downcase
    end
  end.join
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

# Further Exploration
  # Modify the method so the caller can request the first character be downcased
  # instead of upcased.
  # They should still swap the same way, alternating

def staggered_case2(string, first_up = true)
  index = -1
  string.chars.map do |char|
    index += 1
    if index.even?
      first_up ? char.upcase : char.downcase
    else
      first_up ? char.downcase : char.upcase
    end
  end.join
end

p staggered_case2('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case2('ALL_CAPS', false) == 'aLl_cApS'
p staggered_case2('ignore 77 the 444 numbers', true) == 'IgNoRe 77 ThE 444 NuMbErS'
p staggered_case2('listening', false) == 'lIsTeNiNg'
