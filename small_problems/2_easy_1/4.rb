# Write a method that counts the number of occurrences of each element in a given array.

# input: array of words
# output: print array element and frequency

# array element strings are case sensitive

# algorithm:
# - initialize new empty hash `frequencies` with default value of 0
# - iterate through array argument
  # - add current element to `frequencies` hash as key and increment frequency value by 1
# - iterate through `frequencies` hash and print each key-value pair


def count_occurrences(array)
  frequncies = Hash.new(0)

  array.each do |word|
    frequncies[word] += 1
  end

  frequncies.each do |word, frequency|
    puts "#{word} => #{frequency}"
  end
end



def count_occurrences(array)
  frequncies = {}

  array.each do |word|
    if frequncies.has_key?(word)
      frequncies[word] += 1
    else
      frequncies[word] = 1
    end
  end

  frequncies.each do |word, frequency|
    puts "#{word} => #{frequency}"
  end
end



def count_occurrences(array)
  frequncies = {}

  array.uniq.each do |word|
    frequncies[word] = array.count(word)
  end

  frequncies.each do |word, frequency|
    puts "#{word} => #{frequency}"
  end
end



vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)

# The words in the array are case-sensitive: 'suv' != 'SUV'. Once counted, print each element alongside the number of occurrences.

# Expected output:
# car => 4
# truck => 3
# SUV => 1
# motorcycle => 2
