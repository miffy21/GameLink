class Comment < ApplicationRecord
	belongs_to :user
	belongs_to :content
    validates :comment, presence: true,  length: {maximum: 200}
end
