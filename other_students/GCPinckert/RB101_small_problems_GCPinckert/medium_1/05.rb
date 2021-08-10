=begin
- Display a 4-pointed diamond in an n x n grid
- n is an odd integer supplied as an argument
  - n will always be odd

Examples:
diamond(1)

*

diamond(3)

 *  -#*#
*** -***
 *  -#*#

diamond(9)

    *     - ####*####
   ***    - ###***###
  *****   - ##*****##
 *******  - #*******#
********* - *********
 *******  - #*******#
  *****   - ##*****##
   ***    - ###***###
    *     - ####*####

Input = an odd positive integer, representing height and width of the grid
Output = an array of strings
  - Each string will represent a row in the diamond
  - Each string will consist of an even number (or 0) spaces
  - Each string will consist of an odd number of *

Algorithm:
- Initialize an empty array
- Set `rows` variable to 0
- Set * variable to input `num`
- While rows < `num`
  - While * > 0
    - Create a string of * variables stars centered on `num` sized string
      - Extract to separate method
    - If the array is empty
      - Add the string to the array
    - If the array is not empty
      - Add the string to the front and end of the array
    - decrement `stars` by 2
  - Increment `rows` by 1
- Return the array of strings
- Print the array of strings to the string, one string per line

- Create a string of * starts centered on `num` sized string
  - Set empty string
  - Set counter to 0
  - While counter < * variable
    - Concatenate * to string
    - Increment counter
  - Center string in `num` sized string
  - Return string
=end

def make_row(width, stars)
  ("*" * stars).center(width)
end

def render_diamond(grid_size)
  diamond_lines = []
  rows = 0
  stars = grid_size

  while rows < grid_size
    while stars > 0
      row = make_row(grid_size, stars)
      if diamond_lines.empty?
        diamond_lines << row
      else
        diamond_lines.append(row)
        diamond_lines.prepend(row)
      end
      stars -= 2
    end
    rows += 1
  end

  diamond_lines
end

def print_diamond(diamond)
  diamond.each { |line| puts line }
end

print_diamond(render_diamond(1))
puts
print_diamond(render_diamond(3))
puts
print_diamond(render_diamond(9))

=begin
# Further Exploration
Modify the solution so it only prints out the outline of the diamond

Example:
diamond(5)

  *
 * *
*   *
 * *
  *

  *     stars = 1, spaces = 0
 *-*    stars = 2, spaces = 1
*---*   stars = 2, spaces = 3
 *-*    stars = 2, spaces = 1
  *
=end

def make_outline_row(width, stars)
  if stars == 1
    "*".center(width)
  else
    ("*" + (" " * (stars - 2)) + "*").center(width)
  end
end

def render_outline_diamond(grid_size)
  diamond_lines = []
  rows = 0
  stars = grid_size

  while rows < grid_size
    while stars > 0
      row = make_outline_row(grid_size, stars)
      if diamond_lines.empty?
        diamond_lines << row
      else
        diamond_lines.append(row)
        diamond_lines.prepend(row)
      end
      stars -= 2
    end
    rows += 1
  end

  diamond_lines
end

def print_outline_diamond(diamond)
  diamond.each { |line| puts line }
end

print_outline_diamond(render_outline_diamond(1))
puts
print_outline_diamond(render_outline_diamond(5))
puts
print_outline_diamond(render_outline_diamond(9))
