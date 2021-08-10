#"reverse an array without using the built-in reverse method"

#new array
def reverse(arr)
  new_array = []
  idx = -1
  until new_array.size == arr.size
    new_array << arr[idx]
    idx -=1
  end
  new_array
end

#p reverse(%w(a b c d e f g h i j k))

#original array

def reverse_o(arr)
  idx1 = 0
  idx2 = -1

  loop do
    arr[idx1], arr[idx2] = arr[idx2], arr[idx1]
    idx1 += 1
    idx2 -= 1
    break if idx1 > arr.size/2  - 1
  end
end

# example = [1,2,3, 4]
# reverse_o(example)
# p example



#"select (all) element(s) out of the array if its index is a fibonacci number"

def fibonacci_number?(num)
  fibonacci = [1, 1]
  until fibonacci[-1] >= num
    fibonacci << fibonacci[-1] + fibonacci[-2]
  end
  fibonacci.include?(num)
end

def fib_index(arr)
  selection = []
  arr.each_with_index do |num, idx|
    fibonacci_number?(idx) ? selection << num : next
  end
  selection
end

#p fib_index([1, 3, 7, 8, 144])




#"write a method to determine if a word is a palindrome, without using the
#reverse method"

def palindrome?(word)
  reversed = []
  temp = word.dup.chars
  until word.size == reversed.size
    reversed << temp.pop
  end
  word == reversed.join
end

p palindrome?('hello')
p palindrome?('madam')