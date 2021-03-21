class AddProductIdToPostComments < ActiveRecord::Migration[5.2]
  def change
    add_column :post_comments, :product_id, :bigint
  end
end
