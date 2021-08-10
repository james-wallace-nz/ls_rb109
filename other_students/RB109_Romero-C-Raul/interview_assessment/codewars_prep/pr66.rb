=begin


=end

def solve(n, k)
  combinations = n.digits.reverse.combination(n.digits.size - k).to_a
  combinations.map(&:join).min_by { |num| num.to_i }
  
end

solve(123056,1) == '12056'
p solve(123056,2) == '1056'
p solve(123056,3) == '056'
p solve(123056,4) == '05'
p solve(1284569,1) == '124569'
p solve(1284569,2) == '12456'
p solve(1284569,3) == '1245'
p solve(1284569,4) == '124'