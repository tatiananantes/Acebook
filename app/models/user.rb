class User < ApplicationRecord
  validates :username, presence: true
  validates :email, presence: true
  validates :password, presence:true, length: { minimum: 10 }
  has_secure_password
  has_many :posts
  has_many :comments
  acts_as_favoritor
  has_many :likes
  has_many :albums
  has_many :photos

  has_one_attached :avatar

end
