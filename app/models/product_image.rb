class ProductImage < ApplicationRecord

    belongs_to :user
    attachment :image

end
