=begin
A triangle is classified as follows:

right One angle of the triangle is a right angle (90 degrees)
acute All 3 angles of the triangle are less than 90 degrees
obtuse One angle is greater than 90 degrees.

To be a valid triangle, the sum of the angles must be exactly 180 degrees, and all angles must be greater than 0: if either of these conditions is not satisfied, the triangle is invalid.

Write a method that takes the 3 angles of a triangle as arguments, and returns a symbol :right, :acute, :obtuse, or :invalid depending on whether the triangle is a right, acute, obtuse, or invalid triangle.

You may assume integer valued angles so you don't have to worry about floating point errors. You may also assume that the arguments are specified in degrees.

Examples:



PROBLEM
Classify a triangle based on 3 angles as being either right, acute or obtuse

Inputs:
3 integers as arguments

Outputs:
:right, :acute, :obtuse, :invalid


EXAMPLES

triangle(60, 70, 50) == :acute
triangle(30, 90, 60) == :right
triangle(120, 50, 10) == :obtuse
triangle(0, 90, 90) == :invalid
triangle(50, 50, 50) == :invalid


DATA STRUCTURES
integers
symbols
array


ALGORITHM
Plain English:
- define a method with three parameters for the angles
- create a variable to hold the three angles

- check whether any angle is equal to or less than zero
  - #any? on the array to return boolean if any angles match <= 0
  - if resulting array size > 0 exit and return :invalid

- check whether sum of angles is not equal to 180
  - if so exit and return :invalid

- check if any angles equal to 90
  - if so return :right

- check if all angles less than 90
  - if so return :acute

- check if one angle greater than 90
  - if so return :obtuse


set variable




CODE:
=end

def triangle(a, b, c)
  angles = [a, b, c]
  return :invalid if angles.any? { |angle| angle <= 0 }
  return :invalid if angles.inject(:+) != 180
  return :right if angles.any? { |angle| angle == 90 }
  return :acute if angles.all? { |angle| angle < 90 }
  return :obtuse if angles.any? { |angle| angle > 90 }
end





puts triangle(60, 70, 50) == :acute
puts triangle(30, 90, 60) == :right
puts triangle(120, 50, 10) == :obtuse
puts triangle(0, 90, 90) == :invalid
puts triangle(50, 50, 50) == :invalid


def triangle(angle1, angle2, angle3)
  angles = [angle1, angle2, angle3]

  case
  when angles.reduce(:+) != 180, angles.include?(0) then :invalid
  when angles.include?(90) then :right
  when angles.all? { |angle| angle < 90 } then :acute
  else :obtuse
  end
end


def triangle(angle_one, angle_two, angle_three)
  angles = [angle_one, angle_two, angle_three]
  case
  when angles.reduce(&:+) != 180, angles.include?(0)
    :invalid
  when angles.include?(90)
    :right
  when angles.max > 90
    :obtuse
  when angles.all? { |angle| angle < 90 }
    :acute
  else
    :invalid
  end
end












