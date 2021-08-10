https://www.codewars.com/kata/585d7d5adb20cf33cb000235/train/ruby
# First (6kyu)
There is an array with some numbers. All numbers are repeated except for one. Try to find it!

It’s guaranteed that array contains at least 3 numbers.

The tests contain some very huge arrays, so think about performance.

#Test Cases
find_uniq([ 1, 1, 1, 2, 1, 1 ]) == 2
find_uniq([ 0, 0, 0.55, 0, 0 ]) == 0.55




https://www.codewars.com/kata/554b4ac871d6813a03000035/train/ruby
# Second (7kyu)

In this little assignment you are given a string of space separated numbers, and
have to return the highest and lowest number.

Notes:

- All numbers are valid Int32, no need to validate them.
- There will always be at least one number in the input string.
- Output string must be two numbers separated by a single space, and highest number is first.

# Test Cases
high_and_low("1 2 3 4 5")  # return "5 1"
high_and_low("1 2 -3 4 5") # return "5 -3"
high_and_low("1 9 3 4 -5") # return "9 -5"



https://www.codewars.com/kata/5842df8ccbd22792a4000245/train/ruby
# Third (6kyu)
Write Number in Expanded Form
You will be given a number and you will need to return it as a string in Expanded Form. 

Note:  All numbers will be whole numbers greater than 0.

#Test Cases
expanded_form(12); # Should return '10 + 2'
expanded_form(42); # Should return '40 + 2'
expanded_form(70304); # Should return '70000 + 300 + 4'


def expanded_form(int)
  number_arr = []
  iter = int.to_s.size
  iter.times do |iter|
    arr = int.divmod(10)
    int = arr[0] 
    if iter == 0
      number_arr.unshift(arr[1])
    else    
      number_arr.unshift(arr[1] * ((iter)*10))
    end
  end
  number_arr.join(' + ')
end
  
    
    

#Test Cases
p expanded_form(12) == '10 + 2'
p expanded_form(42) == '40 + 2'
p expanded_form(70304) #== '70000 + 300 + 4'