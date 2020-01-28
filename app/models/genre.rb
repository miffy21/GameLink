class Genre < ApplicationRecord
	has_many :news
	has_many :walkthroughs
	has_many :reviews
	has_many :contents
end
