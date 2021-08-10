=begin
Exercise 1:
Given a hash of family members, with keys as the title and an array
of names as the values, use Ruby's built-in select method to gather
only immediate family member's names into a new array. 
=end

family = { uncles: ["bob", "joe", "steve"],
           sisters: ["jane", "jill", "beth"],
           brothers: ["frank", "rob", "david"],
           aunts: ["mary", "sally", "susan"]
          }

# create new hash including only immediate family members
immediate_family = family.select do |key, value|
  (key == :sisters) || (key == :brothers)
end

# get an array of only hash values
family_array = immediate_family.values.flatten

# check array 
puts family_array