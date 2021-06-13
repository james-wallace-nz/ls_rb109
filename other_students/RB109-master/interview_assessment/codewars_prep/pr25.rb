=begin

PROBLEM
- Input: 2 arguments (hash, hash) or (recipe, available ingredients)
- Output: Integer

rules
    - Explicit rules
      - Write a method that takes the recipe and the available ingredients and returns
        the max number of cakes you can bake
    - Implicit rules
      - No second argument (ingredients) returns 0
      - Not having all ingredients needed returns 0

DATA STRUCTURES
- Hash
- Arrays
- Integers

ALGORITHM
- Return 0 if there if second argument is empty

- Check if all items in first argument are included in the second argument
  - Iterate through recipe
    - Check if current item in recipe is included in the ingredients keys
    - Return true if all are in there, false if not

- Iterate through recipe
  - Check if ingredients >= amount indicated in recipe
    - Divide available ingredients by amount required by recipe
      - Add number to a collection
  - Else return 0
  
- Obtain the minimum amount in your collection
=end

def cakes(recipe, available_ingredients)

  missing_ingredients = recipe.all? do |current_ingredient, _|
    available_ingredients.keys.include?(current_ingredient)
  end
  
  return 0 unless missing_ingredients
  
  total_amounts = []
  
  recipe.each do |current_ingredient, recipe_amount|
    available_amount = available_ingredients[current_ingredient]
    return 0 if available_amount < recipe_amount
    
    total_amounts << available_amount / recipe_amount
  end
  
  total_amounts.min
end





p cakes({"flour"=>500, "sugar"=>200, "eggs"=>1},{"flour"=>1200, "sugar"=>1200, "eggs"=>5, "milk"=>200}) == 2
p cakes({"cream"=>200, "flour"=>300, "sugar"=>150, "milk"=>100, "oil"=>100},{"sugar"=>1700, "flour"=>20000, "milk"=>20000, "oil"=>30000, "cream"=>5000}) == 11
p cakes({"apples"=>3, "flour"=>300, "sugar"=>150, "milk"=>100, "oil"=>100},{"sugar"=>500, "flour"=>2000, "milk"=>2000}) == 0
p cakes({"apples"=>3, "flour"=>300, "sugar"=>150, "milk"=>100, "oil"=>100},{"sugar"=>500, "flour"=>2000, "milk"=>2000, "apples"=>15, "oil"=>20}) == 0
p cakes({"eggs"=>4, "flour"=>400},{}) == 0
p cakes({"cream"=>1, "flour"=>3, "sugar"=>1, "milk"=>1, "oil"=>1, "eggs"=>1},{"sugar"=>1, "eggs"=>1, "flour"=>3, "cream"=>1, "oil"=>1, "milk"=>1}) == 1
