class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
    
      t.string :title, null: false
      t.string :product_name, null: false
      t.string :body
      t.bigint :user_id
      t.text :introduction
      t.integer :favorite_num
      t.timestamps
    end
  end
end
