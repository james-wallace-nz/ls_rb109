def power(base, exponent)
  return nil if exponent < 0
  
  number = 1
  
  1.upto(exponent) do
    number *= base
  end
  
  number
end

p power(2, 3) == 8
p power(10, 0) == 1
p power(-5, 3) == -125
p power(-4, 2) == 16
p power(10, 0) == 1
p power(2, 3) == 8
p power(3, 2) == 9
p power(-5, 3) == -125
p power(-4, 2) == 16
p power(8, -2) == nil
