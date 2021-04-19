class Product < ApplicationRecord
  belongs_to :user
  has_many :post_comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :product_images, dependent: :destroy
  accepts_nested_attributes_for :product_images  # added

  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end

end
