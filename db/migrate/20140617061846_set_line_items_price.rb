class SetLineItemsPrice < ActiveRecord::Migration
  def change
    LineItem.all.each do |item|
      product = Product.find_by_id(item[:product_id]);
      item[:price] = product[:price]
      item.save
    end
  end
end
