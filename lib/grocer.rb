  require 'pry'
def find_item_by_name_in_collection(name, collection)
 
 collection.each do |item_hash|
     if name == item_hash[:item]
       return item_hash
       break
     end
 end
 return nil
end 
def consolidate_cart(cart)
 
  consolidated = cart
  storage_array = []
  
  consolidated.each do |item_hash|
    
    item_hash.store(:count, 1)
    if storage_array.include?(item_hash[:item])
      item_hash[:count] = item_hash[:count] + 1
    end
    storage_array << item_hash[:item] 

  end


end


  