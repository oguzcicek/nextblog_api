class PostCommentSerializer < BaseSerializer
  attributes :name, :email, :comment

  attribute :created_at do |object|
    object.created_at.strftime("%B %d, %Y")
  end

end
