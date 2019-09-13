class Comment < ApplicationRecord
	 belongs_to :user
    belongs_to :article
   validates :comment, presence: true, length: { maximum: 50, minimum: 2}
end
