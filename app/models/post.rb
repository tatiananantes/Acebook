class Post < ApplicationRecord
  has_many :comments
  belongs_to :user
  has_one_attached :image
  has_many :likes
  def liked?(user)
    !!self.likes.find{|like| like.user_id == iser.id}
  end
end
