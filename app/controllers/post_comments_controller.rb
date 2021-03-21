class PostCommentsController < ApplicationController
    def create
        product = Product.find(params[:product_id])
        comment = current_user.post_comments.new(post_comment_params)
        comment.product_id = product.id
        comment.save
        redirect_to product_path(product)
    end
  
    def destroy
        PostComment.find_by(id: params[:id], product_id: params[:product_id]).destroy
    redirect_to product_path(params[:product_id])

    end

    private

  def post_comment_params
    params.require(:post_comment).permit(:comment)
  end
end


