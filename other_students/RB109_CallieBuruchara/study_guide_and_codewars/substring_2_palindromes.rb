# Chris says this question is given a lot in interview screenings

def substring(str, num1, num2 = nil)
  return str[num1] if num2 == nil
  return str[num1..-1] if num2 > str.size - 1
  return str[num1..num2]
end


def substrings(str)
  result = []
  (0...str.size).each do |idx1|
    idx2 = idx1 + 1
    until idx2 > str.size - 1
      result << substring(str, idx1, idx2)
      idx2 += 1
    end
  end
  result
end

def palindromes(str)
  substrings(str).select {|sub| sub == sub.reverse}
end


def longest_palindrome(str)
  palindromes(str).max_by(&:length)
end

p longest_palindrome('ppop')