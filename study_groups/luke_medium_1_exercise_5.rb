=begin

Write a method that displays a 4-pointed diamond in an n x n grid, where n is an odd integer that is supplied as an argument to the method. You may assume that the argument will always be an odd integer.


PROBLEM
input: integer (odd)
output: print to screen
explicit:
  display a 4-pointed diamond in an n x n grid
implicit:
  NA

TEST CASE
diamond(1)
*
diamond(3)
 *
***
 *
diamond(9)
    *
   ***
  *****
 *******
*********
 *******
  *****
   ***
    *


BREAKDOWN
diamond(5)
  *        # 2 space, 1 star    width = 5, spaces = (width - star) / 2
 ***       # 1 space, 3 star
*****      # 0 space, 5 star
 ***       # 1 space, 3 star
  *        # 2 space, 1 star

DATA STRUCTURE
input: integer
inter: NA
output: print to screen (strings of spaces or *)

ALGORITHM
given an integer called `n`
create an empty array called `lines`
Loop (iteration) (#times) for `line_number` in `n`
  Skip if `line_number` is even
  else:
    create empty string `line_string`
    append spaces to string: (`n` - `line_number`) / 2
    append star to string:   `line_number` ('*' * `line_number`)
    append the string `line_string` to the array

print the array
print '*' * n
reverse the array (#reverse)
print the array  (#puts)

=end


def diamond(n)
  lines = []

  n.times do |line_number|
    next if line_number.even?

    line_string = ''
    line_string << (' ' * ((n - line_number) / 2))
    line_string << ('*' * line_number)

    lines << line_string
  end

  puts lines
  puts ("*" * n)
  puts lines.reverse
end


diamond(1)
diamond(3)
diamond(9)



counter = 1
loop

  counter += 1
  break if counter == n
end



def diamond(grid_size)
  left_half = grid_size / 2
  spaces = left_half
  1.upto(grid_size - 1) do |iteration|
    if iteration.odd?
      puts "#{' ' * spaces}#{'*' * iteration}"
      spaces -= 1
    end
  end

  puts "#{'*' * grid_size}"

  (grid_size - 1).downto(1) do |iteration|
    if iteration.odd?
      spaces += 1
      puts "#{' ' * spaces}#{'*' * iteration}"
    end
  end
end



def print_row(grid_size, distance_from_center)
  number_of_stars = grid_size - 2 * distance_from_center
  stars = '*' * number_of_stars
  puts stars.center(grid_size)
end

def diamond(grid_size)
  max_distance = (grid_size - 1) / 2
  max_distance.downto(0) { |distance| print_row(grid_size, distance) }
  1.upto(max_distance)   { |distance| print_row(grid_size, distance) }
end



def print_row(3, 0)
  number_of_stars = 3 - 2 * 0        = 3
  stars = '*' * 3
  puts stars.center(3)
end

def diamond(grid_size)
  max_distance = (grid_size - 1) / 2                                          3 - 1 / 2 = 1
  1.downto(0) { |0| print_row(3, 0) }
  1.upto(max_distance)   { |distance| print_row(grid_size, distance) }
end


' * '
'***'


diamond(5)

#   *
#  * *
# *   *
#  * *
#   *



