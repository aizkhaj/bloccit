class Topic < ActiveRecord::Base
  has_many :posts, dependent: :destroy
  # when we delete topics, we want to make sure that associated posts are also deleted
  validates :name, length: { minimum: 5 }, presence: true
  validates :description, length: {minimum: 15}, presence: true
end
