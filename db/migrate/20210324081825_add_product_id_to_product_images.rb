class AddProductIdToProductImages < ActiveRecord::Migration[5.2]
  def change
    add_column :product_images, :product_id, :bigint
  end
end
