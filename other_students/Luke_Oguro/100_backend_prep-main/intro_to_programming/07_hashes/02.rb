immediate_family = {
  sisters: ["jane", "jill", "beth"],
  brothers: ["frank","rob","david"]
}

relatives = {
  uncles: ["bob", "joe", "steve"],
  aunts: ["mary","sally","susan"]
}

# The `merge` method without the bang suffix does not mutate the caller
p immediate_family.merge(relatives)
p immediate_family

# The `merge!` method does
p immediate_family.merge!(relatives)
p immediate_family