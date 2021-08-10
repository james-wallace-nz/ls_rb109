=begin
- Bank of switches 1 - `n`
- Each switch is connected to exactly one light
- All the lights are initially off
- First, toggle all switches on
- 2nd, toggle multiples of 2 (2, 4, 6, ...) switches
- 3rd, toggle multiples of 3 switches (3, 6, 9, ...)
- Repeat this process and keep going until you have been through `n` cycles
  - Keep toggling muliples of the current iteration, don't just repeat the
    above steps (i.e. 4th iteration will be multiples of 4, etc)

Input (argument): integer, the total number of switches
Output (returns): array, identifies which lights are on after `n` cycles

Examples:
n = 5 lights:
  1) every light is turned on
    * * * * *
  2) lights 2 and 4 are now off; 1, 3, and 5 are on
    * - * - *
  3) lights 2, 3, and 4 are now off; 1 and 5 are on
    * - - - *
  4) lights 2 and 3 are now off, 1, 4, and 5 are on
    * - - * *
  5) lights 2, 3, and 5 are off, 1 and 4 are on
    * - - * -
Result, 2 lights are left on, 1 and 4. 
Return [1, 4] as an array

n = 10
  1) * * * * * * * * * *
  2) * - * - * - * - * -
  3) * - - - * * * - - -
  4) * - - * * * * * - -
  5) * - - * - * * * - *
  6) * - - * - - * * - *
  7) * - - * - - - * - *
  8) * - - * - - - - - *
  9) * - - * - - - - * *
  10)* - - * - - - - * -
Returns [1, 4, 9]

# Algorithm
- Initialize lights
  - Initialize an empty array to represent our bank of switches
  - Iterate a loop n times
    - Add the boolean false to the switches array
  - Return the array of booleans
- Toggle lights and change array as I do so
  - Iterate from 1 up to n, tracking iteration number
    - Iterate over the switches with index
      - If the current switch index + 1 is evenly divisible by the current iteration
        number
        - Toggle the switch
  - Return the mutated array
- Figure out which lights are on
  - Initialize an "on" array
  - Iterate over the bank of switches, tracking iteration number from 1-n
    - If the switch is on, add the iteration number to the "on" array
  - Return the "on" array
=end

def initialize_lights(n)
  lights = []
  n.times { lights << false }
  lights
end

def toggle_lights!(lights, n)
  1.upto(n) do |iteration|
    lights.map!.with_index do |light, index|
      (index + 1) % iteration == 0 ? !light : light
    end
  end

  lights
end

def lights_on(n)
  lights = initialize_lights(n)
  
  toggle_lights!(lights, n)

  lights_on = []
  lights.each_with_index do |light, index|
    lights_on << index + 1 if light
  end

  lights_on
end

p lights_on(5) == [1, 4]
p lights_on(10) == [1, 4, 9]

p lights_on(1000) == [1, 4, 9, 16, 25, 36, 49, 64, 81, 100, 121, 144, 169, 196,
                    225, 256, 289, 324, 361, 400, 441, 484, 529, 576, 625, 676,
                    729, 784, 841, 900, 961]