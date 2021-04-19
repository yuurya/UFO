class ProductsController < ApplicationController
  def index
    
    @products = Product.all
    @product = Product.new

    @product.product_images.build # added
    @product.product_images.build # added
  
    
  end

  def show
    flash[:notice] = "ログイン済ユーザーのみ記事の詳細を確認できます" unless user_signed_in?
    if user_signed_in? 
      @product = Product.find(params[:id])
      @post_comment = PostComment.new
    end
    
  end

  def new
    flash[:notice] = "ログイン済ユーザーのみ記事の詳細を確認できます" unless user_signed_in?
    if user_signed_in? 
    @product = Product.new
    end
  end

  def create
    flash[:notice] = "ログイン済ユーザーのみ記事の詳細を確認できます" unless user_signed_in?
    if user_signed_in?
    user_id = current_user.id
    
    product = Product.new(product_params.merge({user_id: user_id}))
    product.save!
    redirect_to products_path(product.id)
    end
  end


  def edit
    flash[:notice] = "ログイン済ユーザーのみ記事の詳細を確認できます" unless user_signed_in?
    if user_signed_in? 
    @product = Product.find(params[:id])
    end
  end

  def update
    flash[:notice] = "ログイン済ユーザーのみ記事の詳細を確認できます" unless user_signed_in?
    if user_signed_in? 
    product = Product.find(params[:id])
    product.update(product_params)
    redirect_to product_path(product)
    end
  end

  def destroy
    flash[:notice] = "ログイン済ユーザーのみ記事の詳細を確認できます" unless user_signed_in?
    if user_signed_in? 
    product = Product.find(params[:id])
    product.destroy
    redirect_to products_path
    end
  end


  private
  def product_params
    t = params.require(:product).permit(:title, :product_name, :body, product_images_attributes:[:image])
    t[:product_images_attributes] = t[:product_images_attributes].to_h.values
    t
    # huga = []
    # tmp[:product_images_attributes].each do |k,v|
    #   huga.push({image: v[:image], user_id: current_user.id})
    # end
    # tmp[:product_images_attributes] = huga
    # byebug
    
  end
  
end

# tmp = {product_images_attributes:1, b:2}
# tmp[:product_images_attributes]