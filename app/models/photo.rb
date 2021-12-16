class Photo < ApplicationRecord
  belongs_to :album
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_one_attached :image
  has_many :likes, dependent: :destroy
end
