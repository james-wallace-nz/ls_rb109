=begin
# Problem:
- Input: positive integer `n`
- Output: display a right triangle whose sides each have n stars
  - The triangle should be right aligned,
  - i.e. the hypotenuse runs from the lower-left to the top-right

# Examples
triangle(5)

    *
   **
  ***
 ****
*****

----* 4, 1
---** 3, 2
--*** 2, 3
-**** 1, 4
***** 0, 5

triangle(9)

        *
       **
      ***
     ****
    *****
   ******
  *******
 ********
*********

--------* 8, 1
-------** 7, 2
------*** 6, 3
-----**** 5, 4
----***** 4, 5
---****** 3, 6
--******* 2, 7
-******** 1, 8
********* 0, 9

# Algorithm:
- Initialize an empty array `triangle`
- Initialize a counter for stars at 1
- Initialize a counter for spaces at n - 1
- Initialize a loop
  - break the loop if stars is greater than n
  - Initialize a string, `line`
  - Set line equal to ' ' times spaces plys '*' times stars
  - Append line to the traingle array
  - Increment stars by 1
  - Decrement spaces by 1
- Output the triangle to the console
=end

def triangle(n)
  triangle = []
  stars = 1
  spaces = n - 1
  
  loop do
    break if stars > n
    triangle << (' ' * spaces) + ('*' * stars)
    stars += 1
    spaces -= 1
  end
  
  triangle.each { |line| puts line }
end

triangle(5)
triangle(9)
triangle(12)

=begin
# Further Exploration
- Print the triangle upside down from it's current orientation

# Examples:
upside_down_triangle(5)

*****
 ****
  ***
   **
    *

upside_down_triangle(9)

*********
 ********
  *******
   ******
    *****
     ****
      ***
       **
        *

# Algorithm:
- Create the same loop as above
- Initialize stars to n
- Initialize spaces to 0
=end

def upside_down_triangle(n)
  triangle = []
  stars = n
  spaces = 0

  n.times do
    triangle << (' ' * spaces) + ('*' * stars)
    stars -= 1
    spaces += 1
  end

  triangle.each { |line| puts line }
end

upside_down_triangle(5)
upside_down_triangle(9)
upside_down_triangle(12)

=begin
- Make a method that displays a triangle with a it's right angle at any corner
  of the grid

# Examples:
----* 4, 1
---** 3, 2
--*** 2, 3
-**** 1, 4
***** 0, 5

***** 0, 5
 **** 1, 4
  *** 2, 3
   ** 3, 2
    * 4, 1

***** 0, 5
****- 1, 4
***-- 2, 3
**--- 3, 2
*---- 4, 1

*----
**---
***--
****-
*****
=end

def tl_triangle(n)
  stars = n
  n.times do
    puts '*' * stars
    stars -= 1
  end
end

def bl_triangle(n)
  stars = 1
  n.times do
    puts '*' * stars
    stars += 1
  end
end

def pick_your_triangle(n, corner) # corner => 'tr', 'tl', 'br', 'bl'
  case corner
  when 'br' then triangle(n)
  when 'tr' then upside_down_triangle(n)
  when 'tl' then tl_triangle(n)
  when 'bl' then bl_triangle(n)
  else            puts "invalid corner"
  end
end

pick_your_triangle(5, 'tr')
puts
pick_your_triangle(5, 'tl')
puts
pick_your_triangle(5, 'br')
puts 
pick_your_triangle(5, 'bl')
