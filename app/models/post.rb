class Post < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :comments, dependent: :destroy
  # acts_as_taggable_on :tags

  validate :content presence :true, length: {maximum:300}
end
