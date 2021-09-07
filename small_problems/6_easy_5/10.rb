# Write a method that will take a short line of text, and print it within a box.

=begin
PROBLEM

Input: string
Output: string in a box

Box:
left, right borders
top, bottom borders with + in corners
and empty line above and below the string
width is string length + 1 space margin either side then the border


DATA STRUCTURE

string


ALGORITHM
- print_row method:
  - initialise empty string `row` variable
  - if row equals 'top' or 'bottom'
      - append '+' to `row`
      - append width x '-'s to `row`
      - append '+' to `row`

  - if row equals 'spaces
      - append '|' to `row`
      - append width x ' ' to `row`
      - append '|' to `row`

  - otherwise string row
      - append '|' to `row`
      - append ' ' to `row`
      - append string to `row`
      - append ' ' to `row`
      - append '|' to `row`

  - print `row`

print_in_box method:
- print top
- print rows with spaces
- print rows with string
- print rows with spaces
- print bottom

CODE
=end

def print_row(input, width)
  row = ''

  case input
  when 'top', 'bottom'
    row << '+'
    row << '-' * width
    row << '+'
  when 'spaces'
    row << '|'
    row << ' ' * width
    row << '|'
  else
    row << '|'
    row << ' '
    row << input
    row << ' '
    row << '|'
  end

  puts row
end

def print_in_box(string)
  width = string.length + 2

  print_row('top', width)
  print_row('spaces', width)
  print_row(string, width)
  print_row('spaces', width)
  print_row('bottom', width)
end

# Example:

print_in_box('To boldly go where no one has gone before.')
# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+

print_in_box('')
# +--+
# |  |
# |  |
# |  |
# +--+

# You may assume that the input will always fit in your terminal window.
