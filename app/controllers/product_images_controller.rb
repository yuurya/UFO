class ProductImagesController < ApplicationController

    def new
        @product_image = ProductImage.new
    end
  
    def create
        @product_image = ProductImage.new(product_image_params)
    @product_image.user_id = current_user.id
    @product_image.save
    redirect_to product_images_path
    end
  
    def index
        @product_images = ProductImage.all
    end
  
    def show
    end
  
    def destroy
    end

    private

  def product_image_params
    params.require(:product_image).permit(:title, :product_name, :body, :image)
  end
end
