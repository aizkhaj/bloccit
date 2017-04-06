class Topic < ActiveRecord::Base
  has_many :posts, dependent: :destroy
  has_many :sponsored_posts
  # when we delete topics, we want to make sure that associated posts are also deleted
end
