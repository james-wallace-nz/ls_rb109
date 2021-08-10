=begin

PROBLEM
- Input: Array
- Output: Boolean

rules
    - Explicit rules
      - Write a method that will return true if the walk the app gives tou
        takes 10 minutes. 
        
    - Implicit rules
      - Single element arrays return false
      - Anything but an array of 10 elements returns false
      - Equal amounts of (north and south) and (east and west) returns true
        and all of them have to be less than 10 total

DATA STRUCTURE
- Array

ALGORITHM
- Count how many 's', 'n', 'e', and 'w'
- Return true if:
  - 's' count == 'n' count AND 'e' count == 'w' count
  - And all these counts added up 10

=end

def is_valid_walk(array)
  return false unless array.size == 10
  
  directions = ['n', 's', 'e', 'w']
  
  orientation_count = directions.map do |orientation|
    array.count(orientation)
  end
  
  return true if (orientation_count[0] == orientation_count[1]) &&
                 (orientation_count[2] == orientation_count[3])
  
  false
end


p is_valid_walk(['n','s','n','s','n','s','n','s','n','s']) == true
p is_valid_walk(['w','e','w','e','w','e','w','e','w','e','w','e']) == false
p is_valid_walk(['w']) == false
p is_valid_walk(['n','n','n','s','n','s','n','s','n','s']) == false
