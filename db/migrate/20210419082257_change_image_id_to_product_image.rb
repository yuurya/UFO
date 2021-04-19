class ChangeImageIdToProductImage < ActiveRecord::Migration[5.2]
  def change
    change_column :product_images, :image_id, :string
  end
end
