=begin

PROBLEM
- Input: Array
- Output: String

rules
    - Explicit rules
      - Write a function which must take an input array, and return the following:
        - Empty array: "no one likes this"
        - One element: "Peter likes this"
        - Two elements: "Jacob and Alex like this"
        - Three elements: "Max, Alex, and Mark like this"
        - Four elements or more: Alex, Jacob and two others like this"

DATA STRUCTURE
- Array
- Strings

ALGORITHM
- Check how many elements are in input string, and according to the number
  the method will return:
    - Empty array: "no one likes this"
    - One element: "Peter likes this"
    - Two elements: "Jacob and Alex like this"
    - Three elements: "Max, Alex, and Mark like this"
    - Four elements or more: Alex, Jacob and two others like this"

=end
def likes(array)
  element_count = array.size
  case element_count
  when 0
    "no one likes this"
  when 1
    "#{array[0]} likes this"
  when 2
    "#{array.first} and #{array.last} like this"
  when 3
    "#{array[0]}, #{array[1]} and #{array[2]} like this"
  else
    "#{array[0]}, #{array[1]} and #{element_count - 2} others like this"
  end
end

p likes([]) == 'no one likes this'
p likes(['Peter']) == 'Peter likes this'
p likes(['Jacob', 'Alex']) == 'Jacob and Alex like this'
p likes(['Max', 'John', 'Mark']) == 'Max, John and Mark like this'
p likes(['Alex', 'Jacob', 'Mark', 'Max']) == 'Alex, Jacob and 2 others like this'