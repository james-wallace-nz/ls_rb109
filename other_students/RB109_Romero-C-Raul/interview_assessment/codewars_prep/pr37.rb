def solution(integer)
  
  (1...integer).select do |num|
    num % 3 == 0 || num % 5 == 0
  end.sum
end

p solution(10) == 23
p solution(20) == 78
p solution(200) == 9168
