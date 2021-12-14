class Post < ApplicationRecord
  has_many :comments
  belongs_to :user
  has_one_attached :image
  has_many :likes, dependent: :destroy
  acts_as_favoritable
end
