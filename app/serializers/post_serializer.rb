class PostSerializer < BaseSerializer
  attributes :id, :title, :content, :slug

  attribute :created_at do |object|
      object.created_at.strftime("%B %d, %Y")
  end
  
  attribute :category_name do |object|
    if object.post_category.present?
     object.post_category.name
    end
  end

  attribute :category_slug do |object|
    if object.post_category.present?
     object.post_category.slug
    end
  end

  attribute :game_name do |object|
    if object.game.present?
     object.game.name
    end
  end

  attribute :game_slug do |object|
    if object.game.present?
     object.game.slug
    end
  end

  attribute :comments do |object,params|
    @comments = object.active_comments
    if @comments.present?
      #PostCommentSerializer.new( object.post_comments, { params: params } ).serializable_hash[:data].to_a
      PostCommentSerializer.new( @comments, { params: params } ).serializable_hash[:data].to_json
    end
  end

  attribute :image do |object|
    $hostname + Rails.application.routes.url_helpers.rails_blob_url(object.image, only_path: true) if object.image.present? && object.image.attached?
  end

end
