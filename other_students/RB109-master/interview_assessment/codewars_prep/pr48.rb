=begin

PROBLEM
- Input: String
- Output: String

rules
    - Explicit rules
      - Write a method that places letters in alphabetical order, where an 
        uppercase letter is followed by its downcase counterparts
    - Implicit rules
      - Empty string returns nothing

DATA STRUCUTRE
- Array
- String

ALGORITHM
- Extract uppercase letters from string and add to new collection
- Split lowercase letters, keeping the same letters in the same element
  of the collection
- Sort both uppercase and lowercase collections and merge them
- Join merged collection and return

=end

def find_children(string)
  
  string.chars.sort.group_by do |char|
    char.upcase
  end.values.join
  
end

# p find_children("abBA") == "AaBb"
p find_children("AaaaaZazCzz") #== "AaaaaaZzzz"
# p find_children("CbcBcbaA") == "AaBbbCcc"
# p find_children("xXfuUuuF") == "FfUuuuXx"
# p find_children("") == ""
