class Api::V1::PostCommentsController < Api::V1::BaseController

  def create
    post = Post.where(id: post_params[:post_id]).first

    comment = PostComment.new
    comment.name = post_params[:name]
    comment.comment = post_params[:comment]
    comment.email = post_params[:email]
    comment.post_id = post.id

    if comment.save
      render json: { success: true }, status: :ok
    else
      render json: { errors: comment.errors.full_messages } , status: :unprocessable_entity
    end
  end

  def post_params
    params.permit(:name, :comment, :email, :post_id )
  end

end
