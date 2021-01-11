def find_item_by_name_in_collection(name, collection)
  index = 0 

  while index < collection.length do
   return collection[index] if collection[index][:item] == name
  index += 1 
  end
end

def consolidate_cart(cart)
  shopping_cart = []
  cart.each do |cart_item|
    if cart_item[:count]
      cart_item[:count]+=1
    else
      cart_item[:count]=1
    end
end
end

  