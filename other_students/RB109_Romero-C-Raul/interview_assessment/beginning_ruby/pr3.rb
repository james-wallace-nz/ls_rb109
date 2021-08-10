=begin

PROBLEM
- Input: Two arguments -  Array that contains hashes, and hash
- Ouput: One argument - Array that contains hash or hashes

rules:
    - Explicit rules
      - Write a method that takes an array of hashes as an input, and a hash as a second
        input
        - Return hash(es) within the first argument that meet the selection criteria
          specified by the second argument

DATA STRUCTURE
- Hashes
- Arrays(?)

ALGORITHM
- Go through every element within the first argument (array of hashes)
  - Select current hash if the price is within the min and max price specified by 
    the second argument, AND if the hashes name matches the brand specified in the second
    argument

PSEUDOCODE
- Accept an array of hashes (inventory)
- Accept a hash of selection criteria (query)
- Initialize variable (price_min = query[:price_min])
- Initialize variable (price_max = query[:price_max])
- Initialize variable brand = query[:q]
- Inititalize variable price_range = price_min..price_max

- Perform selection on inventory:
  - check if price.between?(price_range) AND 
  
=end