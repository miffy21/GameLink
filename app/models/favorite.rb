class Favorite < ApplicationRecord
    belongs_to :user
	belongs_to :comment
	validates :user_id, presence: true
    validates :comment_id, presence: true
end
