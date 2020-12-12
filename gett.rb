 require 'pry'
def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  return_hash = {}
  collection.select {
    |i|
    i[:item] == name
  }[0]
  
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  test_cart = cart.uniq
  final_array = Array.new
  test_cart.map {
    |hash|
    target_value = hash[:item]
    count = cart.count {
      |hash|
      hash.values.include? target_value
    }
   # binding.pry
    hash[:count] = count
    final_array << hash
  }
  #binding.pry
  final_array.uniq
end


  