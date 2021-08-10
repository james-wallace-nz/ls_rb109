=begin
# Problem:
- Input: and integer n, representing length and width of output grid
  - Will always be a positive odd integer
  - Smallest possible grid size is 7
- Output: print out an 8-pointed star in an n x n grid

# Examples:
star(7)

*  *  *
 * * *
  ***
*******
  ***
 * * *
*  *  *

*--*--* -> 1, 2, 1, 2, 1
-*-*-*- -> 1, 1, 1, 1, 1, 1, 1
--***-- -> 2, 3, 2
******* -> 7
--***-- -> 2, 3, 2
-*-*-*- -> 1, 1, 1, 1, 1, 1, 1
*--*--* -> 1, 2, 1, 2, 1

star(9)

*   *   *
 *  *  *
  * * *
   ***
*********
   ***
  * * *
 *  *  *
*   *   *

*---*---* -> between = 3
-*--*--*- -> between = 2
--*-*-*-- -> between = 1
---***--- -> between = 0
********* -> 9 stars
---***--- -> between = 0
--*-*-*-- -> between = 1
-*--*--*- -> between = 2
*---*---* -> between = 3

# Algorithm:
- Initialize an array, star_lines to []
- Initialize an array, star_spokes to ['*', '*', '*']
- Add a string of n stars to the array (the middle line)
- Initialize a counter for spaces between stars to 0
- Iterate a loop
  - Join the star_spokes array into a string with spaces between each star
    according to the counter
  - break the loop if this string is larger than n
  - center the string on a string of n size
  - append the string to the star_lines array
  - prepend the string to the star_lines array
  - increment spaces between
- Output each line in the star_lines array to the console
=end

def star(n)
  star_lines = []
  star_spokes = %w(* * *)

  star_lines << ("*" * n)

  spaces_between = 0
  loop do
    line = star_spokes.join(' ' * spaces_between)
    break if line.size > n
    star_lines.append(line.center(n))
    star_lines.prepend(line.center(n))
    spaces_between += 1
  end

  star_lines.each { |line| puts line }
end

star(7)
puts
star(9)
puts
star(13)
