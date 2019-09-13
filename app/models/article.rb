class Article < ApplicationRecord
	belongs_to :user
	validates :title, presence: true, length: { maximum: 50 }
	validates :body, presence: true, length: { maximum: 200 }
	has_many :comments, dependent: :destroy
	attachment :image
	def favorited_by?(user)
          favorites.where(user_id: user.id).exists?
        end
end
