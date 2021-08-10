# given an array of numbers
# initialize empty array (unique_num)
# iterate through with each
# add to unique_num if the count of that item is 1

def find_uniq(ary)
  unique_num = []

  ary.each do |num|
    unique_num << num if ary.count(num) == 1
  end
  unique_num[0]
end

p find_uniq([ 1, 1, 1, 2, 1, 1 ])

#optimized further

