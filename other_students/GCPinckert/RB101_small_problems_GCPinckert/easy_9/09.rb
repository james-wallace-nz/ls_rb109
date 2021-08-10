=begin
# Problem:
  - Input: three integers, each representing a grade
    - will always be between 0 and 100
  - Output: the average of the input grades as a letter value
    - 90 <= score <= 100 => 'A'
    - 80 <= score < 90   => 'B'
    - 70 <= score < 80   => 'C'
    - 60 <= score < 70   => 'D'
    - 0 <= score < 60    => 'F'
    
# Examples:
get_grade(95, 90, 93) == "A"
  - 95 + 90 + 93 = 278
  - 278 / 3 = 92.667 (92 in integer division)
  - (90..100) covers 92 so return 'A'
get_grade(50, 50, 95) == "D"
  - average = 65

# Algorithm:
- Initialize a hash of grades
- Get the sum of all the scores
  - num1 + num2 + num3
- Divide the sum by the number of scores (3.0) and round to 2 decimal places
- Check to see which range the average score lies within and output the
  appropriate letter
=end

GRADES = {"A" => (90..100), "B" => (80...90), "C" => (70...80),
  "D" => (60...70), "F" => (0...60)}

def get_grade(score1, score2, score3)
  average = ((score1 + score2 + score3) / 3.0).round(2)

  GRADES.each do |grade, range|
    return grade if range.cover?(average)
  end
end

p "---Normal Grade---"
p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"

=begin
# Further Exploration
How would you handle this id there was a possibility of extra credit grades
causing it to exceed 100 points?

- Add an implied return statement after iterating through the hash in case
  none of the ranges cover the score (i.e. it is over 100)
=end

def get_extra_grade(score1, score2, score3)
  average = ((score1 + score2 + score3) / 3.0).round(2)
  
  GRADES.each do |grade, range|
    return grade if range.cover?(average)
  end

  "A+"
end
  
  p "---Extra Credit Possible---"
  p get_extra_grade(95, 90, 93) == "A"
  p get_extra_grade(50, 50, 95) == "D"
  p get_extra_grade(99, 99, 110) == "A+"
  