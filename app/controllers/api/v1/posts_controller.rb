class Api::V1::PostsController < Api::V1::BaseController

  def index
    per_page = params[:per_page].present? ? params[:per_page].to_i : 50
    current_page = params[:page].present? ? params[:page].to_i : 1
    posts = Post.where(status: 1).order(updated_at: :desc).page(current_page).per(per_page)
    options = pagination_data(posts, per_page)
    render json: PostSerializer.new(posts, options).serializable_hash , status: :ok
  end

  def show
    @post = Post.friendly.find(params[:id])
    render json:  PostSerializer.new(@post).serializable_hash, status: :ok
  end

  def get_by_category
    per_page = params[:per_page].present? ? params[:per_page].to_i : 50
    current_page = params[:page].present? ? params[:page].to_i : 1
    category = PostCategory.where(slug: params[:category_slug]).first
    if category.present?
      posts = Post.where(post_category_id: category.id ).where(status: 1).order(updated_at: :desc).page(current_page).per(per_page)
      options = pagination_data(posts, per_page)
      render json: PostSerializer.new(posts, options).serializable_hash , status: :ok
    end # BURAYA ELSE KOY
  end

  def get_by_game
    per_page = params[:per_page].present? ? params[:per_page].to_i : 50
    current_page = params[:page].present? ? params[:page].to_i : 1
    game = Game.where(slug: params[:game_slug]).first
    if game.present?
      posts = Post.where(game_id: game.id ).where(status: 1).order(updated_at: :desc).page(current_page).per(per_page)
      options = pagination_data(posts, per_page)
      render json: PostSerializer.new(posts, options).serializable_hash , status: :ok
    end # BURAYA ELSE KOY
  end

end
