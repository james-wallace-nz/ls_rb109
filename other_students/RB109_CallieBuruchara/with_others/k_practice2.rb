# input: positive integer
# output: positive integer:
# --> index of the first Fibonacci number that has input amount of digits

# accept an integer as argument (num)
# until all_fib_nums[-1].to_s.size == num
# once accomplished, exit iteration, find index of last position

# FIBONACCI NUMBER
# all_fib_nums = [1, 1]
# all_fib_nums << all_fib_nums[-1] + all_fib_nums[-2]


def find_fibonacci_index_by_length(num)
  all_fib_nums = [1, 1]
  until all_fib_nums[-1].to_s.size == num
    all_fib_nums << all_fib_nums[-1] + all_fib_nums[-2]
  end
  all_fib_nums.index(all_fib_nums[-1]) + 1
end

p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847