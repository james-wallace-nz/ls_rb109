=begin
# Problem:
 - Write a method that counts the number of occurrences of each element in a given array
 - Input: An array of strings
 - Output: Each element in the input array, along with the number of times it occurs
 - strings in the array are case-insensitive ie suv == SUV
 - Print each element alongside the number of occurrences.
 
 # Example:
 vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)
---
car => 4
truck => 3
SUV => 1
motorcycle => 2

# Data Structure: 
- Hash, in which each key is the element, and the value is the number of occurances

# Algorithm:
- Initialize an empty hash `occurrences`
- Iterate over given array, for each element
  - Set current element to all lowercase
  - Does element exist as a key in the hash?
    - If yes, increment value by 1
    - If no, create hash key and set value to 1
- Iterate over the hash, and output each key-value pair according to the example case
=end

def count_occurrences(array)
  array.each_with_object({}) do |element, occurrences|
    if occurrences.keys.include?(element)
      occurrences[element] += 1
    else
      occurrences[element] = 1
    end
  end
end

def display_occurrences(hash)
  hash.each do |element, occurrences|
    puts "#{element} => #{occurrences}"
  end
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

display_occurrences(count_occurrences(vehicles))

# BONUS: made a case-insensitive version

def case_insensitive_count_occurrences(array)
  array.each_with_object({}) do |element, occurrences|
    element = element.downcase
    if occurrences.keys.include?(element)
      occurrences[element] += 1
    else
      occurrences[element] = 1
    end
  end
end

vehicles = [
  'car', 'Car', 'truck', 'car', 'SUV', 'Truck',
  'motorcycle', 'motorcycle', 'car', 'truck', 'suv'
]

display_occurrences(case_insensitive_count_occurrences(vehicles))
