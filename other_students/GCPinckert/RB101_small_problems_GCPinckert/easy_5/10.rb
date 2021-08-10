# Given a string line of text
# Output that text printed within a box
# The input will always fit in the terminal window

# Examples:
  # print_in_box('To boldly go where no one has gone before.')
  # +--------------------------------------------+
  # |                                            |
  # | To boldly go where no one has gone before. |
  # |                                            |
  # +--------------------------------------------+
  # 
  # print_in_box('')
  # +--+
  # |  |
  # |  |
  # |  |
  # +--+

# Input: string (i.e. 'go')
# Output: series of strings
  # top/bottom line (+--+)
  # top/bottom spacing line (|  |)
  # middle line with text (| a |)
  # top/bottom spacing line
  # top/bottom line

# Output the top-bottom line:
  # Initialize an empty string
  # Add '+' to the string
  # For the amount of characters in text + 2
    # Add '-' to the string
  # Add '+' to the string
  # Return the string
# Output the top-bottom spacing line
  # Initialize an empty string
  # Add '|' to the string
  # For the amount of characters in text + 2
    # Add ' ' to the string
  # Add '|' to the string
  # Return the string
# Output the middle line with the text
  # Initialize an empty string
  # Add '| ' to the string
  # Add the text to the string
  # Add ' |' to the string
  # Return the string
# Repeat step 2 (top-bottom-spacing line)
# Repeat step 1 (top-bottom line)

def print_in_box(text)
  top_bottom_border = "+" + ("-" * (text.size + 2)) + "+"
  spacer_line = "|" + (" " * (text.size + 2)) + "|"
  message_line = "| " + text + " |"

  puts top_bottom_border
  puts spacer_line
  puts message_line
  puts spacer_line
  puts top_bottom_border
end

print_in_box('To boldly go where no one has gone before.')
print_in_box('')

=begin
# Further Exploration:
- Truncate the message if it will be too wide to fit inside a standard terminal
- Create individual helper methods for each line type
- Change the method for appending variant length characters to some kind of loop
- Break the loop if the line exceeds 78 chars (we still need room to append last 2)
=end

LINE_LIMIT = 78

def top_bottom_border(text)
  line = ''
  line << '+-'
  (text.size).times do
    break if line.size == LINE_LIMIT
    line << '-'
  end
  line << '-+'
  line
end

def buffer(text)
  line = ''
  line << '| '
  (text.size).times do
    break if line.size == LINE_LIMIT
    line << ' '
  end
  line << ' |'
  line
end

def wrap_text_line(text)
  line = ''
  line << '| '
  text_to_wrap = text[(LINE_LIMIT - 2)..-1]
  text_to_wrap.chars.each do |char|
    break if line.size == LINE_LIMIT
    line << char
  end
  line << (' ' * ((LINE_LIMIT + 1) - line.size)) + "|"
  line
end

def text_line(text)
  line = ''
  line << '| '
  text.chars.each do |char|
    break if line.size == LINE_LIMIT
    line << char
  end
  line << ' |'

  if (line.size == (LINE_LIMIT + 2)) && (line.size < (text.size + 4))
    [line, wrap_text_line(text)]
  else
    line
  end
end

def print_in_box_to_fit(text)
  box_lines = []
  box_lines << top_bottom_border(text)
  box_lines << buffer(text)
  box_lines << text_line(text)
  box_lines << buffer(text)
  box_lines << top_bottom_border(text)
  
  box_lines.each { |line| puts line }
end

print_in_box_to_fit('To boldly go where no one has gone before.')
print_in_box_to_fit('')
print_in_box_to_fit("This is a really really long sentence that will have to be truncated, because it is far too wordy.")

# Note: still need to figure out how to wrap infinitely (i.e. if a text requires)
# wrapping beyond a single extra line
