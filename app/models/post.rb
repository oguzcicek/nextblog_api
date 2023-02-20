class Post < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged
  belongs_to :post_category, optional: :true
  belongs_to :user
  has_many :post_comments
  has_one_attached :image, :dependent => :destroy
  belongs_to :game, optional: :true

  def active_comments
    post_comments.where(status: 1).order(created_at: :desc)
  end
end
