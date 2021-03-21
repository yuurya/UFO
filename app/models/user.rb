class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :products
  has_many :post_comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
        #  has_many :product_images, dependent: :destroy
end
