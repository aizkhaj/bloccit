class Post < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  has_many :tags, as: :tagable
end
