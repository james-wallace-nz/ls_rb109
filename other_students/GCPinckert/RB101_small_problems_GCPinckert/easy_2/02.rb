=begin
- Build a program that asks a user for the length and width of a room
- Both length and width should be in meters
- Display the area of the room in square meters and square feet
- 1 square meter == 10.7639 square feet
- You don't have to validate input

Example: 
Enter the length of the room in meters:
10
Enter the width of the room in meters:
7
The area of the room is 70.0 square meters (753.47 square feet).

- Input: 2 numbers, length and width (provided in meters)
- Output: 2 floats, area in sq meters, area in sq feet

- Ask user for length of room in meters
- Set length variable equal to input.to_f
- Ask user to width of room in meters
- Set width variable equal to input.to_f
- Set area in sq meters = length * width
- Set area in sq feet = area in sq meters * 10.7639
- Display results

Further Exploration:
- Modify the program to ask for the input measurements in feet
- Display the results in sq feet, sq inches, and sq centimeters
=end

SQMETERS_TO_SQFEET_CONVERSION = 10.7639
SQFEET_TO_SQINCHES_CONVERSION = 144
SQINCHES_TO_SQCM_CONVERSION = 6.4516

def get_dimensions
  puts "Enter the length of the room in meters:"
  length = gets.chomp.to_f
  puts "Enter the width of the room in meters:"
  width = gets.chomp.to_f
  [length, width]
end

def calculate_area_feet(length, width)
  (length * width).round(2)
end

def calculate_area_inches(area_feet)
  (area_feet * SQFEET_TO_SQINCHES_CONVERSION).round(2)
end

def calculate_area_cm(area_inches)
  (area_inches * SQINCHES_TO_SQCM_CONVERSION).round(2)
end

def display_result(area_feet, area_inches, area_cm)
  puts "The area of the room is: #{area_feet} square feet, " +
        "#{area_inches} square inches, or #{area_cm} square centimeters."
end

length, width = get_dimensions
area_feet = calculate_area_feet(length, width)
area_inches = calculate_area_inches(area_feet)
area_cm = calculate_area_cm(area_inches)
display_result(area_feet, area_inches, area_cm)
