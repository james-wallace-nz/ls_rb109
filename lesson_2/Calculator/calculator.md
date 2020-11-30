# Problem

ask for two numbers
ask for type of operation - add, subtract, multiply, divide
display the result

# Examples

type in first number          1
type in second number         1
what operation to perform?    add
display                       2

# Data Structures

local variables for first, second number and operation
call operation method using case statement
operations in constant array
messages in constant hash

# Algorithm

ask for first number                                        # method call - request_input(msg)
validate number input                                       # method call - valid_input?(input)
set first number variable                                   # variable assignment - first_num

ask for second number                                       # method call - request_operation(msg)
validate number input                                       # method call - valid_input?(input)
set second number variable                                  # variable assignment - second_num

ask for operation                                           # method call - request_input
validate operation input                                    # method call - valid_operation?(operation)
set operation variable                                      # variable assignment - operation

use case statement to invoke method for chosen operation    # method calls - add(a, b), subtract(a, b), multiply(a, b), divide(a, b)

set calc_result variable
display calc_result of operations                           # method call - display_result(first, second, calc_result, operation)

# Code