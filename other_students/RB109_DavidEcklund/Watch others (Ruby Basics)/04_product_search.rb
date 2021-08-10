PRODUCTS = [
  { name: "Thinkpad x210", price: 220},
  { name: "Thinkpad x230", price: 250},
  { name: "Thinkpad x250", price: 979},
  { name: "Thinkpad x230", price: 300},
  { name: "Thinkpad x230", price: 330},
  { name: "Thinkpad x230", price: 350},
  { name: "Thinkpad x240", price: 700},
  { name: "Macbook Leopard", price: 300},
  { name: "Macbook Air", price: 700},
  { name: "Macbook Pro", price: 600},
  { name: "Macbook", price: 1449},
  { name: "Dell Latitude", price: 200},
  { name: "Dell Latitude", price: 650},
  { name: "Dell Inspiron", price: 300},
  { name: "Dell Inspiron", price: 450}
]

query = {
  price_min: 240,
  price_max: 280,
  q: "thinkpad"
}

query2 = {
  price_min: 300,
  price_max: 450,
  q: 'dell'
}

def search(query)
  products_dup = PRODUCTS.select do |product_hash|
    fits_query = true
    fits_query = false if product_hash[:price] > query[:price_max] ||
                          product_hash[:price] < query[:price_min] ||
                          !(product_hash[:name].downcase.include?(query[:q].downcase))
    fits_query
  end
  p products_dup
end

search(query)
# => [ { name: "Thinkpad x220", price: 250} ]

search(query2)
#  => [ { name: "Dell Inspiron", price: 300}, { name: "Dell Inspiron", price 450} ]

=begin

implement the "search" method such that
  when run with a "query" hash is passed in as an argument
  the results are as shown above
  
input: method call with hash argument
output: array of one or more hashes representing the products that fit the query

DATA

hashes, arrays

ALGORITHM

duplicate products array
  iterate through the products_dup array
    within the iteration:
    initialize a variable to the boolean value of the conditions:
        if the value of their :price key
          exceeds price_max OR
          is less than price_min OR
        if the :name key's value does not include (case insensitive) the :q key's value (string)
    if boolean is false, delete that hash
return products_dup

=end
