class ProductsController < ApplicationController
  def index
    
    @products = Product.all
    @product = Product.new
   
  end

  def show
    @product = Product.find(params[:id])
    
  end

  def new
    @product = Product.new
  end

  def create
    product = Product.new(product_params)
    product.save
    redirect_to products_path(product.id)
  end


  def edit
    @product = Product.find(params[:id])
  end

  def update
    product = Product.find(params[:id])
    product.update(product_params)
    redirect_to product_path(product)
  end

  def destroy
    product = Product.find(params[:id])
    product.destroy
    redirect_to products_path
  end


  private
  def product_params
    params.require(:product).permit(:title, :product_name, :body)
  end
  
end
