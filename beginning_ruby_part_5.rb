# Remove Vowels

# Inputs:
# green, yellow, black, white

# Outputs:
# grn, yllw, blck, wht

# Algorithm:
# iterate through each element in the array using map
# transform each element by deleting vowels

def remove_vowels(array)
  array.map do |string|
    string.delete('aeiou')
  end
end

p remove_vowels(%w(green yellow black white)) == %w(grn yllw blck wht)

# input: string
# output: boolean - balanced set of parentheses

# algorithm:
# iterate through characters in the string
# +1 for ( and -1 for ). If sum at any point is negative, or ending sum is <> 0 then false, else true

def balancer(string)
  running_total = 0
  string.chars.each do |char|
    case char
    when '('
      running_total += 1
    when ')'
      running_total -= 1
      return false if running_total < 0
    end
  end
  running_total == 0 ? true : false
end

p balancer('hi') == true
p balancer('(hi') == false
p balancer('(hi)') == true
p balancer(')hi(') == false


# input: two numbers
# output: all primes between the two numbers
# don't use prime class

def is_prime?(number)
  (2...number). each do |num|
    return false if number % num == 0
  end
  true
end

def find_primes(start, stop)
  primes = []
  (start..stop).each do |number|
    primes << number if is_prime?(number)
  end
  primes.join(', ')
end

p find_primes(3, 10) # == 3, 5, 7
p find_primes(5, 20)
p find_primes(1, 2)
