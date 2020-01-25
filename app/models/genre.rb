class Genre < ApplicationRecord
	has_many :news
	has_many :walkthroughs
	has_many :reviews
end
