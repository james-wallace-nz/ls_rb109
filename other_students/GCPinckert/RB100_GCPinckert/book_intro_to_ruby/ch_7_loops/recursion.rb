# double a number repeatedly until the pre-doubled number is >= 10

# without recursion:
def doubler(start)
  puts start * 2
end

doubler(2) #=> 4
doubler(4) #=> 8
doubler(8) #=> 16
# 16 >= 10 so do not call doubler again

# with recursion:
def doubler_r(start)
  puts start
  if start < 10
    doubler_r(start * 2)
  end
end

doubler_r(2)