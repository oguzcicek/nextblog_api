class PostComment < ApplicationRecord
  belongs_to :post, optional: true

end
