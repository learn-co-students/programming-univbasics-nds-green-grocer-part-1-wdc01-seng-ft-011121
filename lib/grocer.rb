def find_item_by_name_in_collection(name, collection)
 index = 0 
 
  while index < collection.length do
   return collection[index] if collection[index][:item] == name
  index += 1 
  end
end 


def consolidate_cart(cart)
  index = 0
  consolidated_cart = []
  
  while index < cart.length do
    item = find_item_by_name_in_collection(cart[index][:item], consolidated_cart)
    if item
      consolidated_cart_index = 0
      while consolidated_cart_index < consolidated_cart.length do
        if consolidated_cart[consolidated_cart_index][:item] === item[:item]
          consolidated_cart[consolidated_cart_index][:count] += 1
        end
        consolidated_cart_index += 1
      end
    else
      cart[index][:count] = 1
      consolidated_cart << cart[index]
    end
    index += 1
  end
  consolidated_cart
end