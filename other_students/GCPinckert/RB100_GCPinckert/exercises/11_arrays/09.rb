# Use the given nested array favorites
# Flatten and print this array
# The printed result should not have any sub-arrays
# The printed result should have all the original strings and numbers
# Expected output: ["Dave", 7, "Miranda", 3, "Jason", 11]

favorites = [['Dave', 7], ['Miranda', 3], ['Jason', 11]]

favorites.flatten!

p favorites