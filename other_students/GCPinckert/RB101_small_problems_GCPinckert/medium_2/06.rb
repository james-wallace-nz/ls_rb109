=begin
# Problem
- Input: 3 integers representing angles in a triangle
- Output: symbol representing the kind of triangle
  - :right => one angle of the triangle is 90 degrees
  - :acute => all 3 angles of the triangle are less than 90 degrees
  - :obtuse => one angle is greater than 90 degrees
  - :invalid => not a valid triangle
    - sum of all angles must be 180 degrees
    - all angles must be greater than 0

# Examples:
triangle(60, 70, 50) == :acute
  - 60 + 70 + 50 == 180, all are < 90
triangle(30, 90, 60) == :right
  - 30 + 90 + 60 == 180, one is == 90
triangle(120, 50, 10) == :obtuse
  - 120 + 50 + 10 == 180, one is > 90
triangle(0, 90, 90) == :invalid
  - 0 + 90 + 90 == 180, but one angle is 0
triangle(50, 50, 50) == :invalid
  - 50 + 50 + 50 == 105

# Algorithm:
- put the angles together in a array angles
- If any of the angles == 0 or the sum of the array is not 180, return :invalid
- If any of the angles are 90, return :right
- If all the angles are < 90, return :acute
- Otherwise, return :obtuse
=end

def triangle(angle1, angle2, angle3)
  angles = [angle1, angle2, angle3]

  case
  when angles.any?(0) || angles.sum != 180 then :invalid
  when angles.any?(90) then :right
  when angles.all? { |angle| angle < 90 } then :acute
  else :obtuse
  end
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid
