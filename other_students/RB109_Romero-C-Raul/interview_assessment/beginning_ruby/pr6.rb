=begin

PROBLEM:
- Input: Array (of strings)
- Output: Array (of strings)

rules:
    - Explicit rules
      - Given an array of strings (lowercase letters) return an array of all characters
        that show up in all strings within the given array (including duplicates)
    - Implicit rule
      - No duplicates returns an empty array

DATA STRUCTURE
- Array
- Strings
=end

def common_chars(array)
  array = array.map { |word| word.dup }
  chars = array.shift.chars
  
  
  chars.select do |char| 
  # 1st: 'b', 2nd: 'e', 3rd 'l', 4th: 'l', 5th: 'a'
    
    array.all? { |word| word.sub!(char, '') } 
    #1st: 'bella', 2nd: 'label', 3rd: 'roller'
    
    #1st: 'bella'.sub!('b', '') #=> 'ella', this value is truthy
    #2nd: 'label'.sub('b', '') #=> 'lael', this value is truthy
    #3rd: 'roller'.sub('b', '') #=> nil, this value is falsy
    
    # method all? will look at all the return values of the block, and if all of them
    # are true, method all? will return true. This is not the case on the first iteration
    # of select since the third iteration of all? returned false
    
  end
  # Try this using detect method
end

# chars = ['b', 'e', 'l', 'l', 'a']
# First iteration  char = 'b'
# word = 'label'
#'label'.gsub('b', '') => If b is there, return true to do..end block of select
                      # => if b is not there, retunrs nil


p common_chars( %w[bella label roller])  
p common_chars( %w[cool lock cook]) 
p common_chars(%w[hello goodbye booya random])
