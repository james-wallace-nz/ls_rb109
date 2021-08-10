=begin

PROBLEM
- Input: String
- Output String

rules
    - Write a method that cuts a string into chunks (size of second
      argument)
      - If a chunk represents an integer such as the sum of the cubes of its
        digits is divisible by 2, reverse it
        - Otherwise rotate it to the left by one position (pop the first digit
          and add it to the end

DATA STRUCTURE
- String
- Arrays
- Integer

ALGORITHM
- Separate string in chunks (size of second argument)
- Iterate through those chunks
  - If the sum of the cubes of every digit is divisible by 2
    - Reverse it
  - Else
    - Rotate it to the left by one position

SUBPROCESS (obtain_chunks)
- Establish first slice:
- Index = 0
- Length = 5

- string[0...5]
- index = length
- Length += sz.size

SUBPROCESS (rotate left )

=end

def obtain_chunks(string, sz)
  chunks = []
  
  l_index = 0
  r_index = sz
  
  loop do
    current_chunk = string[l_index...r_index]
    chunks << current_chunk if current_chunk.size >= sz
    break if r_index >= string.size
    l_index = r_index
    r_index += sz
  end
  
  chunks
end

def rotate_left(string)
  digits = string.chars
  last_element = digits.shift
  digits << last_element
  
  digits.join
end

def sum_of_cubes(string)
  sum_cubes = string.chars.map do |digit|
    digit.to_i ** 3
  end.sum
  
  sum_cubes % 2 == 0
end

def revrot(string, sz)
  return '' if sz <= 0 || string.empty?
  
  chunks = obtain_chunks(string, sz)
  
  chunks.map do |current_chunk|
    if sum_of_cubes(current_chunk)
      current_chunk.reverse
    else
      rotate_left(current_chunk)
    end
  end.join
end

p revrot("1234", 0) == ""
p revrot("", 0) == ""
p revrot("1234", 5) == ""
p revrot("733049910872815764", 5) == "330479108928157"
p revrot("123456987654", 6) == "234561876549"
p revrot("123456987653", 6) == "234561356789"
p revrot("66443875", 4) == "44668753"
p revrot("66443875", 8) == "64438756"
p revrot("664438769", 8) == "67834466"
p revrot("123456779", 8) == "23456771"
p revrot("", 8) == ""
p revrot("123456779", 0) == ""
