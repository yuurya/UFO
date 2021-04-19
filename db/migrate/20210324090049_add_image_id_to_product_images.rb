class AddImageIdToProductImages < ActiveRecord::Migration[5.2]
  def change
    add_column :product_images, :image_id, :bigint
  end
end
