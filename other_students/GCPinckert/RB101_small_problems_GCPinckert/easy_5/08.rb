# Given an array of integers between 0 and 19
# Return an array of those integers sorted
  # The sort is based on the English word for each number:
    # zero, one, two, three, four, five, six, seven, eight, 
    # nine, ten, eleven, twelve, thirteen, fourteen, fifteen, 
    # sixteen, seventeen, eighteen, nineteen
  # The sort is alphabetical based on a corresponding string
  # Longer words are considered "greater" than smaller ones

# Create an array where each element is the string of its index number
# Iterate through the array, for each element sort by
  # Use the current element as the index number to access the correct string in the array
  # Sort by the appropriate element value (string object)
# Return the sorted array

ENGLISH_NUMBERS = %w(zero one two three four five six seven eight nine ten
                      eleven twelve thirteen fourteen fifteen sixteen seventeen
                      eighteen nineteen)

def alphabetic_number_sort(nums)
  nums.sort_by { |num| ENGLISH_NUMBERS[num] }
end

puts alphabetic_number_sort((0..19).to_a) == [
        8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
        6, 16, 10, 13, 3, 12, 2, 0
      ]

# Further Exploration
# Rewrite this method to use Enumerable#sort

def alphabetic_number_sort2(nums)
  nums.sort { |num1, num2| ENGLISH_NUMBERS[num1] <=> ENGLISH_NUMBERS[num2] }
end

puts alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]
