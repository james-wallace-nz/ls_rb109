=begin
- Input: 3 numbers representing the three sides of a triangle
  - numbers may be either integers or floats
- Output: a symbol describing the triangle type
  - :equilateral => all 3 sides of equal length
  - :isosceles => 2 sides equal, 3rd side different
  - :scalene => all 3 sides different
  - :invalid => the sides do not represent a valid traingle
  - valid triangle:
    - sum of 2 shortest sides > longest side
    - all sides must have lengths > 0

# Example
triangle(3, 3, 3) == :equilateral
  - 3 + 3 = 6 > 3
  - 3 = 3 = 3
triangle(3, 3, 1.5) == :isosceles
  - 1.5 + 3 = 4.5 > 3
  - 3 = 3, 1.5
triangle(3, 4, 5) == :scalene
  - 3 + 4 = 7 > 5
  - no sides are equal
triangle(0, 3, 3) == :invalid
  - 0 + 3 = 3 not greater than 3
triangle(3, 1, 1) == :invalid
  - 1 + 1 = 2 not greater than 3

# Algorithm:
- put all number arguments into an array to sort from smallest to largest
- return :invalid if any nums do not have lengths > 0
- return :invalid if arr[0] + arr[1] is not > arr[2]
- return :scalene if none of the sides of the triangle occur more than once
- return :equilateral if the size of the uniq array is 1
- return :isosceles if the size of the uniq array is 2
=end

def triangle(side1, side2, side3)
  sides = [side1, side2, side3].sort
  return :invalid if (sides.any? { |side| side < 1 }) || 
                     (sides[0] + sides[1] <= sides[2])
  case sides.uniq.size
  when 3 then :scalene
  when 2 then :isosceles
  when 1 then :equilateral
  end
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid
