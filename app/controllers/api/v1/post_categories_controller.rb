class Api::V1::PostCategoriesController < Api::V1::BaseController

  def index
    categories = PostCategory.all
    render json: PostCategorySerializer.new(categories).serializable_hash , status: :ok
  end

  def show
    @category = Post.friendly.find(params[:id])
    render json:  PostCategorySerializer.new(@category).serializable_hash, status: :ok
  end

end
