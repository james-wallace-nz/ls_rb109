=begin
Notes:
  - A `stack` is a list of values that grows and shrinks dynamically
    - `pop` removes an item from the top
    - `push` adds an item to the top
  - A stack-and-register programming language uses a `stack` of values
    - Each operation operates on a `register`, which is like the current value
    - The register is not part of the stack
    - Operations that require 2 values pop the topmost item from the stack
      and preform the operation using that value and the register value then
      store the result back in the register
  - `MULT`, for example, will multiply the stack value with the register value
    remove the value from the stack, and store the result back in the register
      - [3, 6, 4] and register = 7
      - MULT => [3, 6] and register = 28
      - MULT => [3] and register = 168

Problem: 
- Write a method that implements a mini stack-and-register based programming
  language that has the following commands.
  - `n` => Place value `n` in the register. Do not modify the stack
  - `PUSH` => Push the register value onto the stack. Leave the value in the
    register
  - `ADD` => Pops a value from the stack and adds it to the register, storing
    the result in the register
  - `SUB` => Pops a value from the stack and subtracts if from the register,
    storing the result in the register
  - `MULT` => Pops a value from the stack and multiplies it by the register,
    storing the result in the register
  - `DIV` => Pops a value from the stack and divides it into the register,
    storing the integer result in the register
  - `MOD` => Pops a value from the stack and divides it into the register,
    storing the integer remainder of the division in the register
  - `POP` => Removed the topmost item from the stack and places it in the
    register
  - `PRINT` => Print the register value
- All operations are integer operations
- Programs will be supplied via a string passes in as an argument
  - There may be multiple programs in the string
- All programs are correct, they won't try to pop a non-existent value from
  the stack, and they won't contain unknown tokens
- Initialize the register to 0

Examples:
  minilang('PRINT')
  - [], register = 0
  # 0

  minilang('5 PUSH 3 MULT PRINT')
  - [], register = 5
  - [5], register = 5
  - [5], register = 3
  - [], register = 3 * 5 = 15
  # 15

  minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
  - [], register = 5
  # 5
  - [5], register = 5
  - [5], register = 3
  # 3
  - [], register = 3 + 5 = 8
  # 8

  minilang('5 PUSH POP PRINT')
  - [], register = 5
  - [5], register = 5
  - [], register = 5
  # 5

  minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
  - [], register = 3
  - [3], register = 3
  - [3], register = 4
  - [3, 4], register = 4
  - [3, 4], register = 5
  - [3, 4, 5], register = 5
  # 5
  - [3, 4], register = 5 + 5 = 10
  # 10
  - [3], register = 4
  # 4
  - [], register = 4 + 3 = 7
  # 7

  minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
  - [], register = 3
  - [3], register = 3
  - [3, 3], register = 3
  - [3, 3], register = 7
  - [3], register = 7 / 3 = 2
  - [], register = 2 * 3 = 6
  # 6

  minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
  - [], register = 4
  - [4], register = 4
  - [4, 4], register = 4
  - [4, 4], register = 7
  - [4], register = 7 % 4 = 3
  - [], register = 3 * 4 = 12
  # 12

  minilang('-3 PUSH 5 SUB PRINT')
  - [], register = -3
  - [-3], register = -3
  - [-3], register = 5
  - [], register = 5 - -3 = 8
  # 8

  minilang('6 PUSH')
  - [], register = 6
  - [6], register = 6
  # (nothing printed; no PRINT commands)

Algorithm:
- Initialize an empty array `stack`
- Initialize `register` to 0
- Take input string and convert it to an array of `commands`
- Iterate through `commands`, for each:
  - Is it a number?
    - Convert string to int
    - Reassign `register` to int
  - Is it `PUSH`?
    - Append `register` to the end of `stack`
  - ADD?
    - Remove last element from `stack`
    - Reassign `register` to `element` + `register`
  - SUB?
    - Remove last element from `stack`
    - Reassign `register` to `register` - `element`
  - MULT?
    - Remove last element from `stack`
    - Reassign `register` to `register` * `element`
  - DIV?
    - Remove last element from `stack`
    - Reassign `register` to `register` \ `element`
  - MOD?
    - Remove last element from `stack`
    - Reassign `register` to `register` % `element`
  - POP?
    - Remove the last element from `stack`
    - Reassign `register` to `element`
  - PRINT?
    - Print `register` to the console
=end

def minilang(program)
  stack = []
  register = 0
  commands = program.split

  commands.each do |command|
    case command
    when /\d/     then register = command.to_i
    when 'PUSH'   then stack << register
    when 'ADD'    then register += stack.pop
    when 'SUB'    then register -= stack.pop
    when 'MULT'   then register *= stack.pop
    when 'DIV'    then register /= stack.pop
    when 'MOD'    then register %= stack.pop
    when 'POP'    then register = stack.pop
    when 'PRINT'  then puts register
    else               puts "Invalid command"
    end
  end
end

minilang('PRINT')
# 0

minilang('5 PUSH 3 MULT PRINT')
# 15

minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8

minilang('5 PUSH POP PRINT')
# 5

minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# 5
# 10
# 4
# 7

minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# 6

minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12

minilang('-3 PUSH 5 SUB PRINT')
# 8

minilang('6 PUSH')
# (nothing printed; no PRINT commands)

=begin
# Further Exploration
- Write a minilang program to evaluate and and print the result of the following:
(3 + (4 * 5) - 7) / (5 % 3) => 8
- [], 0
- 3
  [], 3
- PUSH
  [3], 5
- 5
  [3], 5
- MOD
  [], 2
- PUSH
  [2], 2
- 7
  [2], 7
- PUSH
  [2, 7], 7
- 4
  [2, 7], 4
- PUSH
  [2, 7, 4], 4
- 5
  [2, 7, 4], 5
- MULT
  [2, 7], 20
- PUSH
  [2, 7, 20], 20
- 3
  [2, 7, 20], 3
- ADD
  [2, 7], 23
- SUB
  [2], 16
- DIV
  [], 8
- PRINT
  # => 8
=end

puts "---FURTHER EXPLORATION---"
minilang("3 PUSH 5 MOD PUSH 7 PUSH 4 PUSH 5 MULT PUSH 3 ADD SUB DIV PRINT")
