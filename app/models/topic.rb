class Topic < ActiveRecord::Base
  has_many :posts, :sponsored_posts, dependent: :destroy
  # when we delete topics, we want to make sure that associated posts are also deleted
end
