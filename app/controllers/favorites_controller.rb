class FavoritesController < ApplicationController

    def create
        product = Product.find(params[:product_id])
        favorite = current_user.favorites.new(product_id: product.id)
        favorite.save
        redirect_to product_path(product)
    end

    def create_for_index
        product = Product.find(params[:product_id])
        favorite = current_user.favorites.new(product_id: product.id)
        favorite.save
        redirect_to products_path
    end
  
  
    def destroy
        product = Product.find(params[:product_id])
        favorite = current_user.favorites.find_by(product_id: product.id)
        favorite.destroy
        redirect_to product_path(product)
    end

    def destroy_for_index
        product = Product.find(params[:product_id])
        favorite = current_user.favorites.find_by(product_id: product.id)
        favorite.destroy
        redirect_to products_path
    end
end
